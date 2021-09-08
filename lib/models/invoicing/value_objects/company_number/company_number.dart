import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'company_number.freezed.dart';

class CompanyNumber {
  final Either<CompanyNumberFailure, String> value;

  CompanyNumber(String input) : value = validator(input);

  bool get isValid => value.isRight();
  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);
  static Either<CompanyNumberFailure, String> validator(String input) {
    return input.length > 3
        ? right(input)
        : left(CompanyNumberFailure.tooShort(input));
  }
}

@freezed
class CompanyNumberFailure with _$CompanyNumberFailure {
  const factory CompanyNumberFailure.tooShort(String input) = TooShort;
}
