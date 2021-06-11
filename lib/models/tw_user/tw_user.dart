import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/invoicing/invoicing_details_model.dart';

import '../position_converter.dart';

part 'tw_user.g.dart';

@JsonSerializable(explicitToJson: true)
@PositionConverter()
class TWUser {
  final String uid;
  final String displayName;
  final String profileImage;
  final String email;
  final String company;
  final String pushToken;
  final int phone;
  Position latlng;
  String address;
  String city;
  final DateTime memberSince;
  InvoicingDetails? invoicingDetails;

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
