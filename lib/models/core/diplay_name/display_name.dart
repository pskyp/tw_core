import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'display_name.freezed.dart';

class TWDisplayName {
  final Either<DisplayNameFailure, String> value;

  TWDisplayName(String input) : value = validateDisplayName(input);
  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  bool get isValid => value.isRight();

  static Either<DisplayNameFailure, String> validateDisplayName(String input) {
    return input.length > 5
        ? right(input)
        : left(DisplayNameFailure.shortName());
  }
}

@freezed
class DisplayNameFailure with _$DisplayNameFailure {
  const factory DisplayNameFailure.shortName() = ShortName;
}
