import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tw_address.freezed.dart';

class TWAddress {
  final Either<TWAddressFailure, String> value;
  TWAddress(String input) : value = validator(input);

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
