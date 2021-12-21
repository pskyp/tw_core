import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/invoicing/invoice_model.dart';
import 'package:tw_core/models/user_bank_details/user_bank_details.dart';

import '../trades.dart';
import '../tw_user/tw_user.dart';

part 'subbie_model.freezed.dart';
part 'subbie_model.g.dart';

@freezed
class Subbie with _$Subbie {
  const Subbie._();
  factory Subbie({
    required TWUser basicProfile,
    required int totalJobs,
    required bool subscribed,
    required int searchRadius,
    required bool cscsVerified,
    required DateTime cscsValidTo,
    required List<dynamic> cscsQualifications,
    required DateTime subscriptionToggledOn,
    required List<Trade> selectedTrades,
    required UserBankDetails? userBankDetails,
    required double totalServiceQuality,
    required double totalProfessionalism,
    required double totalTimeManagement,
    @JsonKey(
      fromJson: employeeDetailsFromJson,
      toJson: employeeDetailsToJson,
    )
        required Option<Either<SoleTraderDetails, LimitedCompanyDetails>>
            invoicingDetailsOption,
  }) = _Subbie;

  factory Subbie.fromJson(Map<String, dynamic> json) => _$SubbieFromJson(json);

  // if total jobs are 0 we should not get NaN error
  // due to division by zero
  double get rating {
    return (totalTimeManagement + totalServiceQuality + totalProfessionalism) /
        (totalJobs == 0 ? 1 : totalJobs);
  }

  double get serviceQualityRating =>
      totalServiceQuality / (totalJobs == 0 ? 1 : totalJobs);

  double get professionalismRating =>
      totalProfessionalism / (totalJobs == 0 ? 1 : totalJobs);

  double get timeManagementRating =>
      totalTimeManagement / (totalJobs == 0 ? 1 : totalJobs);
}

Option<Either<SoleTraderDetails, LimitedCompanyDetails>>
    employeeDetailsFromJson(
  Map<String, dynamic> json,
) {
  if (json.containsKey('invoicingDetailsAreNull')) return none();
  if (json.containsKey('companyNumber')) {
    return some(right(LimitedCompanyDetails.fromJson(json)));
  } else
    return some(left(SoleTraderDetails.fromJson(json)));
}

Map<String, dynamic> employeeDetailsToJson(
  Option<Either<SoleTraderDetails, LimitedCompanyDetails>>
      employeeDetailsOption,
) {
  return employeeDetailsOption.fold(
    () {
      return {'invoicingDetailsAreNull': true};
    },
    (employeeDetails) {
      return employeeDetails.fold(
        (soleTrader) {
          return soleTrader.toJson();
        },
        (limitedCompany) {
          return limitedCompany.toJson();
        },
      );
    },
  );
}

// @JsonSerializable(explicitToJson: true)
// class Subbie {
//   TWUser basicProfile;
//   final int totalJobs;
//   final bool subscribed;
//   final int searchRadius;
//   bool cscsVerified;
//   DateTime cscsValidTo;
//   List<dynamic> cscsQualifications;
//
//   @JsonKey(
//     fromJson: employeeDetailsFromJson,
//     toJson: employeeDetailsToJson,
//   )
//   Either<SoleTraderDetails, LimitedCompanyDetails>? invoicingDetails;
//
//   final DateTime subscriptionToggledOn;
//   final List<Trade> selectedTrades;
//   final UserBankDetails? userBankDetails;
//   final double totalServiceQuality, totalProfessionalism, totalTimeManagement;
//
//   Subbie({
//     this.userBankDetails,
//     required this.invoicingDetails,
//     required this.basicProfile,
//     required this.subscriptionToggledOn,
//     required this.cscsQualifications,
//     required this.searchRadius,
//     required this.cscsValidTo,
//     required this.cscsVerified,
//     required this.subscribed,
//     required this.selectedTrades,
//     required this.totalJobs,
//     required this.totalProfessionalism,
//     required this.totalServiceQuality,
//     required this.totalTimeManagement,
//   });
//
//   // Person get asPerson => Person.fromTWUser(basicProfile);
//
//   Map<String, dynamic> toJson() => _$SubbieToJson(this);
//   factory Subbie.fromJson(Map<String, dynamic> json) => _$SubbieFromJson(json);
//
//   //if total jobs are 0 we should not get NaN error
//   //due to division by zero
//   double get rating {
//     return (totalTimeManagement + totalServiceQuality + totalProfessionalism) /
//         (totalJobs == 0 ? 1 : totalJobs);
//   }
//
//   double get serviceQualityRating =>
//       totalServiceQuality / (totalJobs == 0 ? 1 : totalJobs);
//
//   double get professionalismRating =>
//       totalProfessionalism / (totalJobs == 0 ? 1 : totalJobs);
//
//   double get timeManagementRating =>
//       totalTimeManagement / (totalJobs == 0 ? 1 : totalJobs);
// }
//
// Either<SoleTraderDetails, LimitedCompanyDetails> employeeDetailsFromJson(
//   Map<String, dynamic> json,
// ) {
//   if (json.containsKey('companyNumber')) {
//     return right(LimitedCompanyDetails.fromJson(json));
//   } else
//     return left(SoleTraderDetails.fromJson(json));
// }
//
// Map<String, dynamic> employeeDetailsToJson(
//   Either<SoleTraderDetails, LimitedCompanyDetails> employeeDetails,
// ) {
//   return employeeDetails.fold(
//     (soleTrader) {
//       return soleTrader.toJson();
//     },
//     (limitedCompany) {
//       return limitedCompany.toJson();
//     },
//   );
// }
