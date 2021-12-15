import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/subbie/subbie_invoicing_details.dart';
import 'package:tw_core/models/user_bank_details/user_bank_details.dart';

import '../trades.dart';
import '../tw_user/tw_user.dart';

part 'subbie_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Subbie {
  TWUser basicProfile;
  final int totalJobs;
  final bool subscribed;
  final int searchRadius;
  bool cscsVerified;
  DateTime cscsValidTo;
  List<dynamic> cscsQualifications;
  final SubbieInvoicingDetails? invoicingDetails;
  final DateTime subscriptionToggledOn;
  final List<Trade> selectedTrades;
  final UserBankDetails? userBankDetails;
  final double totalServiceQuality, totalProfessionalism, totalTimeManagement;

  Subbie({
    this.userBankDetails,
    required this.invoicingDetails,
    required this.basicProfile,
    required this.subscriptionToggledOn,
    required this.cscsQualifications,
    required this.searchRadius,
    required this.cscsValidTo,
    required this.cscsVerified,
    required this.subscribed,
    required this.selectedTrades,
    required this.totalJobs,
    required this.totalProfessionalism,
    required this.totalServiceQuality,
    required this.totalTimeManagement,
  });

  // Person get asPerson => Person.fromTWUser(basicProfile);

  Map<String, dynamic> toJson() => _$SubbieToJson(this);
  factory Subbie.fromJson(Map<String, dynamic> json) => _$SubbieFromJson(json);

  //if total jobs are 0 we should not get NaN error
  //due to division by zero
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
