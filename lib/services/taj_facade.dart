library taj_tw;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:tw_core/firebase_collections/tw_firebase_collections.dart';
import 'package:tw_core/models/bid/bid.dart';
import 'package:tw_core/models/bid_on_tender/bid_on_tender.dart';
import 'package:tw_core/models/bid_review/bid_review.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/contractor_rating/contractor_rating.dart';
import 'package:tw_core/models/core/supplement_objects/date_validator.dart';
import 'package:tw_core/models/core/supplement_objects/supplement_requirement.dart';
import 'package:tw_core/models/core/supplement_objects/supplement_title.dart';
import 'package:tw_core/models/core/tw_location/tw_location.dart';
import 'package:tw_core/models/core/tw_number/tw_number.dart';
import 'package:tw_core/models/developer/developer.dart';
import 'package:tw_core/models/development/development.dart';
import 'package:tw_core/models/development/value_objects/dev_description/dev_description.dart';
import 'package:tw_core/models/development/value_objects/dev_title/dev_title.dart';
import 'package:tw_core/models/email/email.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/models/invite_to_bid.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/models/job_review/job_review.dart';
import 'package:tw_core/models/subbie/subbie_model.dart';
import 'package:tw_core/models/supplement/supplement_model.dart';
import 'package:tw_core/models/tender/tender_model.dart';
import 'package:tw_core/models/tender/tender_timeline.dart';
import 'package:tw_core/models/tender_invitation_mail/tender_invitation_email.dart';
import 'package:tw_core/models/trades.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';

part 'taj_contractor.dart';
part 'taj_developers.dart';
part 'taj_subbie.dart';

class TAJFacade {
  TAJFacade();

  static Option<List<ChatRoom>> allChatRooms = optionOf(null);

  Future<Either<TWServerError, Unit>> commitBatch(WriteBatch batch) async {
    try {
      await batch.commit();
      return right(unit);
    } on Exception {
      return left(TWServerError());
    }
  }

  Stream<Tender> streamTender({required String tenderId}) {
    return TWFC.tendersCollection
        .doc(tenderId)
        .snapshots()
        .map((doc) => Tender.fromJson(doc.data() as Map<String, dynamic>));
  }

  Stream<Development> streamDevelopment({required String developmentId}) {
    return TWFC.developmentsCollection
        .doc(developmentId)
        .snapshots()
        .map((doc) => Development.fromJson(doc.data() as Map<String, dynamic>));
  }

  Stream<List<ChatRoom>> streamAllTenderChatsOfUser(TWUser user) {
    return TWFC.chatsCollection
        .where('participantUIDs', arrayContains: user.uid)
        .where('isTenderChat', isEqualTo: true)
        .snapshots()
        .map((list) {
      allChatRooms = optionOf(
          list.docs.map((doc) => ChatRoom.fromJson(doc.data())).toList());
      return allChatRooms.getOrElse(() => []);
    });
  }

  updateBidStatus({required Bid bid, required BidStatuses newBidStatus}) {
    TWFC.bidsCollection
        .doc(bid.bidId)
        .set(bid.copyWithNeuStatus(newBidStatus).toJson());
  }

  Stream<Subbie> streamSubbie({required String subbieId}) {
    return TWFC.subbieCollection
        .doc(subbieId)
        .snapshots()
        .map((event) => Subbie.fromJson(event.data() as Map<String, dynamic>));
  }

  Stream<Bid> streamBid({required Subbie subbie, required Job job}) {
    return TWFC.bidsCollection
        .where('jobId', isEqualTo: job.jobId)
        .where('bidderId', isEqualTo: subbie.basicProfile.uid)
        .snapshots()
        .map((event) => Bid.fromJson(event.docs.first.data()));
  }

  Stream<Contractor> streamContractor({required String contractorId}) {
    return TWFC.contractorsCollection.doc(contractorId).snapshots().map(
        (event) => Contractor.fromJson(event.data() as Map<String, dynamic>));
  }

