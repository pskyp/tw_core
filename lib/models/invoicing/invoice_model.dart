import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/invoicing/invoiceItem_model.dart';
import 'package:tw_core/models/invoicing/invoice_status.dart';
part 'invoice_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Invoice {
  final double netAmount, totalTax, amountPayable;
  final String toID,
      fromID,
      jobID,
      invoiceID,
      development,
      companyRegisteredAddress,
      invoiceAddress,
      vatNumber,
      name,
      companyNumber,
      companyOrTradingName,
      description,
      invoiceNumber,
      invoiceType;
  final DateTime invoiceDate, paidOn;
  final int paymentTerm;
  final SubbyInvoiceStatus subbyInvoiceStatus;
  final ContractorInvoiceStatus contractorInvoiceStatus;
  final List<InvoiceItem> invoiceItems;

  Invoice(
      {this.paidOn,
      this.companyRegisteredAddress,
      this.invoiceType,
      this.name,
      this.companyOrTradingName,
      this.invoiceItems,
      this.vatNumber,
      this.companyNumber,
      this.invoiceID,
      this.invoiceNumber,
      this.description,
      this.toID,
      this.fromID,
      this.jobID,
      this.invoiceDate,
      this.paymentTerm,
      this.amountPayable,
      this.netAmount,
      this.totalTax,
      this.subbyInvoiceStatus,
      this.contractorInvoiceStatus,
      this.invoiceAddress,
      this.development});
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}
