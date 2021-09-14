import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'dev_title.freezed.dart';

class DevTitle {
  final Either<DevTitleFailure, String> value;

  DevTitle(String input) : value = validator(input);

  bool get isValid => value.isRight();
  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  static Either<DevTitleFailure, String> validator(String input) {
    return input.length > 3
        ? right(input)
        : left(DevTitleFailure.tooShort(input));
  }
}

@freezed
class DevTitleFailure with _$DevTitleFailure {
  const factory DevTitleFailure.tooShort(String val) = TooShort;
}
