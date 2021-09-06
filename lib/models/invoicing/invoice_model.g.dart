// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
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
      status: _$enumDecode(_$InvoiceStatusEnumMap, json['status']),
      invoiceAddress: json['invoiceAddress'] as String,
      development: json['development'] as String,
    );

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
      'netAmount': instance.netAmount,
      'totalTax': instance.totalTax,
      'amountPayable': instance.amountPayable,
      'subbieTWUser': instance.subbieTWUser.toJson(),
      'contractorTWUser': instance.contractorTWUser.toJson(),
      'jobID': instance.jobID,
      'invoiceID': instance.invoiceID,
      'development': instance.development,
      'companyRegisteredAddress': instance.companyRegisteredAddress,
      'invoiceAddress': instance.invoiceAddress,
      'vatNumber': instance.vatNumber,
      'companyNumber': instance.companyNumber,
      'companyOrTradingName': instance.companyOrTradingName,
      'description': instance.description,
      'invoiceReference': instance.invoiceReference,
      'invoiceType': instance.invoiceType,
      'invoiceDate': instance.invoiceDate.toIso8601String(),
      'paidOn': instance.paidOn.toIso8601String(),
      'paymentTerm': instance.paymentTerm,
      'status': _$InvoiceStatusEnumMap[instance.status],
      'invoiceItems': instance.invoiceItems.map((e) => e.toJson()).toList(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

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
