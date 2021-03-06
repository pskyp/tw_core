// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BidIdentifier _$$_BidIdentifierFromJson(Map<String, dynamic> json) =>
    _$_BidIdentifier(
      bidId: json['bidId'] as String,
      workIdentifier: WorkIdentifier.fromJson(
          json['workIdentifier'] as Map<String, dynamic>),
      bidder: TWUser.fromJson(json['bidder'] as Map<String, dynamic>),
      appliedOn: DateTime.parse(json['appliedOn'] as String),
      bidType: $enumDecode(_$BidTypeEnumMap, json['bidType']),
    );

Map<String, dynamic> _$$_BidIdentifierToJson(_$_BidIdentifier instance) =>
    <String, dynamic>{
      'bidId': instance.bidId,
      'workIdentifier': instance.workIdentifier.toJson(),
      'bidder': instance.bidder.toJson(),
      'appliedOn': instance.appliedOn.toIso8601String(),
      'bidType': _$BidTypeEnumMap[instance.bidType],
    };

const _$BidTypeEnumMap = {
  BidType.TenderBid: 'TenderBid',
  BidType.SupplementBid: 'SupplementBid',
  BidType.JobBid: 'JobBid',
};

_$_WorkIdentifier _$$_WorkIdentifierFromJson(Map<String, dynamic> json) =>
    _$_WorkIdentifier(
      developmentIdentifier: DevelopmentIdentifier.fromJson(
          json['developmentIdentifier'] as Map<String, dynamic>),
      workId: json['workId'] as String,
      title: json['title'] as String,
      employer: TWUser.fromJson(json['employer'] as Map<String, dynamic>),
      type: $enumDecode(_$WorkTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_WorkIdentifierToJson(_$_WorkIdentifier instance) =>
    <String, dynamic>{
      'developmentIdentifier': instance.developmentIdentifier.toJson(),
      'workId': instance.workId,
      'title': instance.title,
      'employer': instance.employer.toJson(),
      'type': _$WorkTypeEnumMap[instance.type],
    };

const _$WorkTypeEnumMap = {
  WorkType.Tender: 'Tender',
  WorkType.Supplement: 'Supplement',
  WorkType.Job: 'Job',
};
