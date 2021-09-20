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
import 'package:tw_core/models/invoicing/invoice_model.dart';
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

  Stream<List<Job>> allJobsByContractor({required TWUser contractor}) =>
      TWFC.jobCollection
          .where('contractorId', isEqualTo: contractor.uid)
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

  Stream<List<Bid>> allBidsForAllJobsByContractor({
    required TWUser contractor,
  }) {
    assert(contractor.type == TWUserType.Contractor);
    return TWFC.bidsCollection
        .where('contractorId', isEqualTo: contractor.uid)
        .snapshots()
        .map((list) {
      allBids =
          optionOf(list.docs.map((doc) => Bid.fromJson(doc.data())).toList());
      return allBids.getOrElse(() => []);
    });
  }

  Stream<List<Bid>> bidsBySubbie({required TWUser subbie}) {
    assert(subbie.type == TWUserType.Subbie);
    return TWFC.bidsCollection
        .where('subbieTWUser.uid', isEqualTo: subbie.uid)
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

  Future<Either<TWServerError, Unit>> postJob({
    required Job job,
    required TWUser user,
  }) {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.set(TWFC.jobCollection.doc(job.jobId), job.toJson());
    return commitBatch(batch);
  }

  Stream<List<Invoice>> streamInvoice(Job job) {
    return TWFC.invoicesCollection
        .where('jobID', isEqualTo: job.jobId)
        .snapshots()
        .map((list) =>
            list.docs.map((doc) => Invoice.fromJson(doc.data())).toList());
  }

  Stream<Subbie> subbieStream(String subbieId) {
    return TWFC.subbieCollection
        .doc(subbieId)
        .snapshots()
        .map((event) => Subbie.fromJson(event.data() as Map<String, dynamic>));
  }

  updateJob(Job job) => TWFC.jobCollection.doc(job.jobId).set(job.toJson());

  onBidSeenByContractor(final Bid bid) {
    TWFC.bidsCollection.doc(bid.bidId).update({'seenByContractor': true});
    TWFC.jobCollection
        .doc(bid.jobId)
        .update({'totalUnseenBids': FieldValue.increment(-1)});
  }

  Stream<List<Tender>> streamAllTenders() {
    return TWFC.tendersCollection.snapshots().map((list) {
      List<Tender>? tenders =
          list.docs.map((doc) => Tender.fromJson(doc.data())).toList();
      allTenders = optionOf(tenders);
      return allTenders.getOrElse(() => []);
    });
  }

  Stream<List<BidOnTender>> streamTenderBids(TWUser user) {
    return TWFC.tenderBidsCollection
        .where('bidderId', isEqualTo: user.uid)
        .snapshots()
        .map((list) {
      List<BidOnTender>? tenderBids =
          list.docs.map((doc) => BidOnTender.fromJson(doc.data())).toList();
      allTenderBids = optionOf(tenderBids);
      return tenderBids;
    });
  }

  Stream<List<Job>> streamJobsByContractor(TWUser user) => TWFC.jobCollection
          .where('contractorId', isEqualTo: user.uid)
          .snapshots()
          .map((list) {
        allJobs =
            optionOf(list.docs.map((doc) => Job.fromJson(doc.data())).toList());
        return allJobs.getOrElse(() => []);
      });

  Stream<List<Bid>> streamBidsOnJob(String jobId) => TWFC.bidsCollection
          .where('jobId', isEqualTo: jobId)
          .snapshots()
          .map((list) {
        allBids =
            optionOf(list.docs.map((doc) => Bid.fromJson(doc.data())).toList());
        return allBids.getOrElse(() => []);
      });

  stopBidding(String jobId) {
    batch.update(TWFC.jobCollection.doc(jobId), {'acceptingBids': false});
    return commitBatch(batch);
  }

  startBidding(String jobId) {
    batch.update(TWFC.jobCollection.doc(jobId), {'acceptingBids': true});
    return commitBatch(batch);
  }

  Stream<Bid> bidByUserOnJob({required String jobId, required TWUser person}) {
    return TWFC.bidsCollection
        .where('jobId', isEqualTo: jobId)
        .where('subbieTWUser.uid', isEqualTo: person.uid)
        .snapshots()
        .map((doc) => Bid.fromJson(doc.docs.first.data()));
  }

  Stream<List<TWUser>> favouriteSubbies({required TWUser user}) =>
      TWFC.contractorsCollection
          .doc(user.uid)
          .collection('favourite_subbies')
          .snapshots()
          .map((list) {
        List<TWUser> favouriteSubbies =
            list.docs.map((doc) => TWUser.fromJson(doc.data())).toList();
        return favouriteSubbies;
      });

  Stream<List<TWUser>> blacklistedSubbies({required TWUser user}) =>
      TWFC.contractorsCollection
          .doc(user.uid)
          .collection('blacklisted_subbies')
          .snapshots()
          .map((list) =>
              list.docs.map((doc) => TWUser.fromJson(doc.data())).toList());

  addSubbieInFavouriteList({
    required TWUser subbie,
    required TWUser contractor,
  }) {
    batch.delete(TWFC.contractorsCollection
        .doc(contractor.uid)
        .collection('blacklisted_subbies')
        .doc('blacklisted-subbie-id: ${subbie.uid}'));
    batch.set(
      TWFC.contractorsCollection
          .doc(contractor.uid)
          .collection('favourite_subbies')
          .doc('favourite-subbie-id: ${subbie.uid}'),
      subbie.toJson(),
    );
    return commitBatch(batch);
  }

  addSubbieInBlackList({
    required TWUser subbie,
    required TWUser contractor,
  }) {
    batch.delete(TWFC.contractorsCollection
        .doc(contractor.uid)
        .collection('favourite_subbies')
        .doc('favourite-subbie-id: ${subbie.uid}'));
    batch.set(
      TWFC.contractorsCollection
          .doc(contractor.uid)
          .collection('blacklisted_subbies')
          .doc('blacklisted-subbie-id: ${subbie.uid}'),
      subbie.toJson(),
    );
    return commitBatch(batch);
  }

  sendInviteToBid({
    required List<TWUser> subbiesToInvite,
    required Job job,
  }) {
    for (final subbie in subbiesToInvite) {
      print('invited subbie id: ${subbie.uid}');
      batch.set(
        TWFC.subbieCollection
            .doc(subbie.uid)
            .collection('invites')
            .doc("inviteToBidForJobId: ${job.jobId}"),
        {
          'jobId': job.jobId,
          'jobTitle': job.title,
        },
      );
    }

    return commitBatch(batch);
  }

  removeSubbieFromFavouriteList(
      {required TWUser subbie, required TWUser contractor}) {
    batch.delete(TWFC.contractorsCollection
        .doc(contractor.uid)
        .collection('favourite_subbies')
        .doc('favourite-subbie-id: ${subbie.uid}'));
    return commitBatch(batch);
  }

  removeSubbieFromBlackList(
      {required TWUser subbie, required TWUser contractor}) {
    batch.delete(TWFC.contractorsCollection
        .doc(contractor.uid)
        .collection('blacklisted_subbies')
        .doc('blacklisted-subbie-id: ${subbie.uid}'));
    return commitBatch(batch);
  }

  updateBidStatus({required Bid bid, required BidStatuses newBidStatus}) {
    TWFC.bidsCollection.doc(bid.bidId).update(
          bid.copyWithNeuStatus(newBidStatus).toJson(),
        );
  }

  Stream<List<Job>> streamOldJobs({required TWUser contractor}) => TWFC
      .oldJobsCollection
      .where('contractorId', isEqualTo: contractor.uid)
      .snapshots()
      .map((list) => list.docs.map((doc) => Job.fromJson(doc.data())).toList());

  Stream<List<JobReview>> streamRatings(String jobId) =>
      TWFC.jobReviewCollection.where('jobId', isEqualTo: jobId).snapshots().map(
            (list) =>
                list.docs.map((doc) => JobReview.fromJson(doc.data())).toList(),
          );

  Future<Either<TWServerError, Unit>> applyTender({
    required Tender tender,
    required Contractor contractor,
  }) async {
    var bidOnTender = BidOnTender.fromContractorAndTender(
      contractor,
      tender,
    );
    var batch = FirebaseFirestore.instance.batch();
    batch.set(
      TWFC.tenderBidsCollection.doc(bidOnTender.bidId),
      bidOnTender.toJson(),
    );
    batch.set(
      TWFC.contractorsCollection
          .doc(contractor.basicProfile.uid)
          .collection('applied_tender_ids')
          .doc(tender.id),
      {'tenderId': tender.id},
    );
    return commitBatch(batch);
  }

  Stream<List<Bid>> bidsOnJob({required Job job}) {
    return TWFC.bidsCollection
        .where('jobId', isEqualTo: job.jobId)
        .snapshots()
        .map((list) =>
            list.docs.map((doc) => Bid.fromJson(doc.data())).toList());
  }

  // static Future<Job> job(final String jobId) async {
  //   print('jobservice got jobId: $jobId');
  //   DocumentSnapshot snap = await jobCollection.doc(jobId).get();
  //   if (snap.exists) {
  //     return Job.fromJson(snap.data() as Map<String, dynamic>);
  //   } else {
  //     return Job.fromJson((await oldJobsCollection.doc(jobId).get()).data()
  //     as Map<String, dynamic>);
  //   }
  // }

  // onJobComplete(List<BidReview> bidReviews, Job job) async {
  //   // final oldJob = Job.fromMap(job.map);
  //   QuerySnapshot bidsSnapshot =
  //   await bidCollection.where('jobId', isEqualTo: job.jobId).get();
  //
  //   List<String> bidIds = bidsSnapshot.docs.map((e) => (e.id)).toList();
  //
  //   var batch = _db.batch();
  //
  //   //change the statuis attribute in job map
  //   Map data = job.toJson();
  //   data['status'] = JobStatus(JobStatuses.Completed).toJson();
  //   data['acceptingBids'] = false;
  //   //save job details
  //   batch.set(oldJobsCollection.doc(job.jobId), data);
  //
  //   //increment total jobs attribute in the contractor doc
  //   batch.update(
  //     contractorCollection.doc(uid),
  //     {'totalJobs': FieldValue.increment(1)},
  //   );
  //
  //   //save the bids and reviews in a subcollection of the oldJob document
  //   for (final bidReview in bidReviews) {
  //     batch.set(bidReviewCollection.doc(), bidReview.toJson());
  //   }
  //
  //   //increment the ratings in the subcollection of the subbie docs
  //   for (final bidReview in bidReviews) {
  //     batch.update(subbieCollection.doc(bidReview.subbieId), {
  //       'totalJobs': FieldValue.increment(1),
  //       'totalProfessionalism':
  //       FieldValue.increment(bidReview.rating.professionalism),
  //       'totalTimeManagement':
  //       FieldValue.increment(bidReview.rating.timeManagement),
  //       'totalServiceQuality':
  //       FieldValue.increment(bidReview.rating.serviceQuality)
  //     });
  //   }
  //
  //   // update all the bids for the job to status old
  //   for (final bidId in bidIds) {
  //     batch.update(
  //       bidCollection.doc(bidId),
  //       {'status': "Old"},
  //     );
  //   }
  //
  //   // add pending job rating subcollection to hired subbie docs
  //   for (final bidReview in bidReviews) {
  //     PendingContractorRating pendingContractorRating = PendingContractorRating(
  //       contractorId: job.contractorId,
  //       jobId: job.jobId,
  //       jobTitle: job.title,
  //     );
  //     batch.set(
  //         subbieCollection
  //             .doc(bidReview.subbieId)
  //             .collection('pending_job_ratings')
  //             .doc('pending_rating_contractor.uid: ${job.contractorId}'),
  //         pendingContractorRating.toJson());
  //   }
  //
  //   //delete the original job document
  //   batch.delete(jobCollection.doc(job.jobId));
  //
  //   QuerySnapshot chatMetasSnapshot =
  //   await chatCollection.where('jobId', isEqualTo: job.jobId).get();
  //
  //   for (final chatMetaSnap in chatMetasSnapshot.docs) {
  //     batch.update(chatCollection.doc(chatMetaSnap.id), {'isArchived': true});
  //   }
  //   batch.commit();
  // }

  // Future<bool> jobIsActive(String jobid) async {
  //   Job job = await JobService.job(jobid);
  //   if (job.status.toString() == 'JobStatuses.Completed') {
  //     return true;
  //   } else
  //     return false;
  // }

  WriteBatch batch = FirebaseFirestore.instance.batch();
}
