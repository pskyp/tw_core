import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'tw_user.dart';

part 'contractor_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Contractor {
  TWUser basicProfile;
  final List<String> savedJobRequirements;

  final int totalJobs, totalRatings;
  final double totalCommunication, totalEnvironment, totalReliability;

  final bool subscribed;
  final DateTime subscriptionToggledOn;

  Contractor({
    @required this.basicProfile,
    @required this.subscriptionToggledOn,
    @required this.savedJobRequirements,
    @required this.totalJobs,
    @required this.subscribed,
    @required this.totalRatings,
    @required this.totalCommunication,
    @required this.totalEnvironment,
    @required this.totalReliability,
  });

  Map<String, dynamic> toJson() => _$ContractorToJson(this);
  factory Contractor.fromJson(Map<String, dynamic> json) =>
      _$ContractorFromJson(json);

  //if total ratings are 0 we should not get NaN error
  //due to division by zero
  double get rating {
    return (totalCommunication + totalEnvironment + totalReliability) /
        (totalRatings == 0 ? 1 : totalRatings * 3);
  }

  double get communicationRating =>
      totalCommunication / (totalRatings == 0 ? 1 : totalRatings);

  double get environmentRating =>
      totalEnvironment / (totalRatings == 0 ? 1 : totalRatings);

  double get reliabilityRating =>
      totalReliability / (totalRatings == 0 ? 1 : totalRatings);
}
