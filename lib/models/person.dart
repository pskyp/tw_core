import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable(explicitToJson: true)
class Person {
  final String uid;
  final String displayName;
  final String profileImage;
  final String company;
  final String token;

  Person({
    @required this.uid,
    @required this.displayName,
    @required this.profileImage,
    @required this.token,
    this.company = "",
  });

  Map<String, dynamic> toJson() => _$PersonToJson(this);
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  // factory Person.fromMap(Map data) => Person(
  //       id: data['person_id'] ?? data['uid'],
  //       displayName: data['display_name'],
  //       profileImage: data['profileImage'],
  //       company: data['company'],
  //       token: data['token'],
  //     );

  // Map<String, dynamic> get map => {
  //       'person_id': id,
  //       'display_name': displayName,
  //       'profileImage': profileImage,
  //       'company': company,
  //       'token': token,
  //     };
}
