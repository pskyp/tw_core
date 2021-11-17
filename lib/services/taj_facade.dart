library taj_tw;

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:intl/intl.dart';
import 'package:tw_core/firebase_collections/tw_firebase_collections.dart';
import 'package:tw_core/models/bid/job_bid.dart';
import 'package:tw_core/models/bid_on_tender/tender_bid.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/core/tw_location/tw_location.dart';
import 'package:tw_core/models/core/tw_min_length_string/tw_min_length_string.dart';
import 'package:tw_core/models/core/tw_number/tw_number.dart';
import 'package:tw_core/models/core/user_bio/user_bio.dart';
import 'package:tw_core/models/developer/developer.dart';
import 'package:tw_core/models/development/development.dart';
import 'package:tw_core/models/development/value_objects/dev_description/dev_description.dart';
import 'package:tw_core/models/development/value_objects/dev_title/dev_title.dart';
import 'package:tw_core/models/email/email.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/models/feedback/bid_feedback/job_bid_feedback/job_bid_feedback.dart';
import 'package:tw_core/models/feedback/bid_feedback/tender_bid_feedback/tender_bid_feedback.dart';
import 'package:tw_core/models/feedback/work_feedback/job_feedback/job_feedback.dart';
import 'package:tw_core/models/invite_to_bid.dart';
import 'package:tw_core/models/invoicing/invoice_model.dart';
import 'package:tw_core/models/invoicing/receipt_phooto.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/models/job/job_status.dart';
import 'package:tw_core/models/job/value_objects/job_timeline/job_timeline.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/subbie/subbie_model.dart';
import 'package:tw_core/models/supplement/supplement_model.dart';
import 'package:tw_core/models/supplement/value_objects/supplement_timeline.dart';
import 'package:tw_core/models/tender/tender_model.dart';
import 'package:tw_core/models/tender/tender_timeline.dart';
import 'package:tw_core/models/tender_invitation_mail/tender_invitation_email.dart';
import 'package:tw_core/models/trades.dart';
import 'package:tw_core/models/tw_document/tw_document.dart';
import 'package:tw_core/models/tw_notification/tw_notification.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';
import 'package:tw_core/models/work/work.dart';
import 'package:tw_core/services/cache_service.dart';

part 'taj_contractor.dart';
part 'taj_developers.dart';
part 'taj_subbie.dart';

class TAJFacade {
  TAJFacade();

  static Option<List<ChatRoom>> allChatRooms = optionOf(null);

  Future<Either<TWServerError, Unit>> saveCoverLetter({
    required Contractor contractor,
    required TWString coverLetter,
  }) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    batch.set(
      TWFC.contractorsCollection.doc(contractor.basicProfile.uid),
      contractor
          .copyWith(userBio: UserBio(coverLetter: coverLetter.getOrCrash()))
          .toJson(),
    );
    return (await commitBatch(batch));
  }

  Stream<List<TWDocument>> portfolioDocuments(TWUser user) {
    return TWFC.docsCollection
        .where('typeId', isEqualTo: user.uid)
        .snapshots()
        .map((event) =>
            event.docs.map((doc) => TWDocument.fromJson(doc.data())).toList());
  }

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

  updateBidStatus({required JobBid bid, required JobBidStatuses newBidStatus}) {
    TWFC.bidsCollection
        .doc(bid.bidIdentifier.bidId)
        .set(bid.copyWith(jobBidStatus: newBidStatus).toJson());
  }

  Stream<Subbie> streamSubbie({required String subbieId}) {
    return TWFC.subbieCollection
        .doc(subbieId)
        .snapshots()
        .map((event) => Subbie.fromJson(event.data() as Map<String, dynamic>));
  }

  Stream<JobBid> streamBid({required Subbie subbie, required Job job}) {
    return TWFC.bidsCollection
        .where('jobId', isEqualTo: job.workIdentifier.workId)
        .where('subbieTWUser.uid', isEqualTo: subbie.basicProfile.uid)
        .snapshots()
        .map((event) => JobBid.fromJson(event.docs.first.data()));
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

  Stream<List<TWNotification>> streamAllTWNotificationsForUser({
    required TWUser user,
  }) {
    return TWFC.twNotificationsCollection
        .where('intenderUserUID', isEqualTo: user.uid)
        .snapshots()
        .map((list) => list.docs
            .map((doc) => TWNotification.fromJson(doc.data()))
            .toList());
  }
}
