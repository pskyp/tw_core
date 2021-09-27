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
import 'package:tw_core/models/core/tw_location/tw_location.dart';
import 'package:tw_core/models/core/tw_min_length_string/tw_min_length_string.dart';
import 'package:tw_core/models/core/tw_number/tw_number.dart';
import 'package:tw_core/models/developer/developer.dart';
import 'package:tw_core/models/development/development.dart';
import 'package:tw_core/models/development/value_objects/dev_description/dev_description.dart';
import 'package:tw_core/models/development/value_objects/dev_title/dev_title.dart';
import 'package:tw_core/models/email/email.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/models/invite_to_bid.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/models/job/value_objects/job_timeline/job_timeline.dart';
import 'package:tw_core/models/job_review/job_review.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/subbie/subbie_model.dart';
import 'package:tw_core/models/supplement/supplement_model.dart';
import 'package:tw_core/models/supplement/value_objects/supplement_timeline.dart';
import 'package:tw_core/models/tender/tender_model.dart';
import 'package:tw_core/models/tender/tender_timeline.dart';
import 'package:tw_core/models/tender_invitation_mail/tender_invitation_email.dart';
import 'package:tw_core/models/trades.dart';
import 'package:tw_core/models/tw_notification/tw_notification.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';
import 'package:tw_core/services/cache_service.dart';

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
