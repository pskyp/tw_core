// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender_bid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TenderBid _$$_TenderBidFromJson(Map<String, dynamic> json) => _$_TenderBid(
      bidIdentifier:
          BidIdentifier.fromJson(json['bidIdentifier'] as Map<String, dynamic>),
      tenderBidStatus:
          $enumDecode(_$TenderBidStatusEnumMap, json['tenderBidStatus']),
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

const _$TenderBidStatusEnumMap = {
  TenderBidStatus.New: 'New',
  TenderBidStatus.Invited: 'Invited',
  TenderBidStatus.Awarded: 'Awarded',
  TenderBidStatus.Completed: 'Completed',
};
