part of 'edit_company_details_bloc.dart';

@freezed
class EditCompanyDetailsEvent with _$EditCompanyDetailsEvent {
  factory EditCompanyDetailsEvent.companyNameInput(String input) =
      CompanyNameInput;
  factory EditCompanyDetailsEvent.companyNumberInput(String input) =
      CompanyNumberInput;
  factory EditCompanyDetailsEvent.vatInput(String input) = VatInput;
  factory EditCompanyDetailsEvent.registeredAddressInput(
    LocationModel location,
  ) = RegisteredAddressInput;
  factory EditCompanyDetailsEvent.invoicingAddressInput(
    LocationModel location,
  ) = InvoicingAddressInput;
}
