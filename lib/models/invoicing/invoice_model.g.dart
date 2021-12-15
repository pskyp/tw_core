// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Invoice _$$_InvoiceFromJson(Map<String, dynamic> json) => _$_Invoice(
      contractorTWUser:
          TWUser.fromJson(json['contractorTWUser'] as Map<String, dynamic>),
      subbieTWUser:
          TWUser.fromJson(json['subbieTWUser'] as Map<String, dynamic>),
      paidOn: DateTime.parse(json['paidOn'] as String),
      companyRegisteredAddress: json['companyRegisteredAddress'] as String,
      invoiceType: json['invoiceType'] as String,
      companyOrTradingName: json['companyOrTradingName'] as String,
      invoiceItems: (json['invoiceItems'] as List<dynamic>)
          .map((e) => InvoiceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      vatNumber: json['vatNumber'] as String,
      companyNumber: json['companyNumber'] as String,
      invoiceID: json['invoiceID'] as String,
      invoiceReference: json['invoiceReference'] as String,
      description: json['description'] as String,
      jobID: json['jobID'] as String,
      invoiceDate: DateTime.parse(json['invoiceDate'] as String),
      paymentTerm: json['paymentTerm'] as int,
      amountPayable: (json['amountPayable'] as num).toDouble(),
      netAmount: (json['netAmount'] as num).toDouble(),
      totalTax: (json['totalTax'] as num).toDouble(),
      status: $enumDecode(_$InvoiceStatusEnumMap, json['status']),
      invoiceAddress: json['invoiceAddress'] as String,
      development: json['development'] as String,
    );

Map<String, dynamic> _$$_InvoiceToJson(_$_Invoice instance) =>
    <String, dynamic>{
      'contractorTWUser': instance.contractorTWUser.toJson(),
      'subbieTWUser': instance.subbieTWUser.toJson(),
      'paidOn': instance.paidOn.toIso8601String(),
      'companyRegisteredAddress': instance.companyRegisteredAddress,
      'invoiceType': instance.invoiceType,
      'companyOrTradingName': instance.companyOrTradingName,
      'invoiceItems': instance.invoiceItems.map((e) => e.toJson()).toList(),
      'vatNumber': instance.vatNumber,
      'companyNumber': instance.companyNumber,
      'invoiceID': instance.invoiceID,
      'invoiceReference': instance.invoiceReference,
      'description': instance.description,
      'jobID': instance.jobID,
      'invoiceDate': instance.invoiceDate.toIso8601String(),
      'paymentTerm': instance.paymentTerm,
      'amountPayable': instance.amountPayable,
      'netAmount': instance.netAmount,
      'totalTax': instance.totalTax,
      'status': _$InvoiceStatusEnumMap[instance.status],
      'invoiceAddress': instance.invoiceAddress,
      'development': instance.development,
    };

const _$InvoiceStatusEnumMap = {
  InvoiceStatus.draft: 'draft',
  InvoiceStatus.sent: 'sent',
  InvoiceStatus.unseen: 'unseen',
  InvoiceStatus.seen: 'seen',
  InvoiceStatus.approved: 'approved',
  InvoiceStatus.rejected: 'rejected',
  InvoiceStatus.paid: 'paid',
  InvoiceStatus.reconciled: 'reconciled',
  InvoiceStatus.overdue: 'overdue',
};
