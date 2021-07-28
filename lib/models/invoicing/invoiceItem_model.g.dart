// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoiceItem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceItem _$InvoiceItemFromJson(Map<String, dynamic> json) => InvoiceItem(
      itemID: json['itemID'] as String,
      descritpion: json['descritpion'] as String,
      date: DateTime.parse(json['date'] as String),
      qty: (json['qty'] as num).toDouble(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      taxRate: (json['taxRate'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
      recieptImageURL: json['recieptImageURL'] as String,
    );

Map<String, dynamic> _$InvoiceItemToJson(InvoiceItem instance) =>
    <String, dynamic>{
      'itemID': instance.itemID,
      'descritpion': instance.descritpion,
      'date': instance.date.toIso8601String(),
      'qty': instance.qty,
      'unitPrice': instance.unitPrice,
      'taxRate': instance.taxRate,
      'total': instance.total,
      'recieptImageURL': instance.recieptImageURL,
    };
