import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/firebase_collections/tw_firebase_collections.dart';
import 'package:tw_core/models/chat_models/chat_item.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';
import 'package:tw_core/models/work/work.dart';

part 'chat_facade.freezed.dart';

enum ChatType { Job, Tender }

class ChatFacade {
  Option<List<ChatRoom>> chatRooms = optionOf(null);

  Future<Either<ChatFacadeFailure, Unit>> sendMessageInBid({
    required TWUser sender,
    required BidIdentifier bidIdentifier,
    required String text,
  }) async {
    // assert(job.workIdentifier.employer.uid == sender.uid ||
    //     bid.subbieTWUser.uid == sender.uid);

    ChatRoom chatRoom = ChatRoom.fromBidIdentifier(
      bidIdentifier: bidIdentifier,
    );

    return (await sendMessageFromChatRoom(
      chatRoom: chatRoom,
      text: text,
      sender: sender,
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
    ChatRoom neuChatRoom = chatRoom.copyWith(
      lastChatItem: chatItem,
    );

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
