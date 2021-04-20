// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMeta _$ChatMetaFromJson(Map<String, dynamic> json) {
  return ChatMeta(
    jobId: json['jobId'] as String,
    jobTitle: json['jobTitle'] as String,
    development: json['development'] as String,
    lastChatItem: json['lastChatItem'] == null
        ? null
        : ChatItem.fromJson(json['lastChatItem'] as Map<String, dynamic>),
    seenByReceiver: json['seenByReceiver'] as bool,
  );
}

Map<String, dynamic> _$ChatMetaToJson(ChatMeta instance) => <String, dynamic>{
      'jobId': instance.jobId,
      'jobTitle': instance.jobTitle,
      'development': instance.development,
      'lastChatItem': instance.lastChatItem?.toJson(),
      'seenByReceiver': instance.seenByReceiver,
    };
