// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Developer _$DeveloperFromJson(Map<String, dynamic> json) {
  return Developer(
    twUser: TWUser.fromJson(json['twUser'] as Map<String, dynamic>),
    phone: json['phone'] as String,
    companyName: json['companyName'] as String,
    companyDomain: json['companyDomain'] as String,
  );
}

Map<String, dynamic> _$DeveloperToJson(Developer instance) => <String, dynamic>{
      'twUser': instance.twUser.toJson(),
      'phone': instance.phone,
      'companyName': instance.companyName,
      'companyDomain': instance.companyDomain,
    };
