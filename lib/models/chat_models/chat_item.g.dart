// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatItem _$ChatItemFromJson(Map<String, dynamic> json) {
  return ChatItem(
    sender: json['sender'] == null
        ? null
        : Person.fromJson(json['sender'] as Map<String, dynamic>),
    development: json['development'] as String,
    chatItemId: json['chatItemId'] as String,
    receiver: json['receiver'] == null
        ? null
        : Person.fromJson(json['receiver'] as Map<String, dynamic>),
    text: json['text'] as String,
    seen: json['seen'] as bool,
    sendTime: json['sendTime'] == null
        ? null
        : DateTime.parse(json['sendTime'] as String),
  );
}

Map<String, dynamic> _$ChatItemToJson(ChatItem instance) => <String, dynamic>{
      'text': instance.text,
      'sendTime': instance.sendTime?.toIso8601String(),
      'sender': instance.sender?.toJson(),
      'receiver': instance.receiver?.toJson(),
      'chatItemId': instance.chatItemId,
      'development': instance.development,
      'seen': instance.seen,
    };
