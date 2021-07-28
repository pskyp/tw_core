// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'development.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Development _$DevelopmentFromJson(Map<String, dynamic> json) => Development(
      id: json['id'] as String,
      developerId: json['developerId'] as String,
      devTitle: json['devTitle'] as String,
      description: json['description'] as String,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DevelopmentToJson(Development instance) =>
    <String, dynamic>{
      'id': instance.id,
      'developerId': instance.developerId,
      'devTitle': instance.devTitle,
      'location': instance.location.toJson(),
      'description': instance.description,
    };

DevelopmentDoc _$DevelopmentDocFromJson(Map<String, dynamic> json) =>
    DevelopmentDoc(
      docName: json['docName'] as String,
      docPath: json['docPath'] as String,
    );

Map<String, dynamic> _$DevelopmentDocToJson(DevelopmentDoc instance) =>
    <String, dynamic>{
      'docName': instance.docName,
      'docPath': instance.docPath,
    };
