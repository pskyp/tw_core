import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/location/location_model.dart';

part 'subbie_invoicing_details.freezed.dart';
part 'subbie_invoicing_details.g.dart';

@freezed
class SubbieInvoicingDetails with _$SubbieInvoicingDetails {
  factory SubbieInvoicingDetails({
    required String vatNumber,
    required String tradingName,
    required String companyNumber,
    required LocationModel registeredAddress,
    required LocationModel invoicingAddress,
  }) = _SubbieInvoicingDetails;

  factory SubbieInvoicingDetails.fromJson(Map<String, dynamic> json) =>
      _$SubbieInvoicingDetailsFromJson(json);
}
