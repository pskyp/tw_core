import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:tw_core/firebase_collections/tw_firebase_collections.dart';
import 'package:tw_core/models/bid/bid.dart';
import 'package:tw_core/models/bid_on_tender/bid_on_tender.dart';
import 'package:tw_core/models/bid_review/bid_review.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/contractor_rating/contractor_rating.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/models/invite_to_bid.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/models/job_review/job_review.dart';
import 'package:tw_core/models/subbie/subbie_model.dart';
import 'package:tw_core/models/tender/tender_model.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';

class TAJFacade {
  Option<List<Job>> allJobs = optionOf(null);
  Option<List<Bid>> allBids = optionOf(null);
  Option<List<Tender>> allTenders = optionOf(null);
  Option<List<BidOnTender>> allTenderBids = optionOf(null);
  Option<List<BidReview>> allBidReviews = optionOf(null);

  Future<Either<TWServerError, Unit>> acceptJobOffer({
    required Job job,
    required Bid bid,
    required Subbie subbie,
  }) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.update(
      TWFC.bidsCollection.doc(bid.bidId),
      bid.copyWithNeuStatus(BidStatuses.Hired).toJson(),
    );
    return (await commitBatch(batch));
  }

  Future<Either<TWServerError, Unit>> commitBatch(WriteBatch batch) async {
    try {
      await batch.commit();
      return right(unit);
    } on Exception {
      return left(TWServerError());
    }
  }

  Future<Either<TWServerError, Unit>> applyJob({
    required Job job,
    required Subbie subbie,
  }) async {
    try {
      Bid bid = Bid.neu(loggedInUser: subbie.basicProfile, job: job);

      var batch = FirebaseFirestore.instance.batch();
      batch.set(TWFC.bidsCollection.doc(bid.bidId), bid.toJson());
      batch.update(TWFC.jobCollection.doc(job.jobId), {
        'totalUnseenBids': FieldValue.increment(1),
      });
      batch.update(TWFC.jobCollection.doc(job.jobId), {
        'applications': FieldValue.increment(1),
      });

      batch.delete(TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('invites')
          .doc("inviteToBidForJobId: ${job.jobId}"));

      await batch.commit();
      return right(unit);
    } on Exception {
      return left(TWServerError());
    }
  }

  Stream<List<Job>> get allAcceptingBidsJobs => TWFC.jobCollection
          .where('acceptingBids', isEqualTo: true)
          .snapshots()
          .map((list) {
        allJobs =
            optionOf(list.docs.map((doc) => Job.fromJson(doc.data())).toList());
        return allJobs.getOrElse(() => []);
      });

  Stream<List<BidReview>> subbieReviews(Subbie subbie) =>
      TWFC.bidReviewsCollection
          .where('subbieId', isEqualTo: subbie.basicProfile.uid)
          .snapshots()
          .map((list) {
        allBidReviews = optionOf(
            list.docs.map((doc) => BidReview.fromJson(doc.data())).toList());
        return allBidReviews.getOrElse(() => []);
      });

  Stream<List<PendingContractorRating>?> pendingJobRatings(Subbie subbie) =>
      TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('pending_job_ratings')
          .snapshots()
          .map((list) => list.docs
              .map((doc) => PendingContractorRating.fromJson(doc.data()))
              .toList());

  Stream<Contractor> contractorStream(final String contractorId) {
    return TWFC.contractorsCollection
        .doc(contractorId)
        .snapshots()
        .map((doc) => Contractor.fromJson(doc.data() as Map<String, dynamic>));
  }

  Stream<List<Bid>> bids(Subbie subbie) {
    return TWFC.bidsCollection
        .where('subbieTWUser.uid', isEqualTo: subbie.basicProfile.uid)
        .snapshots()
        .map((list) {
      allBids =
          optionOf(list.docs.map((doc) => Bid.fromJson(doc.data())).toList());
      return allBids.getOrElse(() => []);
    });
  }

  Stream<List<InviteToBid>?> streamInvitesForSubbie(Subbie subbie) =>
      TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('invites')
          .snapshots()
          .map((list) =>
              list.docs.map((doc) => InviteToBid.fromMap(doc.data())).toList());

  changeBidStatus(
    final Subbie subbie,
    final Bid bid,
    final BidStatuses status,
  ) {
    TWFC.bidsCollection
        .doc(bid.bidId)
        .update(bid.copyWithNeuStatus(status).toJson());

    //if status is hired then increment hired attribute in the job doc
    if (status == BidStatuses.Hired) {
      TWFC.jobCollection
          .doc(bid.jobId)
          .update({'subbiesWorking': FieldValue.increment(1)});
    }
  }

  Stream<Bid> bid({required Job job, required Subbie subbie}) {
    return TWFC.bidsCollection
        .doc(subbie.basicProfile.uid + job.jobId)
        .snapshots()
        .map((doc) => Bid.fromJson(doc.data() as Map<String, dynamic>));
  }

  onJobReviewsSubmit({
    required List<JobReview> jobReviews,
    required Subbie subbie,
  }) {
    var batch = FirebaseFirestore.instance.batch();
    for (final jobReview in jobReviews) {
      //store rating in ratings subcollcection
      batch.set(
          TWFC.jobReviewCollection
              .doc(jobReview.contractorId + jobReview.jobId),
          jobReview.toJson());
      //update total_ratings, and other attributes in contractor doc
      batch.update(TWFC.contractorsCollection.doc(jobReview.contractorId), {
        'totalRatings': FieldValue.increment(1),
        'totalReliability': FieldValue.increment(jobReview.rating.reliability),
        'totalEnvironment': FieldValue.increment(jobReview.rating.environment),
        'totalCommunication':
            FieldValue.increment(jobReview.rating.communication)
      });
    }

    //delete the pending ratings subcollection of user
    for (final jobReview in jobReviews) {
      batch.delete(TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('pending_job_ratings')
          .doc('pending_rating_contractor.uid: ${jobReview.contractorId}'));
    }
    batch.commit();
  }

  Stream<List<TWUser>?> favouriteContractors(Subbie subbie) => TWFC
      .subbieCollection
      .doc(subbie.basicProfile.uid)
      .collection('favourite_contractors')
      .snapshots()
      .map((list) =>
          list.docs.map((doc) => TWUser.fromJson(doc.data())).toList());

  Stream<List<TWUser>?> blacklistedContractors(Subbie subbie) =>
      TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('blacklisted_contractors')
          .snapshots()
          .map((list) =>
              list.docs.map((doc) => TWUser.fromJson(doc.data())).toList());

  Future<Either<TWServerError, Unit>> addContractorInFavouriteList({
    required Contractor contractor,
    required Subbie subbie,
  }) async {
    var batch = FirebaseFirestore.instance.batch();
    batch.delete(TWFC.subbieCollection
        .doc(subbie.basicProfile.uid)
        .collection('blacklisted_contractors')
        .doc('blacklisted-contractor-id: ${contractor.basicProfile.uid}'));
    batch.set(
      TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('favourite_contractors')
          .doc('favourite-contractor-id: ${contractor.basicProfile.uid}'),
      contractor.basicProfile.toJson(),
    );

    return (await commitBatch(batch));
  }

  Future<Either<TWServerError, Unit>> addContractorInBlackList({
    required Contractor contractor,
    required Subbie subbie,
  }) async {
    var batch = FirebaseFirestore.instance.batch();
    batch.delete(TWFC.subbieCollection
        .doc(subbie.basicProfile.uid)
        .collection('favourite_contractors')
        .doc('favourite-contractor-id: ${contractor.basicProfile.uid}'));
    batch.set(
      TWFC.subbieCollection
          .doc(subbie.basicProfile.uid)
          .collection('blacklisted_contractors')
          .doc('blacklisted-contractor-id: ${contractor.basicProfile.uid}'),
      contractor.basicProfile.toJson(),
    );
    return (await commitBatch(batch));
  }

  Future<Either<TWServerError, Unit>> removeContractorFromFavouriteList({
    required String contractorId,
    required Subbie subbie,
  }) async {
    var batch = FirebaseFirestore.instance.batch();
    batch.delete(TWFC.subbieCollection
        .doc(subbie.basicProfile.uid)
        .collection('favourite_contractors')
        .doc('favourite-contractor-id: $contractorId'));
    return (await commitBatch(batch));
  }

  Future<Either<TWServerError, Unit>> removeContractorFromBlackList({
    required String contractorId,
    required Subbie subbie,
  }) async {
    var batch = FirebaseFirestore.instance.batch();
    batch.delete(TWFC.subbieCollection
        .doc(subbie.basicProfile.uid)
        .collection('blacklisted_contractors')
        .doc('blacklisted-contractor-id: $contractorId'));
    return (await commitBatch(batch));
  }
}
