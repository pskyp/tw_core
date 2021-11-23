import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/location/location_model.dart';

part 'contractor_company_details.freezed.dart';
part 'contractor_company_details.g.dart';

@freezed
class ContractorCompanyDetails with _$ContractorCompanyDetails {
  factory ContractorCompanyDetails({
    required String companyName,
    required String companyNumber,
    required String vatNumber,
    required LocationModel registeredAddress,
    required LocationModel companyAddress,
  }) = _ContractorCompanyDetails;

  factory ContractorCompanyDetails.fromJson(Map<String, dynamic> json) =>
      _$ContractorCompanyDetailsFromJson(json);
}
