import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'subbie_required.freezed.dart';

class NumberOfSubbies extends Equatable {
  final Either<NumberOfSubbiesFailures, int> value;

  const NumberOfSubbies._(this.value);

  factory NumberOfSubbies(int input) {
    return NumberOfSubbies._(validate(input));
  }

  int getOrCrash() => value.fold((l) => throw UnexpectedValueError(), (r) => r);

  static Either<NumberOfSubbiesFailures, int> validate(final int input) {
    return input > 0
        ? right(input)
        : left(NumberOfSubbiesFailures.notEnoughSubbies(input));
  }

  @override
  List<Object> get props => [value];
}

@freezed
class NumberOfSubbiesFailures with _$NumberOfSubbiesFailures {
  const factory NumberOfSubbiesFailures.notEnoughSubbies(int value) =
      InvalidEmail;
}
