// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkIdentifier _$$_WorkIdentifierFromJson(Map<String, dynamic> json) =>
    _$_WorkIdentifier(
      workId: json['workId'] as String,
      title: json['title'] as String,
      employer: TWUser.fromJson(json['employer'] as Map<String, dynamic>),
      type: _$enumDecode(_$WorkTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_WorkIdentifierToJson(_$_WorkIdentifier instance) =>
    <String, dynamic>{
      'workId': instance.workId,
      'title': instance.title,
      'employer': instance.employer.toJson(),
      'type': _$WorkTypeEnumMap[instance.type],
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

const _$WorkTypeEnumMap = {
  WorkType.Tender: 'Tender',
  WorkType.Supplement: 'Supplement',
  WorkType.Job: 'Job',
};
