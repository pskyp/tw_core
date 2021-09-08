import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_ref.freezed.dart';

class InvoiceRef {
  final Either<InvoiceRefFailure, String> value;

  InvoiceRef(String input) : value = validator(input);

  bool get isValid => value.isRight();

  static Either<InvoiceRefFailure, String> validator(String input) {
    return input.length > 3
        ? right(input)
        : left(InvoiceRefFailure.invalid(input));
  }
}

@freezed
class InvoiceRefFailure with _$InvoiceRefFailure {
  const factory InvoiceRefFailure.invalid(String value) = InvalidInvoiceRef;
}
