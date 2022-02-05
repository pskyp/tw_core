part of 'bank_details_bloc.dart';

@freezed
class BankDetailsState with _$BankDetailsState {
  const BankDetailsState._();
  factory BankDetailsState({
    required BankAccountNumber accountNumber,
    required BankSortCode sortCode,
    required bool showErrors,
    required bool submissionInProgress,
    required Option<Either<TWServerError, Unit>> resultOption,
  }) = _BankDetailsState;

  factory BankDetailsState.initial(UserBankDetails? userBankDetails) =>
      _BankDetailsState(
        accountNumber: BankAccountNumber(
          userBankDetails?.accountNumber.toString() ?? '',
        ),
        sortCode: BankSortCode(
          userBankDetails?.sortCode.toString() ?? '',
        ),
        submissionInProgress: false,
        resultOption: none(),
        showErrors: false,
      );

  Future<String> unencyptAccountNumber(privateKey) async {
    print(privateKey);
    return await RSA.decryptPKCS1v15(
        accountNumber.value.fold((l) => l, (r) => r.toString()), privateKey);
  }

  Future<String> unencyptSortCode(privateKey) async {
    return await RSA.decryptPKCS1v15(sortCode.value.fold((l) => l, (r) => r.toString()), privateKey);
  }
}
