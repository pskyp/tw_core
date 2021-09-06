// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bid _$BidFromJson(Map<String, dynamic> json) => Bid(
      jobId: json['jobId'] as String,
      bidId: json['bidId'] as String,
      contractorId: json['contractorId'] as String,
      title: json['title'] as String,
      developmentTitle: json['developmentTitle'] as String,
      subbieTWUser:
          TWUser.fromJson(json['subbieTWUser'] as Map<String, dynamic>),
      address: json['address'] as String,
      seenByContractor: json['seenByContractor'] as bool,
      description: json['description'] as String,
      status: _$enumDecode(_$BidStatusesEnumMap, json['status']),
      appliedOn: DateTime.parse(json['appliedOn'] as String),
      trade: Trade.fromJson(json['trade'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BidToJson(Bid instance) => <String, dynamic>{
      'bidId': instance.bidId,
      'jobId': instance.jobId,
      'title': instance.title,
      'description': instance.description,
      'developmentTitle': instance.developmentTitle,
      'trade': instance.trade.toJson(),
      'appliedOn': instance.appliedOn.toIso8601String(),
      'address': instance.address,
      'contractorId': instance.contractorId,
      'seenByContractor': instance.seenByContractor,
      'subbieTWUser': instance.subbieTWUser.toJson(),
      'status': _$BidStatusesEnumMap[instance.status],
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

const _$BidStatusesEnumMap = {
  BidStatuses.New: 'New',
  BidStatuses.Negotiating: 'Negotiating',
  BidStatuses.Offered: 'Offered',
  BidStatuses.Hired: 'Hired',
  BidStatuses.Rejected: 'Rejected',
  BidStatuses.Old: 'Old',
};
