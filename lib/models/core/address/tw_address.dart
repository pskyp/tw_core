import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'tw_address.freezed.dart';

class TWAddress {
  final Either<TWAddressFailure, String> value;
  TWAddress(String input) : value = validator(input);
  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);
  static Either<TWAddressFailure, String> validator(String input) {
    return input.length > 0
        ? right(input)
        : left(TWAddressFailure.tooshort(input));
  }
}

@freezed
class TWAddressFailure with _$TWAddressFailure {
  const factory TWAddressFailure.tooshort(String value) = ShortAddress;
}
