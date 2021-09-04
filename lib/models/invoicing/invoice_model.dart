import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/invoicing/invoiceItem_model.dart';
import 'package:tw_core/models/invoicing/invoice_status.dart';
import 'package:tw_core/models/person/person.dart';
part 'invoice_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Invoice {
  final double netAmount, totalTax, amountPayable;
  final Person subbieAsPerson;
  final Person contractorAsPerson;

  final String toAddress,
      jobID,
      invoiceID,
      development,
      companyRegisteredAddress,
      invoiceAddress,
      vatNumber,
      companyNumber,
      companyOrTradingName,
      description,
      invoiceReference,
      invoiceType;
  final DateTime invoiceDate, paidOn;
  final int paymentTerm;
  final InvoiceStatus status;
  // final SubbyInvoiceStatus subbyInvoiceStatus;
  // final ContractorInvoiceStatus contractorInvoiceStatus;
  final List<InvoiceItem> invoiceItems;

  Invoice({
    required this.contractorAsPerson,
    required this.subbieAsPerson,
    required this.paidOn,
    required this.companyRegisteredAddress,
    required this.invoiceType,
    required this.companyOrTradingName,
    required this.invoiceItems,
    required this.vatNumber,
    required this.companyNumber,
    required this.invoiceID,
    required this.invoiceReference,
    required this.description,
    required this.jobID,
    required this.invoiceDate,
    required this.paymentTerm,
    required this.amountPayable,
    required this.netAmount,
    required this.totalTax,
    required this.status,
    // required this.subbyInvoiceStatus,
    // required this.contractorInvoiceStatus,
    required this.invoiceAddress,
    required this.development,
    required this.toAddress,
  });
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}
