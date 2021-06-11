// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMeta _$ChatMetaFromJson(Map<String, dynamic> json) {
  return ChatMeta(
    participantUIDs: (json['participantUIDs'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    jobId: json['jobId'] as String,
    jobTitle: json['jobTitle'] as String,
    development: json['development'] as String,
    lastChatItem:
        ChatItem.fromJson(json['lastChatItem'] as Map<String, dynamic>),
    seenByReceiver: json['seenByReceiver'] as bool,
    isArchived: json['isArchived'] as bool,
  );
}

Map<String, dynamic> _$ChatMetaToJson(ChatMeta instance) => <String, dynamic>{
      'jobId': instance.jobId,
      'jobTitle': instance.jobTitle,
      'development': instance.development,
      'lastChatItem': instance.lastChatItem.toJson(),
      'seenByReceiver': instance.seenByReceiver,
      'isArchived': instance.isArchived,
      'participantUIDs': instance.participantUIDs,
    };
