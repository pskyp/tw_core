import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/invoicing/invoiceItem_model.dart';
import 'package:tw_core/models/invoicing/invoice_status.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/work/work.dart';

part 'invoice_model.freezed.dart';
part 'invoice_model.g.dart';

@freezed
class SoleTraderDetails with _$SoleTraderDetails {
  factory SoleTraderDetails({
    required String individualName,
    required String? businessName,
    required String correspondenceAddress,
  }) = _SoleTraderDetails;

  factory SoleTraderDetails.fromJson(Map<String, dynamic> json) =>
      _$SoleTraderDetailsFromJson(json);
}

@freezed
class LimitedCompanyDetails with _$LimitedCompanyDetails {
  factory LimitedCompanyDetails({
    required String companyName,
    required String location,
    required String companyNumber,
    required String? vatNumber,
    required LocationModel invoiceAddress,
    required LocationModel companyRegisteredAddress,
  }) = _LimitedCompanyDetails;

  factory LimitedCompanyDetails.fromJson(Map<String, dynamic> json) =>
      _$LimitedCompanyDetailsFromJson(json);
}

@freezed
// @CustomEmployeeDetailsConverter()
class Invoice with _$Invoice {
  const factory Invoice({
    required BidIdentifier bidIdentifier,
    required DateTime paidOn,
    @JsonKey(
      name: 'employeeDetails',
      fromJson: employeeDetailsFromJson,
      toJson: employeeDetailsToJson,
    )
        required Either<SoleTraderDetails, LimitedCompanyDetails>
            employeeDetails,
    required List<InvoiceItem> invoiceItems,
    required String invoiceID,
    required String invoiceReference,
    required String description,
    required DateTime invoiceDate,
    required int paymentTerm,
    required double amountPayable,
    required double netAmount,
    required double totalTax,
    required InvoiceStatus status,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}

Either<SoleTraderDetails, LimitedCompanyDetails> employeeDetailsFromJson(
  Map<String, dynamic> json,
) {
  if (json.containsKey('companyNumber')) {
    return right(LimitedCompanyDetails.fromJson(json));
  } else
    return left(SoleTraderDetails.fromJson(json));
}

Map<String, dynamic> employeeDetailsToJson(
  Either<SoleTraderDetails, LimitedCompanyDetails> employeeDetails,
) {
  return employeeDetails.fold(
    (soleTrader) {
      return soleTrader.toJson();
    },
    (limitedCompany) {
      return limitedCompany.toJson();
    },
  );
}
