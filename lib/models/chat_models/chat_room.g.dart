// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) => ChatRoom(
      chatRoomId: json['chatRoomId'] as String,
      bidId: json['bidId'] as String,
      participantUIDs: (json['participantUIDs'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      p1: Person.fromJson(json['p1'] as Map<String, dynamic>),
      p2: Person.fromJson(json['p2'] as Map<String, dynamic>),
      jobId: json['jobId'] as String,
      jobTitle: json['jobTitle'] as String,
      developmentTitle: json['developmentTitle'] as String,
      lastChatItem: json['lastChatItem'] == null
          ? null
          : ChatItem.fromJson(json['lastChatItem'] as Map<String, dynamic>),
      seenByAll: json['seenByAll'] as bool,
      isArchived: json['isArchived'] as bool,
    );

Map<String, dynamic> _$ChatRoomToJson(ChatRoom instance) => <String, dynamic>{
      'chatRoomId': instance.chatRoomId,
      'bidId': instance.bidId,
      'jobId': instance.jobId,
      'jobTitle': instance.jobTitle,
      'developmentTitle': instance.developmentTitle,
      'lastChatItem': instance.lastChatItem?.toJson(),
      'seenByAll': instance.seenByAll,
      'isArchived': instance.isArchived,
      'p1': instance.p1.toJson(),
      'p2': instance.p2.toJson(),
      'participantUIDs': instance.participantUIDs,
    };
