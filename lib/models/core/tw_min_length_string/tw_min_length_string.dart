import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'tw_min_length_string.freezed.dart';

class TWString {
  static const DEV_TITLE_ML = 3;
  static const DOC_INSTRUCTIONS_ML = 3;

  final Either<TWStringFailure, String> value;

  TWString(String input, int minLength)
      : value = input.length > minLength
            ? right(input)
            : left(TWStringFailure.tooShort(input));

  bool get isValid => value.isRight();
  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);
}

@freezed
class TWStringFailure with _$TWStringFailure {
  const factory TWStringFailure.tooShort(String val) = TooShort;
}
