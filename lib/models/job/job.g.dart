// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Job _$$_JobFromJson(Map<String, dynamic> json) => _$_Job(
      workIdentifier: WorkIdentifier.fromJson(
          json['workIdentifier'] as Map<String, dynamic>),
      createdOn: DateTime.parse(json['createdOn'] as String),
      contractorId: json['contractorId'] as String,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      trade: Trade.fromJson(json['trade'] as Map<String, dynamic>),
      status: _$enumDecode(_$JobStatusesEnumMap, json['status']),
      totalUnseenBids: json['totalUnseenBids'] as int,
      description: json['description'] as String,
      hourlyRate: (json['hourlyRate'] as num).toDouble(),
      applications: json['applications'] as int,
      subbiesRequired: json['subbiesRequired'] as int,
      subbiesWorking: json['subbiesWorking'] as int,
      endDate: DateTime.parse(json['endDate'] as String),
      hrsPerDay: json['hrsPerDay'] as int,
      startDate: DateTime.parse(json['startDate'] as String),
      requirements: (json['requirements'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      acceptingBids: json['acceptingBids'] as bool,
      feedback: (json['feedback'] as List<dynamic>?)
          ?.map((e) => JobFeedback.fromJson(e as Map<String, dynamic>))
          .toList(),
      uidOfSubbiesInvitedToBid:
          (json['uidOfSubbiesInvitedToBid'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$_JobToJson(_$_Job instance) => <String, dynamic>{
      'workIdentifier': instance.workIdentifier.toJson(),
      'createdOn': instance.createdOn.toIso8601String(),
      'contractorId': instance.contractorId,
      'location': instance.location.toJson(),
      'trade': instance.trade.toJson(),
      'status': _$JobStatusesEnumMap[instance.status],
      'totalUnseenBids': instance.totalUnseenBids,
      'description': instance.description,
      'hourlyRate': instance.hourlyRate,
      'applications': instance.applications,
      'subbiesRequired': instance.subbiesRequired,
      'subbiesWorking': instance.subbiesWorking,
      'endDate': instance.endDate.toIso8601String(),
      'hrsPerDay': instance.hrsPerDay,
      'startDate': instance.startDate.toIso8601String(),
      'requirements': instance.requirements,
      'acceptingBids': instance.acceptingBids,
      'feedback': instance.feedback?.map((e) => e.toJson()).toList(),
      'uidOfSubbiesInvitedToBid': instance.uidOfSubbiesInvitedToBid,
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

const _$JobStatusesEnumMap = {
  JobStatuses.Active: 'Active',
  JobStatuses.Completed: 'Completed',
};
