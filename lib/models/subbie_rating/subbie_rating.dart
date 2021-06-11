import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subbie_rating.g.dart';

@JsonSerializable(explicitToJson: true)
class SubbieRating {
  final double serviceQuality;
  final double professionalism;
  final double timeManagement;

  SubbieRating({
    required this.serviceQuality,
    required this.professionalism,
    required this.timeManagement,
  }) {
    log('$serviceQuality, $professionalism, $timeManagement');
  }

  factory SubbieRating.fromJson(Map<String, dynamic> json) =>
      _$SubbieRatingFromJson(json);
  Map<String, dynamic> toJson() => _$SubbieRatingToJson(this);
}
