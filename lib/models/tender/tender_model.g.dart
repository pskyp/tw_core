// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tender _$TenderFromJson(Map<String, dynamic> json) {
  return Tender(
    id: json['id'] as String,
    developmentId: json['developmentId'] as String,
    developerId: json['developerId'] as String,
    tenderTitle: json['tenderTitle'] as String,
    trade: Trade.fromJson(json['trade'] as Map<String, dynamic>),
    requirements: json['requirements'] as String,
    startDate: DateTime.parse(json['startDate'] as String),
    endDate: DateTime.parse(json['endDate'] as String),
  );
}

Map<String, dynamic> _$TenderToJson(Tender instance) => <String, dynamic>{
      'id': instance.id,
      'developmentId': instance.developmentId,
      'developerId': instance.developerId,
      'tenderTitle': instance.tenderTitle,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'trade': instance.trade.toJson(),
      'requirements': instance.requirements,
    };
