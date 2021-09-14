import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tw_min_length_string.freezed.dart';

class TWMinLengthString {
  final Either<TWMinLengthStringFailure, String> value;

  TWMinLengthString(String input, int minLength)
      : value = input.length > minLength
            ? right(input)
            : left(TWMinLengthStringFailure.tooShort(input));
}

@freezed
class TWMinLengthStringFailure with _$TWMinLengthStringFailure {
  const factory TWMinLengthStringFailure.tooShort(String val) = TooShort;
}
