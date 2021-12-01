import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'company_name.freezed.dart';

class TWCompanyName {
  final Either<CompanyNameFailure, String> value;

  TWCompanyName(String input) : value = validateCompanyName(input);
  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  bool get isValid => value.isRight();

  static Either<CompanyNameFailure, String> validateCompanyName(String input) {
    return input.length > 5
        ? right(input)
        : left(CompanyNameFailure.shortCompanyName(input));
  }
}

@freezed
class CompanyNameFailure with _$CompanyNameFailure {
  const factory CompanyNameFailure.shortCompanyName(String input) =
      ShortCompanyName;
}
