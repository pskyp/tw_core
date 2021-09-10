import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/invoicing/invoiceItem_model.dart';
import 'package:tw_core/models/invoicing/invoice_status.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';

part 'invoice_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Invoice {
  final double netAmount, totalTax, amountPayable;
  final TWUser subbieTWUser;
  final TWUser contractorTWUser;
  final String companyNumber;

  final String jobID,
      invoiceID,
      development,
      companyRegisteredAddress,
      invoiceAddress,
      vatNumber,
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
    required this.contractorTWUser,
    required this.subbieTWUser,
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
    required this.invoiceAddress,
    required this.development,
  });
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}
