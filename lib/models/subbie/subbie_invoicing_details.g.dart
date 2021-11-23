// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subbie_invoicing_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubbieInvoicingDetails _$$_SubbieInvoicingDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_SubbieInvoicingDetails(
      vatNumber: json['vatNumber'] as String,
      tradingName: json['tradingName'] as String,
      companyNumber: json['companyNumber'] as String,
      registeredAddress: LocationModel.fromJson(
          json['registeredAddress'] as Map<String, dynamic>),
      invoicingAddress: LocationModel.fromJson(
          json['invoicingAddress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SubbieInvoicingDetailsToJson(
        _$_SubbieInvoicingDetails instance) =>
    <String, dynamic>{
      'vatNumber': instance.vatNumber,
      'tradingName': instance.tradingName,
      'companyNumber': instance.companyNumber,
      'registeredAddress': instance.registeredAddress.toJson(),
      'invoicingAddress': instance.invoicingAddress.toJson(),
    };
