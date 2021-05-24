import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/invoicing/invoiceItem_model.dart';
import 'package:tw_core/models/invoicing/invoice_status.dart';
part 'invoice_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Invoice {
  final double netAmount, totalTax, amountPayable;
  final String toID, fromID, jobId, invoiceID;
  final String description, invoiceNumber;
  final DateTime dueDate;
  final int paymentTerm;
 final SubbyInvoiceStatus invoiceStatus;
  final List<InvoiceItem> invoiceItems;

  Invoice( {this.invoiceItems, 
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
      this.invoiceStatus});
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}
