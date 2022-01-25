import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:encrypt/encrypt.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tw_core/firebase_collections/tw_firebase_collections.dart';
import 'package:tw_core/models/chat_models/chat_item.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';
import 'package:tw_core/models/work/work.dart';
import 'package:tw_core/services/encryption/rsa_generator.dart';

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
    TWUserType recipientType =TWUserType.Contractor ;
    if (sender.type == TWUserType.Contractor) recipientType = TWUserType.Subbie;
    if (sender.type == TWUserType.Subbie) recipientType = TWUserType.Contractor;
    // remove sender from room participants so can get the recipeint uid and hence their public key
    List<String> recipients = [];
    String recipientPublicKey = '';
    chatRoom.participantUIDs.forEach((element) {
      print(element);
      if (element != sender.uid) recipients.add(element);
    });

// gets the list recipient (not working for group chat)
    String recipientUID = recipients.first;
    print('RecipeintUID = $recipientUID');
    if (encyrpt) {
      String? publicKey = await getUserDetails(type: recipientType, uid: recipientUID);
      print(publicKey);
      recipientPublicKey = publicKey;
    }

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String privateKeyAsJson = (prefs.getString('privateKey') ?? '');
    String publicKeyAsJson = (prefs.getString('publicKey') ?? '');

    if (encyrpt) {
//encryptor for the senders version of the message - encyrpted with senders public key

      final encrypter_sender = Encrypter(RSA(
          // publicKey: RsaKeyHelper().parsePublicKeyFromPem(recipientPublicKey),

          publicKey:
              RsaKeyHelper().parsePublicKeyFromPem(jsonDecode(publicKeyAsJson)),

          // publicKey:
          //     RsaKeyHelper().parsePublicKeyFromPem(jsonDecode(publicKeyAsJson)),
          privateKey: RsaKeyHelper()
              .parsePrivateKeyFromPem(jsonDecode(privateKeyAsJson))));
//encryptor for the recipeints version of the message - encytpted with recipient public key
      final encrypter_recipient = Encrypter(RSA(
          // publicKey: RsaKeyHelper().parsePublicKeyFromPem(recipientPublicKey),

          publicKey: RsaKeyHelper().parsePublicKeyFromPem(recipientPublicKey),

          // publicKey:
          //     RsaKeyHelper().parsePublicKeyFromPem(jsonDecode(publicKeyAsJson)),
          privateKey: RsaKeyHelper()
              .parsePrivateKeyFromPem(jsonDecode(privateKeyAsJson))));

      ChatItem chatItem = ChatItem.neu(
          chatRoomId: chatRoom.chatRoomId,
          text_sender: encrypter_sender.encrypt(text).base64,
          text_reciever: encrypter_recipient.encrypt(text).base64,
          encrypted: true,
          sender: sender,
          // recepientPublicKey: recipientPublicKey);
          recepientPublicKey: jsonDecode(publicKeyAsJson));

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
          recepientPublicKey: recipientPublicKey);

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
