// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoiceItem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceItem _$InvoiceItemFromJson(Map<String, dynamic> json) {
  return InvoiceItem(
    descritpion: json['descritpion'] as String,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    qty: (json['qty'] as num)?.toDouble(),
    unitPrice: (json['unitPrice'] as num)?.toDouble(),
    taxRate: (json['taxRate'] as num)?.toDouble(),
    total: (json['total'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$InvoiceItemToJson(InvoiceItem instance) =>
    <String, dynamic>{
      'descritpion': instance.descritpion,
      'date': instance.date?.toIso8601String(),
      'qty': instance.qty,
      'unitPrice': instance.unitPrice,
      'taxRate': instance.taxRate,
      'total': instance.total,
    };
