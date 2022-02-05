import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import 'package:fast_rsa/fast_rsa.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tw_core/firebase_collections/tw_firebase_collections.dart';
import 'package:tw_core/models/chat_models/chat_item.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';
import 'package:tw_core/models/work/work.dart';

import 'encryption/get_public_key.dart';

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
        chatRoom: chatRoom, text: text, sender: sender, encyrpt: false));
  }

  sendMessageFromChatRoom({
    required ChatRoom chatRoom,
    required String text,
    required TWUser sender,
    required bool encyrpt,
  }) async {
    TWUserType recipientType = TWUserType.Contractor;
    print(chatRoom.bidIdentifier.bidType);
    if (sender.type == TWUserType.Contractor) {
      if (chatRoom.bidIdentifier.bidType == BidType.JobBid) {
        recipientType = TWUserType.Subbie;
      } else
        recipientType = TWUserType.Developer;
    }
    if (sender.type == TWUserType.Subbie) recipientType = TWUserType.Contractor;
    if (sender.type == TWUserType.Developer)
      recipientType = TWUserType.Contractor;
    print(recipientType);
    // remove sender from room participants so can get the recipeint uid and hence their public key
    List<String> recipients = [];
    TWUser? recipientUser;
    chatRoom.participantUIDs.forEach((element) {
      print(element);
      if (element != sender.uid) recipients.add(element);
    });

// gets the list recipient (not working for group chat)
    String recipientUID = recipients.first;
    print('RecipeintUID = $recipientUID');

    TWUser? user = await getUserDetails(type: recipientType, uid: recipientUID);
    // print(publicKey);
    recipientUser = user;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String privateKeyAsJson = (prefs.getString('privateKey') ?? '');
    String publicKeyAsJson = (prefs.getString('publicKey') ?? '');

    if (encyrpt) {

      ChatItem chatItem = ChatItem.neu(
          chatRoomId: chatRoom.chatRoomId,
          text_sender: await RSA.encryptPKCS1v15(text, publicKeyAsJson),
          text_reciever:
              await RSA.encryptPKCS1v15(text, recipientUser!.publicKey!),
          encrypted: true,
          sender: sender,
          // recepientPublicKey: recipientPublicKey);
          recepientPublicKey: publicKeyAsJson,
          recepientPushToken: recipientUser.pushToken,
          recepientUID: recipientUID);

      ChatRoom neuChatRoom = chatRoom.copyWith(
        lastChatItem: chatItem,
      );
      print('encryped ' + chatItem.toString());
      return (await _sendMessage(
        chatItem: chatItem,
        chatRoom: neuChatRoom,
      ));
    } else {
      ChatItem chatItem = ChatItem.neu(
          chatRoomId: chatRoom.chatRoomId,
          text_sender: text,
          text_reciever: text,
          encrypted: false,
          sender: sender,
          recepientPublicKey: '',
          recepientPushToken: recipientUser!.pushToken,
          recepientUID: recipientUID);

      ChatRoom neuChatRoom = chatRoom.copyWith(
        lastChatItem: chatItem,
      );
      print('not encryped ' + chatItem.toString());
      return (await _sendMessage(
        chatItem: chatItem,
        chatRoom: neuChatRoom,
      ));
    }
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
