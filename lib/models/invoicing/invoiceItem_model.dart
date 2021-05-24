import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invoiceItem_model.g.dart';

@JsonSerializable(explicitToJson: true)
class InvoiceItem {
  final String descritpion;
  final DateTime date;
  final double qty;
  final double unitPrice;
  final double taxRate;
  final double total;

  InvoiceItem({
    this.descritpion,
    this.date,
    this.qty,
    this.unitPrice,
    this.taxRate,
    this.total,
  });
  Map<String, dynamic> toJson() => _$InvoiceItemToJson(this);
  factory InvoiceItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceItemFromJson(json);
}
