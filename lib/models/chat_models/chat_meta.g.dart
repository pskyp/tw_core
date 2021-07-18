// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMeta _$ChatMetaFromJson(Map<String, dynamic> json) {
  return ChatMeta(
    chatRoomId: json['chatRoomId'] as String,
    participantUIDs: (json['participantUIDs'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    jobId: json['jobId'] as String,
    jobTitle: json['jobTitle'] as String,
    developmentTitle: json['developmentTitle'] as String,
    lastChatItem: json['lastChatItem'] == null
        ? null
        : ChatItem.fromJson(json['lastChatItem'] as Map<String, dynamic>),
    seenByAll: json['seenByAll'] as bool,
    isArchived: json['isArchived'] as bool,
  );
}

Map<String, dynamic> _$ChatMetaToJson(ChatMeta instance) => <String, dynamic>{
      'chatRoomId': instance.chatRoomId,
      'jobId': instance.jobId,
      'jobTitle': instance.jobTitle,
      'developmentTitle': instance.developmentTitle,
      'lastChatItem': instance.lastChatItem?.toJson(),
      'seenByAll': instance.seenByAll,
      'isArchived': instance.isArchived,
      'participantUIDs': instance.participantUIDs,
    };
