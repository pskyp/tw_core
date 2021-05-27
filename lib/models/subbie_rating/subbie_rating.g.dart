// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subbie_rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubbieRating _$SubbieRatingFromJson(Map<String, dynamic> json) {
  return SubbieRating(
    serviceQuality: (json['serviceQuality'] as num).toDouble(),
    professionalism: (json['professionalism'] as num).toDouble(),
    timeManagement: (json['timeManagement'] as num).toDouble(),
  );
}

Map<String, dynamic> _$SubbieRatingToJson(SubbieRating instance) =>
    <String, dynamic>{
      'serviceQuality': instance.serviceQuality,
      'professionalism': instance.professionalism,
      'timeManagement': instance.timeManagement,
    };
