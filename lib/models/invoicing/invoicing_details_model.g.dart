// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoicing_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoicingDetails _$InvoicingDetailsFromJson(Map<String, dynamic> json) {
  return InvoicingDetails(
    individualName: json['individualName'] as String,
    bankAccount: json['bankAccount'] as String,
    sortCode: json['sortCode'] as String,
    paymentTerm: json['paymentTerm'] as int,
    companyRegisteredAddress: json['companyRegisteredAddress'] as String,
    companyOrTradingName: json['companyOrTradingName'] as String,
    vatNumber: json['vatNumber'] as String,
    companyNumber: json['companyNumber'] as String,
    invoiceAddress: json['invoiceAddress'] as String,
  );
}

Map<String, dynamic> _$InvoicingDetailsToJson(InvoicingDetails instance) =>
    <String, dynamic>{
      'paymentTerm': instance.paymentTerm,
      'companyRegisteredAddress': instance.companyRegisteredAddress,
      'invoiceAddress': instance.invoiceAddress,
      'vatNumber': instance.vatNumber,
      'individualName': instance.individualName,
      'companyNumber': instance.companyNumber,
      'companyOrTradingName': instance.companyOrTradingName,
      'bankAccount': instance.bankAccount,
      'sortCode': instance.sortCode,
    };
