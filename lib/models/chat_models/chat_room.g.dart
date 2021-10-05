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
      chatType: _$enumDecode(_$ChatTypeEnumMap, json['chatType']),
    );

Map<String, dynamic> _$$_ChatRoomToJson(_$_ChatRoom instance) =>
    <String, dynamic>{
      'chatRoomId': instance.chatRoomId,
      'bidIdentifier': instance.bidIdentifier.toJson(),
      'participantUIDs': instance.participantUIDs,
      'lastChatItem': instance.lastChatItem?.toJson(),
      'chatType': _$ChatTypeEnumMap[instance.chatType],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$ChatTypeEnumMap = {
  ChatType.Job: 'Job',
  ChatType.Tender: 'Tender',
};
