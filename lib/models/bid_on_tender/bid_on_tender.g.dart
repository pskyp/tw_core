// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_on_tender.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BidOnTender _$BidOnTenderFromJson(Map<String, dynamic> json) => BidOnTender(
      bidId: json['bidId'] as String,
      bidderId: json['bidderId'] as String,
      developerId: json['developerId'] as String,
      tenderId: json['tenderId'] as String,
      status: _$enumDecode(_$TenderBidStatusEnumMap, json['status']),
      bidder: Person.fromJson(json['bidder'] as Map<String, dynamic>),
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$BidOnTenderToJson(BidOnTender instance) =>
    <String, dynamic>{
      'bidId': instance.bidId,
      'bidderId': instance.bidderId,
      'developerId': instance.developerId,
      'tenderId': instance.tenderId,
      'status': _$TenderBidStatusEnumMap[instance.status],
      'bidder': instance.bidder.toJson(),
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
  TenderBidStatus.invited: 'invited',
  TenderBidStatus.awarded: 'awarded',
};
