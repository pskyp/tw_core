import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'tw_number.freezed.dart';

class TWNumber {
  static const Job_Daily_Rate_Min = 1;
  static const Job_Required_Subbies_Min = 1;
  final Either<TWNumberFailure, int> value;

  TWNumber({
    required int input,
    required int minValue,
  }) : value = _validator(
          input: input,
          minValue: minValue,
        );

  bool get isValid => value.isRight();
  int getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  static Either<TWNumberFailure, int> _validator({
    required int input,
    required int minValue,
  }) {
    return input > minValue
        ? right(input)
        : left(TWNumberFailure.lessThanMinimum(
            value: input,
            minValue: minValue,
          ));
  }
}

@freezed
class TWNumberFailure with _$TWNumberFailure {
  const factory TWNumberFailure.lessThanMinimum({
    required int value,
    required int minValue,
  }) = LessThanMinimum;
}
