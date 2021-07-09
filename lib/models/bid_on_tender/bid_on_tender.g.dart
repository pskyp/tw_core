// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_on_tender.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BidOnTender _$BidOnTenderFromJson(Map<String, dynamic> json) {
  return BidOnTender(
    bidId: json['bidId'] as String,
    tenderId: json['tenderId'] as String,
    contractorId: json['contractorId'] as String,
    status: _$enumDecode(_$TenderBidStatusEnumMap, json['status']),
    contractorCompanyName: json['contractorCompanyName'] as String,
    rating: (json['rating'] as num).toDouble(),
  );
}

Map<String, dynamic> _$BidOnTenderToJson(BidOnTender instance) =>
    <String, dynamic>{
      'bidId': instance.bidId,
      'tenderId': instance.tenderId,
      'contractorId': instance.contractorId,
      'status': _$TenderBidStatusEnumMap[instance.status],
      'contractorCompanyName': instance.contractorCompanyName,
      'rating': instance.rating,
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

const _$TenderBidStatusEnumMap = {
  TenderBidStatus.neu: 'neu',
  TenderBidStatus.active: 'active',
};
