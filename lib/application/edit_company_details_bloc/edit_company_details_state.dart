part of 'edit_company_details_bloc.dart';

@freezed
class EditCompanyDetailsState with _$EditCompanyDetailsState {
  const EditCompanyDetailsState._();
  factory EditCompanyDetailsState({
    required TWCompanyName companyName,
    required CompanyNumber companyNumber,
    required TWLocation registeredAddress,
    required TWLocation companyAddress,
    required VATNumber vatNumber,
    required bool showErrors,
    required bool submissionInProgress,
    required Option<Either<TWServerError, Unit>> resultOption,
  }) = _EditCompanyDetailsState;

  factory EditCompanyDetailsState.initial() {
    ContractorCompanyDetails? companyDetails =
        CacheService().contractor.companyDetails;
    return _EditCompanyDetailsState(
      companyName: TWCompanyName(companyDetails?.companyName ?? ''),
      companyNumber: CompanyNumber(companyDetails?.companyNumber ?? ''),
      registeredAddress: TWLocation(companyDetails?.registeredAddress ?? null),
      companyAddress: TWLocation(companyDetails?.companyAddress ?? null),
      vatNumber: VATNumber(companyDetails?.vatNumber ?? ''),
      resultOption: none(),
      showErrors: false,
      submissionInProgress: false,
    );
  }

  bool get allInputsValid =>
      companyAddress.isValid &&
      companyName.isValid &&
      vatNumber.isValid &&
      companyNumber.isValid &&
      registeredAddress.isValid;
}
