// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bid _$BidFromJson(Map<String, dynamic> json) {
  return Bid(
    jobId: json['jobId'] as String,
    bidId: json['bidId'] as String,
    contractorId: json['contractorId'] as String,
    title: json['title'] as String,
    developmentTitle: json['developmentTitle'] as String,
    person: Person.fromJson(json['person'] as Map<String, dynamic>),
    address: json['address'] as String,
    seenByContractor: json['seenByContractor'] as bool,
    description: json['description'] as String,
    status: BidStatus.fromJson(json['status'] as Map<String, dynamic>),
    appliedOn: DateTime.parse(json['appliedOn'] as String),
    trade: Trade.fromJson(json['trade'] as Map<String, dynamic>),
  );
}

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
      'person': instance.person.toJson(),
      'status': instance.status.toJson(),
    };
