import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'invoice_description.freezed.dart';

class InvoiceDescription {
  final Either<InvoiceDescriptionFailure, String> value;
  InvoiceDescription(String input) : value = validator(input);

  bool get isValid => value.isRight();
  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

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
