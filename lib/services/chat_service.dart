import 'package:tw_core/firebase_collections/tw_firebase_collections.dart';
import 'package:tw_core/models/bid/bid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tw_core/models/bid_on_tender/bid_on_tender.dart';
import 'package:tw_core/models/chat_models/chat_item.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/models/person/person.dart';
import 'package:tw_core/models/tender/tender_model.dart';

class ChatFacade {
  final String uid;

  ChatFacade({required this.uid});

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

  static String getJobChatRoomId({
    required Job job,
    required Bid bid,
  }) {
    return job.jobId + bid.bidId;
  }

  static String getTenderChatRoomId({
    required Tender tender,
    required BidOnTender tenderBid,
  }) {
    return tender.id + tenderBid.bidId;
  }

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

  createJobChatRoomAndSendMessage({
    required Person contractorAsPerson, //chatInitiator
    required Bid bid,
    required Job job,
    required String text,
  }) {
    final String chatRoomId = ChatFacade.getJobChatRoomId(
      bid: bid,
      job: job,
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
      isTenderChat: false,
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


  createTenderChatRoomAndSendMessage({
    required Person contractorAsPerson, //chatInitiator
    required Tender tender,
    required BidOnTender tenderBid,
    required String text,
  }) {
    final String chatRoomId = ChatFacade.getTenderChatRoomId(
      tender: tender,
      tenderBid: tenderBid,
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
        tenderBid.bidder.uid,
      ],
      isTenderChat: true,
      p1: contractorAsPerson,
      p2: tenderBid.bidder,
      chatRoomId: chatRoomId,
      jobId: tender.id,
      bidId: tenderBid.bidId,
      jobTitle: tender.tenderTitle,
      developmentTitle: 'tender development title',
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

  Stream<List<ChatRoom>> get streamChatRooms =>
      TWFC.chatsCollection
          .where('participantUIDs', arrayContains: uid)
          .snapshots()
          .map((list) {
        chatRooms =
            list.docs.map((doc) => ChatRoom.fromJson(doc.data())).toList();

        return chatRooms;
      });
}
