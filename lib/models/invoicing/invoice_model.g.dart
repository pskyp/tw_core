// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SoleTraderDetails _$$_SoleTraderDetailsFromJson(Map<String, dynamic> json) =>
    _$_SoleTraderDetails(
      individualName: json['individualName'] as String,
      businessName: json['businessName'] as String?,
      correspondenceAddress: LocationModel.fromJson(
          json['correspondenceAddress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SoleTraderDetailsToJson(
        _$_SoleTraderDetails instance) =>
    <String, dynamic>{
      'individualName': instance.individualName,
      'businessName': instance.businessName,
      'correspondenceAddress': instance.correspondenceAddress.toJson(),
    };

_$_LimitedCompanyDetails _$$_LimitedCompanyDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_LimitedCompanyDetails(
      companyName: json['companyName'] as String,
      location: json['location'] as String,
      companyNumber: json['companyNumber'] as String,
      vatNumber: json['vatNumber'] as String?,
      invoiceAddress: LocationModel.fromJson(
          json['invoiceAddress'] as Map<String, dynamic>),
      companyRegisteredAddress: LocationModel.fromJson(
          json['companyRegisteredAddress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LimitedCompanyDetailsToJson(
        _$_LimitedCompanyDetails instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'location': instance.location,
      'companyNumber': instance.companyNumber,
      'vatNumber': instance.vatNumber,
      'invoiceAddress': instance.invoiceAddress.toJson(),
      'companyRegisteredAddress': instance.companyRegisteredAddress.toJson(),
    };

_$_Invoice _$$_InvoiceFromJson(Map<String, dynamic> json) => _$_Invoice(
      bidIdentifier:
          BidIdentifier.fromJson(json['bidIdentifier'] as Map<String, dynamic>),
      paidOn: DateTime.parse(json['paidOn'] as String),
      employeeDetails: employeeDetailsFromJson(
          json['employeeDetails'] as Map<String, dynamic>),
      invoiceItems: (json['invoiceItems'] as List<dynamic>)
          .map((e) => InvoiceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      invoiceID: json['invoiceID'] as String,
      invoiceReference: json['invoiceReference'] as String,
      description: json['description'] as String,
      invoiceDate: DateTime.parse(json['invoiceDate'] as String),
      paymentTerm: json['paymentTerm'] as int,
      amountPayable: (json['amountPayable'] as num).toDouble(),
      netAmount: (json['netAmount'] as num).toDouble(),
      totalTax: (json['totalTax'] as num).toDouble(),
      status: $enumDecode(_$InvoiceStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$_InvoiceToJson(_$_Invoice instance) =>
    <String, dynamic>{
      'bidIdentifier': instance.bidIdentifier.toJson(),
      'paidOn': instance.paidOn.toIso8601String(),
      'employeeDetails': employeeDetailsToJson(instance.employeeDetails),
      'invoiceItems': instance.invoiceItems.map((e) => e.toJson()).toList(),
      'invoiceID': instance.invoiceID,
      'invoiceReference': instance.invoiceReference,
      'description': instance.description,
      'invoiceDate': instance.invoiceDate.toIso8601String(),
      'paymentTerm': instance.paymentTerm,
      'amountPayable': instance.amountPayable,
      'netAmount': instance.netAmount,
      'totalTax': instance.totalTax,
      'status': _$InvoiceStatusEnumMap[instance.status],
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
