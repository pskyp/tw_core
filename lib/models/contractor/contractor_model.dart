import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/user_bio/user_bio.dart';
import 'package:tw_core/models/tw_document/tw_document.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';

part 'contractor_model.freezed.dart';
part 'contractor_model.g.dart';

@freezed
class Contractor with _$Contractor {
  const Contractor._();
  const factory Contractor({
    required TWUser basicProfile,
    required List<String> savedJobRequirements,
    required int totalJobs,
    required int totalRatings,
    required double totalCommunication,
    required double totalEnvironment,
    required double totalReliability,
    required bool subscribed,
    required DateTime subscriptionToggledOn,
    UserBio? userBio,
    TWDocument? portfolioDocument,
  }) = _Contractor;

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
//
// @JsonSerializable(explicitToJson: true)
// class Contractor {
//   TWUser basicProfile;
//   final List<String> savedJobRequirements;
//
//   final int totalJobs, totalRatings;
//   final double totalCommunication, totalEnvironment, totalReliability;
//
//   final bool subscribed;
//   final DateTime subscriptionToggledOn;
//   final UserBio? userBio;
//
//   Contractor({
//     required this.basicProfile,
//     required this.subscriptionToggledOn,
//     required this.savedJobRequirements,
//     required this.totalJobs,
//     required this.subscribed,
//     required this.totalRatings,
//     required this.totalCommunication,
//     required this.totalEnvironment,
//     required this.totalReliability,
//     this.userBio,
//   });
//
//   // Person get asPerson => Person.fromTWUser(basicProfile);
//
//   Map<String, dynamic> toJson() => _$ContractorToJson(this);
//   factory Contractor.fromJson(Map<String, dynamic> json) =>
//       _$ContractorFromJson(json);
//
//   Contractor copyWith({
//     List<String>? newSavedJobRequirements,
//   }) {
//     return Contractor(
//       savedJobRequirements: newSavedJobRequirements ?? savedJobRequirements,
//       basicProfile: basicProfile,
//       subscriptionToggledOn: subscriptionToggledOn,
//       totalJobs: totalJobs,
//       subscribed: subscribed,
//       totalRatings: totalRatings,
//       totalCommunication: totalCommunication,
//       totalEnvironment: totalEnvironment,
//       totalReliability: totalReliability,
//     );
//   }
//
//   //if total ratings are 0 we should not get NaN error
//   //due to division by zero
//   double get rating {
//     return (totalCommunication + totalEnvironment + totalReliability) /
//         (totalRatings == 0 ? 1 : totalRatings * 3);
//   }
//
//   double get communicationRating =>
//       totalCommunication / (totalRatings == 0 ? 1 : totalRatings);
//
//   double get environmentRating =>
//       totalEnvironment / (totalRatings == 0 ? 1 : totalRatings);
//
//   double get reliabilityRating =>
//       totalReliability / (totalRatings == 0 ? 1 : totalRatings);
// }
