import 'package:json_annotation/json_annotation.dart';
part 'invoicing_details_model.g.dart';

@JsonSerializable(explicitToJson: true)
class InvoicingDetails {
  final int paymentTerm;
  final String companyRegisteredAddress,
      invoiceAddress,
      vatNumber,
      individualName,
      companyNumber,
      companyOrTradingName,
      bankAccount,
      sortCode;

  InvoicingDetails({
    required this.individualName,
    required this.bankAccount,
    required this.sortCode,
    required this.paymentTerm,
    required this.companyRegisteredAddress,
    required this.companyOrTradingName,
    required this.vatNumber,
    required this.companyNumber,
    required this.invoiceAddress,
  });
  Map<String, dynamic> toJson() => _$InvoicingDetailsToJson(this);
  factory InvoicingDetails.fromJson(Map<String, dynamic> json) =>
      _$InvoicingDetailsFromJson(json);
}
