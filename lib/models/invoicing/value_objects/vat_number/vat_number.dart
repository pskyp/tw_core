import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'vat_number.freezed.dart';

class VATNumber {
  final Either<VATNumberFailure, String> value;

  VATNumber(String input) : value = validator(input);

  bool get isValid => value.isRight();
  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);
  static Either<VATNumberFailure, String> validator(String input) {
    return input.length > 3
        ? right(input)
        : left(VATNumberFailure.invalid(input));
  }
}

@freezed
class VATNumberFailure with _$VATNumberFailure {
  const factory VATNumberFailure.invalid(String val) = Ivalid;
}
