// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tender _$TenderFromJson(Map<String, dynamic> json) {
  return Tender(
    tenderTitle: json['tenderTitle'] as String,
    trade: json['trade'],
    requirements: json['requirements'] as String,
    startDate: DateTime.parse(json['startDate'] as String),
    endDate: DateTime.parse(json['endDate'] as String),
  );
}

Map<String, dynamic> _$TenderToJson(Tender instance) => <String, dynamic>{
      'tenderTitle': instance.tenderTitle,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'trade': instance.trade,
      'requirements': instance.requirements,
    };
