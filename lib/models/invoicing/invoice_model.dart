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
      jobId,
      invoiceID,
      development,
      companyRegisteredAddress,
      invoiceAddress,
      vatNumber,
      name,
      paymentTerm,
      companyNumber,
      companyOrTradingName;
  final String description, invoiceNumber, invoiceType;
  final DateTime dueDate;

  final SubbyInvoiceStatus invoiceStatus;
  final List<InvoiceItem> invoiceItems;

  Invoice(
      {this.companyRegisteredAddress,
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
      this.jobId,
      this.dueDate,
      this.paymentTerm,
      this.amountPayable,
      this.netAmount,
      this.totalTax,
      this.invoiceStatus,
      this.invoiceAddress,
      this.development});
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}
