import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bank_details.freezed.dart';
part 'user_bank_details.g.dart';

@freezed
class UserBankDetails with _$UserBankDetails {
  factory UserBankDetails({
    required String accountNumber,
    required String sortCode,
  }) = _UserBankDetails;

  factory UserBankDetails.fromJson(Map<String, dynamic> json) =>
      _$UserBankDetailsFromJson(json);
}
