// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tw_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TWUser _$TWUserFromJson(Map<String, dynamic> json) {
  return TWUser(
    uid: json['uid'] as String,
    company: json['company'] as String,
    profileImage: json['profileImage'] as String,
    memberSince: json['memberSince'] == null
        ? null
        : DateTime.parse(json['memberSince'] as String),
    displayName: json['displayName'] as String,
    email: json['email'] as String,
    pushToken: json['pushToken'] as String,
    type: json['type'] as String,
    phone: json['phone'] as int,
    latlng: const LatLngConverter().fromJson(json['latlng'] as List),
    address: json['address'] as String,
    city: json['city'] as String,
  );
}

Map<String, dynamic> _$TWUserToJson(TWUser instance) => <String, dynamic>{
      'uid': instance.uid,
      'displayName': instance.displayName,
      'profileImage': instance.profileImage,
      'email': instance.email,
      'company': instance.company,
      'pushToken': instance.pushToken,
      'phone': instance.phone,
      'latlng': const LatLngConverter().toJson(instance.latlng),
      'address': instance.address,
      'city': instance.city,
      'memberSince': instance.memberSince?.toIso8601String(),
      'type': instance.type,
    };
