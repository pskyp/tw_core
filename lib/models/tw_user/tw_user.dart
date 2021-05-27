import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

import '../lat_lng_converter.dart';

part 'tw_user.g.dart';

@JsonSerializable(explicitToJson: true)
@LatLngConverter()
class TWUser {
  final String uid;
  final String displayName;
  final String profileImage;
  final String email;
  final String company;
  final String pushToken;
  final int phone;
  LatLng latlng;
  String address;
  String city;
  final DateTime memberSince;

  //the app expects the type attribute to only have one of two value:
  // contractor, subbie
  final String type;

  TWUser({
    required this.uid,
    required this.company,
    required this.profileImage,
    required this.memberSince,
    required this.displayName,
    required this.email,
    required this.pushToken,
    required this.type,
    required this.phone,
    required this.latlng,
    required this.address,
    required this.city,
  });

  Map<String, dynamic> toJson() => _$TWUserToJson(this);
  factory TWUser.fromJson(Map<String, dynamic> json) => _$TWUserFromJson(json);
}
