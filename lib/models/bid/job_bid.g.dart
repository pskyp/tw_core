// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_bid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobBid _$$_JobBidFromJson(Map<String, dynamic> json) => _$_JobBid(
      bidIdentifier:
          BidIdentifier.fromJson(json['bidIdentifier'] as Map<String, dynamic>),
      jobBidStatus: _$enumDecode(_$JobBidStatusesEnumMap, json['jobBidStatus']),
      feedback: json['feedback'] == null
          ? null
          : JobBidFeedback.fromJson(json['feedback'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JobBidToJson(_$_JobBid instance) => <String, dynamic>{
      'bidIdentifier': instance.bidIdentifier.toJson(),
      'jobBidStatus': _$JobBidStatusesEnumMap[instance.jobBidStatus],
      'feedback': instance.feedback?.toJson(),
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

const _$JobBidStatusesEnumMap = {
  JobBidStatuses.New: 'New',
  JobBidStatuses.Negotiating: 'Negotiating',
  JobBidStatuses.Offered: 'Offered',
  JobBidStatuses.Hired: 'Hired',
  JobBidStatuses.Rejected: 'Rejected',
  JobBidStatuses.Old: 'Old',
};
