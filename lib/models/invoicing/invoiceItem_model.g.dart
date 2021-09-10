// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoiceItem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceItem _$InvoiceItemFromJson(Map<String, dynamic> json) => InvoiceItem(
      itemName: json['itemName'] as String,
      descritpion: json['descritpion'] as String,
      qty: (json['qty'] as num).toDouble(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      taxRate: (json['taxRate'] as num).toDouble(),
    );

Map<String, dynamic> _$InvoiceItemToJson(InvoiceItem instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'descritpion': instance.descritpion,
      'qty': instance.qty,
      'unitPrice': instance.unitPrice,
      'taxRate': instance.taxRate,
    };
