// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_bid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobBid _$$_JobBidFromJson(Map<String, dynamic> json) => _$_JobBid(
      bidIdentifier:
          BidIdentifier.fromJson(json['bidIdentifier'] as Map<String, dynamic>),
      rating: (json['rating'] as num?)?.toDouble(),
      jobBidStatus: _$enumDecode(_$JobBidStatusesEnumMap, json['jobBidStatus']),
    );

Map<String, dynamic> _$$_JobBidToJson(_$_JobBid instance) => <String, dynamic>{
      'bidIdentifier': instance.bidIdentifier.toJson(),
      'rating': instance.rating,
      'jobBidStatus': _$JobBidStatusesEnumMap[instance.jobBidStatus],
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
