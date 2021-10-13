import 'package:image_picker/image_picker.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invoiceItem_model.g.dart';

class ReceiptPhoto {
  final XFile file;
  final String id;

  ReceiptPhoto({
    required this.file,
    required this.id,
  });
}

@JsonSerializable(explicitToJson: true)
class InvoiceItem {
  final String itemName;
  final String descritpion;
  // final DateTime date;
  final double qty;
  final double unitPrice;
  final double taxRate;
  final String? receiptPhotoId;
  // final double total;
  // String recieptImageURL;

  InvoiceItem({
    required this.itemName,
    required this.descritpion,
    required this.qty,
    required this.unitPrice,
    required this.taxRate,
    required this.receiptPhotoId,
    // required this.total,
    // required this.recieptImageURL,
  });
  Map<String, dynamic> toJson() => _$InvoiceItemToJson(this);
  factory InvoiceItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceItemFromJson(json);
}
