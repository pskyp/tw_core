import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/invoicing/invoicing_details_model.dart';

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
  InvoicingDetails invoicingDetails;

  //the app expects the type attribute to only have one of two value:
  // contractor, subbie
  final String type;

  TWUser({
    @required this.uid,
    @required this.company,
    @required this.profileImage,
    @required this.memberSince,
    @required this.displayName,
    @required this.email,
    @required this.pushToken,
    @required this.type,
    @required this.phone,
    @required this.latlng,
    @required this.address,
    @required this.city,
    @required this.invoicingDetails
  });

  Map<String, dynamic> toJson() => _$TWUserToJson(this);
  factory TWUser.fromJson(Map<String, dynamic> json) => _$TWUserFromJson(json);

  // factory BasicProfile.fromMap(Map data) {
  //   // if (data['id'] == null) return null;

  //   return BasicProfile(
  //     displayName: data['display_name'],
  //     // lastName: data['last_name'],
  //     company: data['company'],
  //     id: data['uid'],
  //     profileImage: data['profileImage'],
  //     memberSince: DateTime.parse(data['member_since']),
  //     email: data['email'],
  //     pushToken: data['token'],
  //     type: data['type'],
  //     phone: data['phone'],
  //     latlng:
  //         LatLng(double.tryParse(data['lat']), double.tryParse(data['lng'])),
  //     address: data['address'],
  //     city: data['city'],
  //   );
  // }

  // Map<String, dynamic> get map => {
  //       'uid': id,
  //       'display_name': displayName,
  //       // 'last_name': lastName,
  //       'profileImage': profileImage,
  //       'email': email,
  //       'member_since': memberSince.toString(),
  //       'token': pushToken,
  //       'type': type,
  //       'company': company,
  //       'phone': phone,
  //       'lat': latlng.latitude.toString(),
  //       'lng': latlng.longitude.toString(),
  //       'address': address,
  //       'city': city
  //     };
}
