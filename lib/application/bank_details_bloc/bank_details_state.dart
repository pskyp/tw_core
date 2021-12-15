part of 'bank_details_bloc.dart';

@freezed
class BankDetailsState with _$BankDetailsState {
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
}
