// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender_bid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TenderBid _$$_TenderBidFromJson(Map<String, dynamic> json) => _$_TenderBid(
      bidIdentifier:
          BidIdentifier.fromJson(json['bidIdentifier'] as Map<String, dynamic>),
      tenderBidStatus:
          _$enumDecode(_$TenderBidStatusEnumMap, json['tenderBidStatus']),
      feedback: json['feedback'] == null
          ? null
          : TenderBidFeedback.fromJson(
              json['feedback'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TenderBidToJson(_$_TenderBid instance) =>
    <String, dynamic>{
      'bidIdentifier': instance.bidIdentifier.toJson(),
      'tenderBidStatus': _$TenderBidStatusEnumMap[instance.tenderBidStatus],
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

const _$TenderBidStatusEnumMap = {
  TenderBidStatus.New: 'New',
  TenderBidStatus.Invited: 'Invited',
  TenderBidStatus.Awarded: 'Awarded',
  TenderBidStatus.Completed: 'Completed',
};