  Stream<List<ChatRoom>> streamAllJobChatsOfUser(TWUser user) {
    return TWFC.chatsCollection
        .where('participantUIDs', arrayContains: user.uid)
        .where('isTenderChat', isEqualTo: false)
        .snapshots()
        .map((list) =>
            list.docs.map((doc) => ChatRoom.fromJson(doc.data())).toList());
  }

//
// Future<Either<TWServerError, Unit>> commitBatch(WriteBatch batch);
//
// Stream<List<Job>> allJobsByContractor({required TWUser contractor});
//
// Stream<List<Job>> get allAcceptingBidsJobs;
//
// Stream<List<BidReview>> subbieReviews(Subbie subbie);
//
// Stream<List<PendingContractorRating>?> pendingJobRatings(Subbie subbie);
//
// Stream<Contractor> contractorStream(final String contractorId) {
//   return TWFC.contractorsCollection
//       .doc(contractorId)
//       .snapshots()
//       .map((doc) => Contractor.fromJson(doc.data() as Map<String, dynamic>));
// }
//
// Stream<List<Bid>> bidsBySubbie({required TWUser subbie});
//
// Stream<List<InviteToBid>?> streamInvitesForSubbie(Subbie subbie);
//
// changeBidStatus(
//   final Subbie subbie,
//   final Bid bid,
//   final BidStatuses status,
// ) {
//   TWFC.bidsCollection
//       .doc(bid.bidId)
//       .update(bid.copyWithNeuStatus(status).toJson());
//
//   //if status is hired then increment hired attribute in the job doc
//   if (status == BidStatuses.Hired) {
//     TWFC.jobCollection
//         .doc(bid.jobId)
//         .update({'subbiesWorking': FieldValue.increment(1)});
//   }
// }
//
// Stream<Bid> bid({required Job job, required Subbie subbie}) {
//   return TWFC.bidsCollection
//       .doc(subbie.basicProfile.uid + job.jobId)
//       .snapshots()
//       .map((doc) => Bid.fromJson(doc.data() as Map<String, dynamic>));
// }
//
// Stream<List<TWUser>?> favouriteContractors(Subbie subbie);
// Stream<List<TWUser>?> blacklistedContractors(Subbie subbie);
//
// Stream<List<Invoice>> streamInvoice(Job job) {
//   return TWFC.invoicesCollection
//       .where('jobID', isEqualTo: job.jobId)
//       .snapshots()
//       .map((list) =>
//           list.docs.map((doc) => Invoice.fromJson(doc.data())).toList());
// }
//
// Stream<Subbie> subbieStream(String subbieId) {
//   return TWFC.subbieCollection
//       .doc(subbieId)
//       .snapshots()
//       .map((event) => Subbie.fromJson(event.data() as Map<String, dynamic>));
// }
//
// updateJob(Job job);
//
// onBidSeenByContractor(final Bid bid);
//
// Stream<List<Tender>> streamAllTenders();
//
// Stream<List<BidOnTender>> streamTenderBids(TWUser user);
//
// Stream<List<Job>> streamJobsByContractor(TWUser contractor);
//
// Stream<List<Bid>> streamBidsOnJob(String jobId);
//
// stopBidding(String jobId);
//
// startBidding(String jobId);
//
// Stream<Bid> bidByUserOnJob({required String jobId, required TWUser person}) {
//   return TWFC.bidsCollection
//       .where('jobId', isEqualTo: jobId)
//       .where('subbieTWUser.uid', isEqualTo: person.uid)
//       .snapshots()
//       .map((doc) => Bid.fromJson(doc.docs.first.data()));
// }
//
// Stream<List<TWUser>> favouriteSubbies({required TWUser contractor});
//
// Stream<List<TWUser>> blacklistedSubbies({required TWUser contractor});
//
// updateBidStatus({required Bid bid, required BidStatuses newBidStatus}) {
//   TWFC.bidsCollection.doc(bid.bidId).update(
//         bid.copyWithNeuStatus(newBidStatus).toJson(),
//       );
// }
//
// Stream<List<Job>> streamOldJobs({required TWUser contractor});
//
// Stream<List<JobReview>> streamRatings(String jobId);
//
// Stream<List<Bid>> bidsOnJob({required Job job});
//
// // static Future<Job> job(final String jobId) async {
// //   print('jobservice got jobId: $jobId');
// //   DocumentSnapshot snap = await jobCollection.doc(jobId).get();
// //   if (snap.exists) {
// //     return Job.fromJson(snap.data() as Map<String, dynamic>);
// //   } else {
// //     return Job.fromJson((await oldJobsCollection.doc(jobId).get()).data()
// //     as Map<String, dynamic>);
// //   }
// // }
//
// // onJobComplete(List<BidReview> bidReviews, Job job) async {
// //   // final oldJob = Job.fromMap(job.map);
// //   QuerySnapshot bidsSnapshot =
// //   await bidCollection.where('jobId', isEqualTo: job.jobId).get();
// //
// //   List<String> bidIds = bidsSnapshot.docs.map((e) => (e.id)).toList();
// //
// //   var batch = _db.batch();
// //
// //   //change the statuis attribute in job map
// //   Map data = job.toJson();
// //   data['status'] = JobStatus(JobStatuses.Completed).toJson();
// //   data['acceptingBids'] = false;
// //   //save job details
// //   batch.set(oldJobsCollection.doc(job.jobId), data);
// //
// //   //increment total jobs attribute in the contractor doc
// //   batch.update(
// //     contractorCollection.doc(uid),
// //     {'totalJobs': FieldValue.increment(1)},
// //   );
// //
// //   //save the bids and reviews in a subcollection of the oldJob document
// //   for (final bidReview in bidReviews) {
// //     batch.set(bidReviewCollection.doc(), bidReview.toJson());
// //   }
// //
// //   //increment the ratings in the subcollection of the subbie docs
// //   for (final bidReview in bidReviews) {
// //     batch.update(subbieCollection.doc(bidReview.subbieId), {
// //       'totalJobs': FieldValue.increment(1),
// //       'totalProfessionalism':
// //       FieldValue.increment(bidReview.rating.professionalism),
// //       'totalTimeManagement':
// //       FieldValue.increment(bidReview.rating.timeManagement),
// //       'totalServiceQuality':
// //       FieldValue.increment(bidReview.rating.serviceQuality)
// //     });
// //   }
// //
// //   // update all the bids for the job to status old
// //   for (final bidId in bidIds) {
// //     batch.update(
// //       bidCollection.doc(bidId),
// //       {'status': "Old"},
// //     );
// //   }
// //
// //   // add pending job rating subcollection to hired subbie docs
// //   for (final bidReview in bidReviews) {
// //     PendingContractorRating pendingContractorRating = PendingContractorRating(
// //       contractorId: job.contractorId,
// //       jobId: job.jobId,
// //       jobTitle: job.title,
// //     );
// //     batch.set(
// //         subbieCollection
// //             .doc(bidReview.subbieId)
// //             .collection('pending_job_ratings')
// //             .doc('pending_rating_contractor.uid: ${job.contractorId}'),
// //         pendingContractorRating.toJson());
// //   }
// //
// //   //delete the original job document
// //   batch.delete(jobCollection.doc(job.jobId));
// //
// //   QuerySnapshot chatMetasSnapshot =
// //   await chatCollection.where('jobId', isEqualTo: job.jobId).get();
// //
// //   for (final chatMetaSnap in chatMetasSnapshot.docs) {
// //     batch.update(chatCollection.doc(chatMetaSnap.id), {'isArchived': true});
// //   }
// //   batch.commit();
// // }
//
// // Future<bool> jobIsActive(String jobid) async {
// //   Job job = await JobService.job(jobid);
// //   if (job.status.toString() == 'JobStatuses.Completed') {
// //     return true;
// //   } else
// //     return false;
// // }
//
// Stream<List<BidOnTender>> streamAllBidsForAllTendersByDeveloper({
//   required TWUser developer,
// });
//
// inviteToTendering({
//   required Tender tender,
//   required List<BidOnTender> tenderBids,
// });
//
// tenderFeedbackComplete(Tender tender, BidOnTender tenderBid) async {
//   WriteBatch batch = FirebaseFirestore.instance.batch();
//
//   batch.update(
//     TWFC.tenderBidsCollection.doc(tenderBid.bidId),
//     tenderBid.copyWithStatusComplete().toJson(),
//   );
//   batch.update(
//     TWFC.tendersCollection.doc(tender.id),
//     tender.copyWithStatusComplete().toJson(),
//   );
//   return commitBatch(batch);
// }
//
// Stream<List<Development>> streamAllDevsByDeveloper({
//   required TWUser developer,
// });
//
// Stream<List<Supplement>> streamAllSupplementsByDeveloper({
//   required TWUser developer,
// });
//
// Stream<List<Tender>> streamAllTendersByDeveloper({
//   required TWUser developer,
// });
//
// // Future<Person> contractorPerson({required String contractorId}) async {
// //   var snapshot = await TWFC.contractorsCollection.doc(contractorId).get();
// //   Contractor c = Contractor.fromJson(snapshot.data() as Map<String, dynamic>);
// //   return Person.fromTWUser(c.basicProfile);
// // }
//
// Stream<Tender> tenderStream(String tenderId) {
//   return TWFC.tendersCollection.doc(tenderId).snapshots().map(
//         (event) => Tender.fromJson(event.data() as Map<String, dynamic>),
//       );
// }
//
// Future<Development> fetchDevelopment({required String devId}) async {
//   var snap = await TWFC.developmentsCollection.doc(devId).get();
//   return Development.fromJson(snap.data() as Map<String, dynamic>);
// }
//
// Stream<List<Supplement>> streamAllSupplements();
//
// Stream<Development> streamDevelopment({required String devId}) {
//   return TWFC.developmentsCollection.doc(devId).snapshots().map(
//         (doc) => Development.fromJson(doc.data() as Map<String, dynamic>),
//       );
// }
}
