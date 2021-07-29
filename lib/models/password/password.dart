import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'password.freezed.dart';

class Password extends Equatable {
  final Either<PasswordValueFailure, String> value;

  Password(String input) : value = validatePassword(input);

  static Either<PasswordValueFailure, String> validatePassword(String input) {
    print(input.length);
    return input.length > 5
        ? right(input)
        : left(PasswordValueFailure.shortPassword(input));
  }

  String getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  @override
  List<Object> get props => [value];
}

@freezed
class PasswordValueFailure with _$PasswordValueFailure {
  const factory PasswordValueFailure.shortPassword(String value) =
      ShortPassword;
}
