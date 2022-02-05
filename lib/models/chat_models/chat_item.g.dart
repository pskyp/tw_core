// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatItem _$ChatItemFromJson(Map<String, dynamic> json) => ChatItem(
      chatItemId: json['chatItemId'] as String,
      chatRoomId: json['chatRoomId'] as String,
      text_sender: json['text_sender'] as String,
      text_reciever: json['text_reciever'] as String,
      senderUID: json['senderUID'] as String,
      sendTime: DateTime.parse(json['sendTime'] as String),
      seenByAll: json['seenByAll'] as bool,
      encrypted: json['encrypted'] as bool,
      recepientPublicKey: json['recepientPublicKey'] as String,
      recepientUID: json['recepientUID'] as String,
      recepientPushToken: json['recepientPushToken'] as String,
    );

Map<String, dynamic> _$ChatItemToJson(ChatItem instance) => <String, dynamic>{
      'chatItemId': instance.chatItemId,
      'chatRoomId': instance.chatRoomId,
      'text_sender': instance.text_sender,
      'text_reciever': instance.text_reciever,
      'senderUID': instance.senderUID,
      'sendTime': instance.sendTime.toIso8601String(),
      'seenByAll': instance.seenByAll,
      'encrypted': instance.encrypted,
      'recepientPublicKey': instance.recepientPublicKey,
      'recepientUID': instance.recepientUID,
      'recepientPushToken': instance.recepientPushToken,
    };
