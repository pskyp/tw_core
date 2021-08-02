// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatItem _$ChatItemFromJson(Map<String, dynamic> json) => ChatItem(
      chatItemId: json['chatItemId'] as String,
      chatRoomId: json['chatRoomId'] as String,
      text: json['text'] as String,
      senderUID: json['senderUID'] as String,
      sendTime: DateTime.parse(json['sendTime'] as String),
      seenByAll: json['seenByAll'] as bool,
    );

Map<String, dynamic> _$ChatItemToJson(ChatItem instance) => <String, dynamic>{
      'chatItemId': instance.chatItemId,
      'chatRoomId': instance.chatRoomId,
      'text': instance.text,
      'senderUID': instance.senderUID,
      'sendTime': instance.sendTime.toIso8601String(),
      'seenByAll': instance.seenByAll,
    };
