import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'payment_term.freezed.dart';

class PaymentTerm {
  final Either<PaymentTermFailure, String> value;

  PaymentTerm(String input) : value = validator(input);

  bool get isValid => value.isRight();

  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  static Either<PaymentTermFailure, String> validator(String input) {
    if (input.isEmpty) return left(PaymentTermFailure.invalid(input));
    return RegExp(r'\d').hasMatch(input)
        ? right(input)
        : left(PaymentTermFailure.invalid(input));
  }
}

@freezed
class PaymentTermFailure with _$PaymentTermFailure {
  const factory PaymentTermFailure.invalid(String val) = Invalid;
}
