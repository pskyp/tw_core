import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../errors.dart';

part 'phone.freezed.dart';

class TWPhone with EquatableMixin {
  final Either<PhoneValueFailure, String> value;

  TWPhone(String input) : value = validatePhone(input);

  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  static Either<PhoneValueFailure, String> validatePhone(String input) {
    return input.length > 10
        ? right(input)
        : left(PhoneValueFailure.invalidPhone(input));
  }

  @override
  List<Object?> get props => [value];
}

@freezed
class PhoneValueFailure with _$PhoneValueFailure {
  const factory PhoneValueFailure.invalidPhone(String value) = InvalidPhone;
}
