// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatRoom _$$_ChatRoomFromJson(Map<String, dynamic> json) => _$_ChatRoom(
      chatRoomId: json['chatRoomId'] as String,
      bidIdentifier:
          BidIdentifier.fromJson(json['bidIdentifier'] as Map<String, dynamic>),
      participantUIDs: (json['participantUIDs'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      lastChatItem: json['lastChatItem'] == null
          ? null
          : ChatItem.fromJson(json['lastChatItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChatRoomToJson(_$_ChatRoom instance) =>
    <String, dynamic>{
      'chatRoomId': instance.chatRoomId,
      'bidIdentifier': instance.bidIdentifier.toJson(),
      'participantUIDs': instance.participantUIDs,
      'lastChatItem': instance.lastChatItem?.toJson(),
    };
