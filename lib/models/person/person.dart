// import 'dart:developer';
//
// import 'package:flutter/widgets.dart';
// import 'package:json_annotation/json_annotation.dart';
//
// import '../tw_user/tw_user.dart';
//
// part 'person.g.dart';
//
// @JsonSerializable(explicitToJson: true)
// class Person {
//   final String uid;
//   final TWUserType type;
//   final String displayName;
//   final String profileImage;
//   final String phone;
//   final String company;
//   final String companyDomain;
//
//   Person({
//     required this.uid,
//     required this.type,
//     required this.displayName,
//     required this.profileImage,
//     required this.phone,
//     required this.company,
//     required this.companyDomain,
//   });
//
//   factory Person.fromTWUser(TWUser user) {
//     log('person from user');
//     return Person(
//       uid: user.uid,
//       type: user.type,
//       displayName: user.displayName,
//       profileImage: user.profileImage,
//       company: user.company,
//       companyDomain: user.companyDomain,
//       phone: user.phone,
//     );
//   }
//
//   Map<String, dynamic> toJson() => _$PersonToJson(this);
//   factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
// }
