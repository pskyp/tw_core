// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contractor_rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContractorRating _$$_ContractorRatingFromJson(Map<String, dynamic> json) =>
    _$_ContractorRating(
      reliability: (json['reliability'] as num).toDouble(),
      communication: (json['communication'] as num).toDouble(),
      environment: (json['environment'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ContractorRatingToJson(_$_ContractorRating instance) =>
    <String, dynamic>{
      'reliability': instance.reliability,
      'communication': instance.communication,
      'environment': instance.environment,
    };
