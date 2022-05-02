// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplement_bid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupplementBid _$$_SupplementBidFromJson(Map<String, dynamic> json) =>
    _$_SupplementBid(
      bidIdentifier:
          BidIdentifier.fromJson(json['bidIdentifier'] as Map<String, dynamic>),
      supplementBidStatus: $enumDecode(
          _$SupplementBidStatusEnumMap, json['supplementBidStatus']),
      feedback: json['feedback'] == null
          ? null
          : TenderBidFeedback.fromJson(
              json['feedback'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SupplementBidToJson(_$_SupplementBid instance) =>
    <String, dynamic>{
      'bidIdentifier': instance.bidIdentifier.toJson(),
      'supplementBidStatus':
          _$SupplementBidStatusEnumMap[instance.supplementBidStatus],
      'feedback': instance.feedback?.toJson(),
    };

const _$SupplementBidStatusEnumMap = {
  SupplementBidStatus.New: 'New',
  SupplementBidStatus.Invited: 'Invited',
  SupplementBidStatus.Awarded: 'Awarded',
  SupplementBidStatus.Completed: 'Completed',
};
