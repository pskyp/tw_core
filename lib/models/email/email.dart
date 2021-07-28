import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'email.freezed.dart';

class EmailAddress extends Equatable {
  final Either<EmailValueFailures, String> value;

  const EmailAddress._(this.value);

  factory EmailAddress(String input) {
    return EmailAddress._(validate(input));
  }

  static Either<EmailValueFailures, String> validate(
    final String input,
  ) {
    final RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
    );

    return emailRegExp.hasMatch(input)
        ? right(input)
        : left(EmailValueFailures.invalidEmail(input));
  }

  @override
  List<Object> get props => [value];
}

@freezed
class EmailValueFailures with _$EmailValueFailures {
  const factory EmailValueFailures.invalidEmail(String value) = InvalidEmail;
}
