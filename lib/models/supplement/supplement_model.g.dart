// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Supplement _$SupplementFromJson(Map<String, dynamic> json) => Supplement(
      status: _$enumDecode(_$SupplementStatusEnumMap, json['status']),
      developer: Developer.fromJson(json['developer'] as Map<String, dynamic>),
      development: json['development'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      hourlyRate: (json['hourlyRate'] as num).toDouble(),
      hrsPerDay: json['hrsPerDay'] as int,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      createdOn: DateTime.parse(json['createdOn'] as String),
      applications: json['applications'] as int,
      subbiesWorking: json['subbiesWorking'] as int,
      subbiesRequired: json['subbiesRequired'] as int,
      requirements: json['requirements'] as String,
      trade: Trade.fromJson(json['trade'] as Map<String, dynamic>),
      acceptingBids: json['acceptingBids'] as bool,
      totalUnseenBids: json['totalUnseenBids'] as int,
      refreshCounter: json['refreshCounter'] as int,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      developmentId: json['developmentId'] as String,
    );

Map<String, dynamic> _$SupplementToJson(Supplement instance) =>
    <String, dynamic>{
      'status': _$SupplementStatusEnumMap[instance.status],
      'developer': instance.developer.toJson(),
      'development': instance.development,
      'developmentId': instance.developmentId,
      'title': instance.title,
      'description': instance.description,
      'hourlyRate': instance.hourlyRate,
      'hrsPerDay': instance.hrsPerDay,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'createdOn': instance.createdOn.toIso8601String(),
      'applications': instance.applications,
      'subbiesWorking': instance.subbiesWorking,
      'subbiesRequired': instance.subbiesRequired,
      'requirements': instance.requirements,
      'trade': instance.trade.toJson(),
      'acceptingBids': instance.acceptingBids,
      'totalUnseenBids': instance.totalUnseenBids,
      'refreshCounter': instance.refreshCounter,
      'location': instance.location.toJson(),
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

const _$SupplementStatusEnumMap = {
  SupplementStatus.Active: 'Active',
  SupplementStatus.Completed: 'Completed',
};
