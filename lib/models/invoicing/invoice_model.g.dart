// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
      paidOn: DateTime.parse(json['paidOn'] as String),
      companyRegisteredAddress: json['companyRegisteredAddress'] as String,
      invoiceType: json['invoiceType'] as String,
      name: json['name'] as String,
      companyOrTradingName: json['companyOrTradingName'] as String,
      invoiceItems: (json['invoiceItems'] as List<dynamic>)
          .map((e) => InvoiceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      vatNumber: json['vatNumber'] as String,
      companyNumber: json['companyNumber'] as String,
      invoiceID: json['invoiceID'] as String,
      invoiceReference: json['invoiceReference'] as String,
      description: json['description'] as String,
      toID: json['toID'] as String,
      fromID: json['fromID'] as String,
      jobID: json['jobID'] as String,
      invoiceDate: DateTime.parse(json['invoiceDate'] as String),
      paymentTerm: json['paymentTerm'] as int,
      amountPayable: (json['amountPayable'] as num).toDouble(),
      netAmount: (json['netAmount'] as num).toDouble(),
      totalTax: (json['totalTax'] as num).toDouble(),
      subbyInvoiceStatus: SubbyInvoiceStatus.fromJson(
          json['subbyInvoiceStatus'] as Map<String, dynamic>),
      contractorInvoiceStatus: ContractorInvoiceStatus.fromJson(
          json['contractorInvoiceStatus'] as Map<String, dynamic>),
      invoiceAddress: json['invoiceAddress'] as String,
      development: json['development'] as String,
      toAddress: json['toAddress'] as String,
      toName: json['toName'] as String,
    );

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
      'netAmount': instance.netAmount,
      'totalTax': instance.totalTax,
      'amountPayable': instance.amountPayable,
      'toID': instance.toID,
      'toName': instance.toName,
      'toAddress': instance.toAddress,
      'fromID': instance.fromID,
      'jobID': instance.jobID,
      'invoiceID': instance.invoiceID,
      'development': instance.development,
      'companyRegisteredAddress': instance.companyRegisteredAddress,
      'invoiceAddress': instance.invoiceAddress,
      'vatNumber': instance.vatNumber,
      'name': instance.name,
      'companyNumber': instance.companyNumber,
      'companyOrTradingName': instance.companyOrTradingName,
      'description': instance.description,
      'invoiceReference': instance.invoiceReference,
      'invoiceType': instance.invoiceType,
      'invoiceDate': instance.invoiceDate.toIso8601String(),
      'paidOn': instance.paidOn.toIso8601String(),
      'paymentTerm': instance.paymentTerm,
      'subbyInvoiceStatus': instance.subbyInvoiceStatus.toJson(),
      'contractorInvoiceStatus': instance.contractorInvoiceStatus.toJson(),
      'invoiceItems': instance.invoiceItems.map((e) => e.toJson()).toList(),
    };
