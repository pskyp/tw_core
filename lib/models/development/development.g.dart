// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'development.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Development _$$_DevelopmentFromJson(Map<String, dynamic> json) =>
    _$_Development(
      developmentIdentifier: DevelopmentIdentifier.fromJson(
          json['developmentIdentifier'] as Map<String, dynamic>),
      description: json['description'] as String,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DevelopmentToJson(_$_Development instance) =>
    <String, dynamic>{
      'developmentIdentifier': instance.developmentIdentifier.toJson(),
      'description': instance.description,
      'location': instance.location.toJson(),
    };

_$_DevelopmentIdentifier _$$_DevelopmentIdentifierFromJson(
        Map<String, dynamic> json) =>
    _$_DevelopmentIdentifier(
      id: json['id'] as String,
      title: json['title'] as String,
      developerId: json['developerId'] as String,
    );

Map<String, dynamic> _$$_DevelopmentIdentifierToJson(
        _$_DevelopmentIdentifier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'developerId': instance.developerId,
    };
