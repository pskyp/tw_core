import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/diplay_name/display_name.dart';
import 'package:tw_core/models/errors.dart';

part 'company_name.freezed.dart';

class TWCompanyName {
  final Either<DisplayNameFailure, String> value;

  TWCompanyName(String input) : value = validateCompanyName(input);
  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  bool get isValid => value.isRight();

  static Either<DisplayNameFailure, String> validateCompanyName(String input) {
    return input.length > 5
        ? right(input)
        : left(DisplayNameFailure.shortName());
  }
}

@freezed
class CompanyNameFailure with _$CompanyNameFailure {
  const factory CompanyNameFailure.shortCompanyName() = ShortCompanyName;
}
