part of 'edit_company_details_bloc.dart';

@freezed
class EditCompanyDetailsEvent with _$EditCompanyDetailsEvent {
  factory EditCompanyDetailsEvent.onCompanyNameInput(
    String input,
  ) = OnCompanyNameInput;

  factory EditCompanyDetailsEvent.onVatNumberInput(
    String input,
  ) = OnVATNumberInput;

  factory EditCompanyDetailsEvent.onRegisteredAddressInput(
    LocationModel location,
  ) = OnRegisteredAddressInput;

  factory EditCompanyDetailsEvent.onSubmitPressed() = SubmitPressed;

  factory EditCompanyDetailsEvent.onCompanyAddressInput(
    LocationModel location,
  ) = OnCompanyAddressInput;

  factory EditCompanyDetailsEvent.onCompanyNumberInput(
    String input,
  ) = OnCompanyNumberInput;
}
