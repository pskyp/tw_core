import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/invoicing/invoicing_details_model.dart';
import 'package:tw_core/models/location/location_model.dart';

import '../position_converter.dart';

part 'tw_user.g.dart';

enum TWUserType { Developer, Contractor, Subbie }

@JsonSerializable(explicitToJson: true)
class TWUser {
  final String uid;
  final TWUserType type;
  final String displayName;
  final String profileImage;
  final String email;
  final String company;
  final String companyDomain;
  final String pushToken;
  final String phone;
  LocationModel location;
  // double latitude, longitude;
  // String address;
  // String city;
  final DateTime memberSince;
  InvoicingDetails? invoicingDetails;
  final bool shouldDisplayShowcase;

  TWUser({
    required this.companyDomain,
    required this.shouldDisplayShowcase,
    required this.type,
    required this.uid,
    required this.company,
    required this.profileImage,
    required this.memberSince,
    required this.displayName,
    required this.email,
    required this.pushToken,
    required this.phone,
    required this.location,
  });

  Map<String, dynamic> toJson() => _$TWUserToJson(this);
  factory TWUser.fromJson(Map<String, dynamic> json) => _$TWUserFromJson(json);
}
