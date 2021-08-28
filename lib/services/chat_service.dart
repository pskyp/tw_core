import 'package:tw_core/firebase_collections/tw_firebase_collections.dart';
import 'package:tw_core/models/bid/bid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tw_core/models/chat_models/chat_item.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/models/person/person.dart';

class ChatService {
  final String uid;
  ChatService({required this.uid});
  List<ChatRoom> chatRooms = [];

  ChatRoom? chatRoomFromJobAndBid({
    required Job job,
    required Bid bid,
  }) {
    int index = chatRooms.indexWhere((chatRoom) {
      return chatRoom.bidId == bid.bidId && chatRoom.jobId == job.jobId;
    });
    return index == -1 ? null : chatRooms[index];
  }

  static String chatRoomIdFromJobAdnBid({
    required Job job,
    required Bid bid,
  }) =>
      job.jobId + bid.bidId;

  Stream<List<ChatItem>?> streamChat(final ChatRoom chatRoom) =>
      TWFC.chatsCollection
          .doc(chatRoom.chatRoomId)
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

  sendMessage({required ChatRoom chatRoom, required String text}) {
    ChatItem chatItem = ChatItem(
      chatItemId: uid + DateTime.now().toString(),
      chatRoomId: chatRoom.chatRoomId,
      text: text,
      senderUID: uid,
      sendTime: DateTime.now(),
      seenByAll: false,
    );
    ChatRoom neuChatRoom = chatRoom.copyWithNewLastChatItem(chatItem);

    var batch = FirebaseFirestore.instance.batch();

    batch.set(
      TWFC.chatsCollection.doc(chatRoom.chatRoomId),
      neuChatRoom.toJson(),
    );

    batch.set(
      TWFC.chatsCollection
          .doc(chatRoom.chatRoomId)
          .collection('chatItems')
          .doc(chatItem.chatItemId),
      chatItem.toJson(),
    );
    batch.commit();
  }

  createChatRoomAndSendMessage({
    required Person contractorAsPerson, //chatInitiator
    required Job job,
    required Bid bid,
    required String text,
    required bool isTenderChat,
  }) {
    final String chatRoomId = chatRoomIdFromJobAdnBid(
      job: job,
      bid: bid,
    );

    ChatItem chatItem = ChatItem(
      chatItemId: uid + DateTime.now().toString(),
      chatRoomId: chatRoomId,
      text: text,
      senderUID: uid,
      sendTime: DateTime.now(),
      seenByAll: false,
    );

    ChatRoom chatRoom = ChatRoom(
      participantUIDs: [
        uid,
        bid.person.uid,
      ],
      isTenderChat: isTenderChat,
      p1: contractorAsPerson,
      p2: bid.person,
      chatRoomId: chatRoomId,
      jobId: job.jobId,
      bidId: bid.bidId,
      jobTitle: job.title,
      developmentTitle: job.development,
      lastChatItem: chatItem,
      seenByAll: false,
      isArchived: false,
    );

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
    batch.commit();
  }

  Stream<List<ChatRoom>> get streamChatRooms => TWFC.chatsCollection
          .where('participantUIDs', arrayContains: uid)
          .snapshots()
          .map((list) {
        chatRooms =
            list.docs.map((doc) => ChatRoom.fromJson(doc.data())).toList();

        return chatRooms;
      });
}
