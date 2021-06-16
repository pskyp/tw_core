import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

import '../tw_user/tw_user.dart';

part 'person.g.dart';

@JsonSerializable(explicitToJson: true)
class Person {
  final String uid;
  final String displayName;
  final String profileImage;
  final String company;

  Person({
    required this.uid,
    required this.displayName,
    required this.profileImage,
    this.company = "",
  });

  factory Person.fromTWUser(TWUser user) {
    log('person from user');
    return Person(
      displayName: user.displayName,
      profileImage: user.profileImage,
      uid: user.uid,
      company: user.company,
    );
  }

  Map<String, dynamic> toJson() => _$PersonToJson(this);
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
