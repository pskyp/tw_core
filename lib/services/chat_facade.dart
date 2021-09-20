import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/firebase_collections/tw_firebase_collections.dart';
import 'package:tw_core/models/bid/bid.dart';
import 'package:tw_core/models/bid_on_tender/bid_on_tender.dart';
import 'package:tw_core/models/chat_models/chat_item.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/models/tender/tender_model.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';

part 'chat_facade.freezed.dart';

enum ChatType { Job, Tender }

class ChatFacade {
  Option<List<ChatRoom>> chatRooms = optionOf(null);

  Future<Either<ChatFacadeFailure, Unit>> sendMessageInJob({
    required TWUser sender,
    required Bid bid,
    required Job job,
    required String text,
  }) async {
    assert(job.contractorTWUser.uid == sender.uid ||
        bid.subbieTWUser.uid == sender.uid);

    ChatRoom chatRoom = ChatRoom.typeJob(
      job: job,
      bid: bid,
      lastChatItem: null,
    );

    return (await sendMessageFromChatRoom(
      chatRoom: chatRoom,
      text: text,
      sender: sender,
    ));
  }

  Future<Either<ChatFacadeFailure, Unit>> sendMessageInTender({
    required TWUser sender,
    required Tender tender,
    required BidOnTender tenderBid,
    required String text,
  }) async {
    assert(tenderBid.bidder == sender || tender.developerTWUser == sender);

    ChatRoom chatRoom = ChatRoom.typeTender(
      tender: tender,
      tenderBid: tenderBid,
      lastChatItem: null,
    );

    return (await sendMessageFromChatRoom(
      chatRoom: chatRoom,
      sender: sender,
      text: text,
    ));
  }

  sendMessageFromChatRoom({
    required ChatRoom chatRoom,
    required String text,
    required TWUser sender,
  }) async {
    ChatItem chatItem = ChatItem.neu(
      chatRoomId: chatRoom.chatRoomId,
      text: text,
      sender: sender,
    );
    ChatRoom neuChatRoom = chatRoom.copyWithNewLastChatItem(chatItem);

    return (await _sendMessage(
      chatItem: chatItem,
      chatRoom: neuChatRoom,
    ));
  }

  Future<Either<ChatFacadeFailure, Unit>> _sendMessage({
    required ChatRoom chatRoom,
    required ChatItem chatItem,
  }) async {
    try {
      var batch = FirebaseFirestore.instance.batch();
      batch.set(
        TWFC.chatsCollection.doc(chatRoom.chatRoomId),
        chatRoom.toJson(),
      );

      batch.set(
        TWFC.chatsCollection
            .doc(chatRoom.chatRoomId)
            .collection('chatItems')
            .doc(chatItem.chatItemId),
        chatItem.toJson(),
      );
      await batch.commit();
      return right(unit);
    } on Exception {
      return left(ChatFacadeFailure.illegalSender());
    }
  }

  Stream<List<ChatRoom>> streamChatRooms(TWUser user) => TWFC.chatsCollection
          .where('participantUIDs', arrayContains: user.uid)
          .snapshots()
          .map((list) {
        chatRooms = optionOf(
            list.docs.map((doc) => ChatRoom.fromJson(doc.data())).toList());

        return chatRooms.getOrElse(() => []);
      });

  Stream<List<ChatItem>?> streamChat(final String chatRoomId) =>
      TWFC.chatsCollection
          .doc(chatRoomId)
          .collection('chatItems')
          .snapshots()
          .map((list) =>
              list.docs.map((doc) => ChatItem.fromJson(doc.data())).toList());

  setSeenToTrue(final ChatItem chatItem) {
    TWFC.chatsCollection
        .doc(chatItem.chatRoomId)
        .collection('chatItems')
        .doc(chatItem.chatItemId)
        .update({'seenByAll': true});
  }

  setChatRoomToSeen(final ChatRoom chatRoom) {
    TWFC.chatsCollection.doc(chatRoom.chatRoomId).update({'seenByAll': true});
  }
}

@freezed
class ChatFacadeFailure with _$ChatFacadeFailure {
  const factory ChatFacadeFailure.illegalSender() = IllegalSender;
}
