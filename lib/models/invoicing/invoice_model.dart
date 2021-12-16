import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/invoicing/invoiceItem_model.dart';
import 'package:tw_core/models/invoicing/invoice_status.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';

part 'invoice_model.freezed.dart';
part 'invoice_model.g.dart';

@freezed
class IndividualInvoiceDetails with _$IndividualInvoiceDetails {
  factory IndividualInvoiceDetails({
    required String companyName,
    required String companyNumber,
    required String registeredAddress,
  }) = _IndividualInvoiceDetails;
}

@freezed
class CompanyInvoiceDetails with _$CompanyInvoiceDetails {
  factory CompanyInvoiceDetails({
    required String name,
    required String location,
  }) = _CompanyInvoiceDetails;
}

@freezed
class Invoice with _$Invoice {
  const factory Invoice({
    required TWUser contractorTWUser,
    required TWUser subbieTWUser,
    required DateTime paidOn,
    required String companyRegisteredAddress,
    required String invoiceType,
    required String companyOrTradingName,
    required List<InvoiceItem> invoiceItems,
    required String vatNumber,
    required String companyNumber,
    required String invoiceID,
    required String invoiceReference,
    required String description,
    required String jobID,
    required DateTime invoiceDate,
    required int paymentTerm,
    required double amountPayable,
    required double netAmount,
    required double totalTax,
    required InvoiceStatus status,
    required String invoiceAddress,
    required String development,
  }) = _Invoice;

  // Map<String, dynamic> toJson() => _$InvoiceToJson(this);
  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}

// final double netAmount, totalTax, amountPayable;
// final TWUser subbieTWUser;
// final TWUser contractorTWUser;
// final String companyNumber;
//
// final String jobID,
//     invoiceID,
//     development,
//     companyRegisteredAddress,
//     invoiceAddress,
//     vatNumber,
//     companyOrTradingName,
//     description,
//     invoiceReference,
//     invoiceType;
// final DateTime invoiceDate, paidOn;
// final int paymentTerm;
// final InvoiceStatus status;
// final List<InvoiceItem> invoiceItems;
// // final SubbyInvoiceStatus subbyInvoiceStatus;
// // final ContractorInvoiceStatus contractorInvoiceStatus;
