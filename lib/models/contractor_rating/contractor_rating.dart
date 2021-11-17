import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contractor_rating.freezed.dart';
part 'contractor_rating.g.dart';

@freezed
class ContractorRating with _$ContractorRating {
  factory ContractorRating({
    required double reliability,
    required double communication,
    required double environment,
  }) = _ContractorRating;

  factory ContractorRating.fromJson(Map<String, dynamic> json) =>
      _$ContractorRatingFromJson(json);
}

// @JsonSerializable(explicitToJson: true)
// class PendingContractorRating {
//   final String jobId;
//   final String jobTitle;
//   final String contractorId;
//
//   PendingContractorRating({
//     required this.contractorId,
//     required this.jobId,
//     required this.jobTitle,
//   });
//
//   factory PendingContractorRating.fromJson(Map<String, dynamic> json) =>
//       _$PendingContractorRatingFromJson(json);
//
//   Map<String, dynamic> toJson() => _$PendingContractorRatingToJson(this);
// }
