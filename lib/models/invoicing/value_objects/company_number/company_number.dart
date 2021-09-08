import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_number.freezed.dart';

class CompanyNumber {
  final Either<CompanyNumberFailure, String> value;

  CompanyNumber(String input) : value = validator(input);

  bool get isValid => value.isRight();

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
