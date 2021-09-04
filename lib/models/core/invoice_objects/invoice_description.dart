import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_description.freezed.dart';

class InvoiceDescription {
  final Either<InvoiceDescriptionFailure, String> value;
  InvoiceDescription(String input) : value = validator(input);

  static Either<InvoiceDescriptionFailure, String> validator(String input) {
    return input.length > 3
        ? right(input)
        : left(InvoiceDescriptionFailure.shortDescription(input));
  }
}

@freezed
class InvoiceDescriptionFailure with _$InvoiceDescriptionFailure {
  const factory InvoiceDescriptionFailure.shortDescription(String value) =
      ShortInvoiceDescription;
}
