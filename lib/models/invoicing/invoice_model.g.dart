// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return Invoice(
    companyRegisteredAddress: json['companyRegisteredAddress'] as String,
    name: json['name'] as String,
    companyOrTradingName: json['companyOrTradingName'] as String,
    invoiceItems: (json['invoiceItems'] as List)
        ?.map((e) =>
            e == null ? null : InvoiceItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    vatNumber: json['vatNumber'] as String,
    companyNumber: json['companyNumber'] as String,
    invoiceID: json['invoiceID'] as String,
    invoiceNumber: json['invoiceNumber'] as String,
    description: json['description'] as String,
    toID: json['toID'] as String,
    fromID: json['fromID'] as String,
    jobId: json['jobId'] as String,
    dueDate: json['dueDate'] == null
        ? null
        : DateTime.parse(json['dueDate'] as String),
    paymentTerm: json['paymentTerm'] as String,
    amountPayable: (json['amountPayable'] as num)?.toDouble(),
    netAmount: (json['netAmount'] as num)?.toDouble(),
    totalTax: (json['totalTax'] as num)?.toDouble(),
    invoiceStatus: json['invoiceStatus'] == null
        ? null
        : SubbyInvoiceStatus.fromJson(
            json['invoiceStatus'] as Map<String, dynamic>),
    invoiceAddress: json['invoiceAddress'] as String,
    development: json['development'] as String,
  );
}

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
      'netAmount': instance.netAmount,
      'totalTax': instance.totalTax,
      'amountPayable': instance.amountPayable,
      'toID': instance.toID,
      'fromID': instance.fromID,
      'jobId': instance.jobId,
      'invoiceID': instance.invoiceID,
      'development': instance.development,
      'companyRegisteredAddress': instance.companyRegisteredAddress,
      'invoiceAddress': instance.invoiceAddress,
      'vatNumber': instance.vatNumber,
      'name': instance.name,
      'paymentTerm': instance.paymentTerm,
      'companyNumber': instance.companyNumber,
      'companyOrTradingName': instance.companyOrTradingName,
      'description': instance.description,
      'invoiceNumber': instance.invoiceNumber,
      'dueDate': instance.dueDate?.toIso8601String(),
      'invoiceStatus': instance.invoiceStatus?.toJson(),
      'invoiceItems': instance.invoiceItems?.map((e) => e?.toJson())?.toList(),
    };
