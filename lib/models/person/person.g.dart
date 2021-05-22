// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person(
    uid: json['uid'] as String,
    displayName: json['displayName'] as String,
    profileImage: json['profileImage'] as String,
    token: json['token'] as String,
    company: json['company'] as String,
  );
}

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'uid': instance.uid,
      'displayName': instance.displayName,
      'profileImage': instance.profileImage,
      'company': instance.company,
      'token': instance.token,
    };
