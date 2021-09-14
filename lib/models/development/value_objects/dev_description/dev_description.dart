import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'dev_description.freezed.dart';

class DevDescription {
  final Either<DevDescriptionFailure, String> value;

  DevDescription(String input) : value = validator(input);

  bool get isValid => value.isRight();
  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  static Either<DevDescriptionFailure, String> validator(String input) {
    return input.length > 3
        ? right(input)
        : left(DevDescriptionFailure.tooShort(input));
  }
}

@freezed
class DevDescriptionFailure with _$DevDescriptionFailure {
  const factory DevDescriptionFailure.tooShort(val) = TooShort;
}
