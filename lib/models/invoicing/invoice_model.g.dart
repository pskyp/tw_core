// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return Invoice(
    invoiceItems: (json['invoiceItems'] as List)
        ?.map((e) =>
            e == null ? null : InvoiceItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    invoiceID: json['invoiceID'] as String,
    invoiceNumber: json['invoiceNumber'] as String,
    description: json['description'] as String,
    toID: json['toID'] as String,
    fromID: json['fromID'] as String,
    jobId: json['jobId'] as String,
    dueDate: json['dueDate'] == null
        ? null
        : DateTime.parse(json['dueDate'] as String),
    paymentTerm: json['paymentTerm'] as int,
    amountPayable: (json['amountPayable'] as num)?.toDouble(),
    netAmount: (json['netAmount'] as num)?.toDouble(),
    totalTax: (json['totalTax'] as num)?.toDouble(),
    invoiceStatus: json['invoiceStatus'] == null
        ? null
        : SubbyInvoiceStatus.fromJson(
            json['invoiceStatus'] as Map<String, dynamic>),
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
      'description': instance.description,
      'invoiceNumber': instance.invoiceNumber,
      'dueDate': instance.dueDate?.toIso8601String(),
      'paymentTerm': instance.paymentTerm,
      'invoiceStatus': instance.invoiceStatus?.toJson(),
      'invoiceItems': instance.invoiceItems?.map((e) => e?.toJson())?.toList(),
    };
