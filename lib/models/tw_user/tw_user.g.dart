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
    memberSince: DateTime.parse(json['memberSince'] as String),
    displayName: json['displayName'] as String,
    email: json['email'] as String,
    pushToken: json['pushToken'] as String,
    type: json['type'] as String,
    phone: json['phone'] as int,
    latitude: (json['latitude'] as num).toDouble(),
    longitude: (json['longitude'] as num).toDouble(),
    address: json['address'] as String,
    city: json['city'] as String,
  )..invoicingDetails = json['invoicingDetails'] == null
      ? null
      : InvoicingDetails.fromJson(
          json['invoicingDetails'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TWUserToJson(TWUser instance) => <String, dynamic>{
      'uid': instance.uid,
      'displayName': instance.displayName,
      'profileImage': instance.profileImage,
      'email': instance.email,
      'company': instance.company,
      'pushToken': instance.pushToken,
      'phone': instance.phone,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'city': instance.city,
      'memberSince': instance.memberSince.toIso8601String(),
      'invoicingDetails': instance.invoicingDetails?.toJson(),
      'type': instance.type,
    };
