// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'development.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Development _$DevelopmentFromJson(Map<String, dynamic> json) {
  return Development(
    id: json['id'] as String,
    developerId: json['developerId'] as String,
    devTitle: json['devTitle'] as String,
    description: json['description'] as String,
    address: json['address'] as String,
    tenders: (json['tenders'] as List<dynamic>)
        .map((e) => Tender.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DevelopmentToJson(Development instance) =>
    <String, dynamic>{
      'id': instance.id,
      'developerId': instance.developerId,
      'devTitle': instance.devTitle,
      'address': instance.address,
      'description': instance.description,
      'tenders': instance.tenders.map((e) => e.toJson()).toList(),
    };
