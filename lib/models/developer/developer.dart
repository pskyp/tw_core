import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../tw_user/tw_user.dart';

part 'developer.g.dart';

@JsonSerializable(explicitToJson: true)
class Developer {
  final TWUser twUser;
  final String phone;
  final String companyName;
  final String companyDomain;

  Developer({
    required this.twUser,
    required this.phone,
    required this.companyName,
    required this.companyDomain,
  });

  factory Developer.fromJson(Map<String, dynamic> json) =>
      _$DeveloperFromJson(json);

  Map<String, dynamic> toJson() => _$DeveloperToJson(this);
}
