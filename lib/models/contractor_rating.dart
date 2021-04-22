import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contractor_rating.g.dart';

@JsonSerializable(explicitToJson: true)
class ContractorRating {
  double reliability, communication, environment;

  ContractorRating({
    @required this.reliability,
    @required this.communication,
    @required this.environment,
  });

  factory ContractorRating.fromJson(Map<String, dynamic> json) =>
      _$ContractorRatingFromJson(json);

  Map<String, dynamic> toJson() => _$ContractorRatingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PendingContractorRating {
  final String jobId;
  final String jobTitle;
  final String contractorId;

  PendingContractorRating({
    @required this.contractorId,
    @required this.jobId,
    @required this.jobTitle,
  });

  factory PendingContractorRating.fromJson(Map<String, dynamic> json) =>
      _$PendingContractorRatingFromJson(json);

  Map<String, dynamic> toJson() => _$PendingContractorRatingToJson(this);
}
