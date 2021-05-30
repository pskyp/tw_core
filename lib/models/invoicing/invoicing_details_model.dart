import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/invoicing/invoiceItem_model.dart';
import 'package:tw_core/models/invoicing/invoice_status.dart';
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
    this.individualName,
    this.bankAccount,
    this.sortCode,
    this.paymentTerm,
    this.companyRegisteredAddress,
    this.companyOrTradingName,
    this.vatNumber,
    this.companyNumber,
    this.invoiceAddress,
  });
  Map<String, dynamic> toJson() => _$InvoicingDetailsToJson(this);
  factory InvoicingDetails.fromJson(Map<String, dynamic> json) =>
      _$InvoicingDetailsFromJson(json);
}
