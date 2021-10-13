import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoiceItem_model.freezed.dart';
part 'invoiceItem_model.g.dart';

@freezed
class InvoiceItem with _$InvoiceItem {
  const InvoiceItem._();
  const factory InvoiceItem({
    required String itemName,
    required String description,
    required double qty,
    required double unitPrice,
    required double taxRate,
    required String? receiptPhotoId,
    required DateTime date,
  }) = _InvoiceItem;

  factory InvoiceItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceItemFromJson(json);

  // double get total => this.unitPrice * qty;
}
