part of 'bank_details_bloc.dart';

@freezed
class BankDetailsEvent with _$BankDetailsEvent {
  factory BankDetailsEvent.onSortCodeInput(String input) = OnSortCodeInput;
  factory BankDetailsEvent.onAccountNumberInput(String input) =
      OnAccountNumberInput;

  factory BankDetailsEvent.onSubmitPressed() = OnSubmitPressed;
}
