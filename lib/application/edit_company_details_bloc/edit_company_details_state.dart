part of 'edit_company_details_bloc.dart';

@freezed
class EditCompanyDetailsState with _$EditCompanyDetailsState {
  factory EditCompanyDetailsState({
    required TWString companyName,
    required TWString companyNumber,
    required TWString vatNumber,
    required Option<LocationModel> registeredAddress,
    required Option<LocationModel> invoicingAddress,
    required bool showErrors,
    required bool submissionInProgress,
    required Option<Either<TWServerError, Unit>> resultOption,
  }) = _EditCompanyDetailsState;

  factory EditCompanyDetailsState.initial({
    required Contractor contractor,
  }) =>
      _EditCompanyDetailsState(
        companyName: TWString(contractor.basicProfile.company, 3),
        companyNumber: TWString('company number', 3),
        vatNumber: TWString('vat number', 3),
        invoicingAddress: optionOf(null),
        registeredAddress: optionOf(contractor.basicProfile.location),
        resultOption: optionOf(null),
        showErrors: false,
        submissionInProgress: false,
      );
}
