// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoiceItem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceItem _$$_InvoiceItemFromJson(Map<String, dynamic> json) =>
    _$_InvoiceItem(
      itemName: json['itemName'] as String,
      description: json['description'] as String,
      qty: (json['qty'] as num).toDouble(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      taxRate: (json['taxRate'] as num).toDouble(),
      receiptPhotoId: json['receiptPhotoId'] as String?,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_InvoiceItemToJson(_$_InvoiceItem instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'description': instance.description,
      'qty': instance.qty,
      'unitPrice': instance.unitPrice,
      'taxRate': instance.taxRate,
      'receiptPhotoId': instance.receiptPhotoId,
      'date': instance.date.toIso8601String(),
    };
