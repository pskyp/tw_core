import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/errors.dart';

part 'tw_number.freezed.dart';

class TWNumber {
  static const Job_Daily_Rate_Min = 40;
  static const Job_Daily_Rate_Max = 500;
  static const Job_Hourly_Rate_Min = 8;
  static const Job_Hourly_Rate_Max = 60;

  static const Job_Required_Subbies_Min = 1;
  static const Job_Required_Subbies_Max = 100;

  final Either<TWNumberFailure, int> value;

  TWNumber({
    required int input,
    required int minValue,
    required int maxValue,
  }) : value = _validator(
          input: input,
          minValue: minValue,
          maxValue: maxValue,
        );

  bool get isValid => value.isRight();
  int getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);
  int get getNumber => value.fold((l) => l.value, id);

  static Either<TWNumberFailure, int> _validator({
    required int input,
    required int minValue,
    required int maxValue,
  }) {
    return input < minValue
        ? left(TWNumberFailure.lessThanMinimum(
            value: input,
            failureMessage: 'less than minimum',
          ))
        : input > maxValue
            ? left(TWNumberFailure.moreThanMaximum(
                value: input,
                failureMessage: 'more than maximum',
              ))
            : right(input);
  }
}

@freezed
class TWNumberFailure with _$TWNumberFailure {
  const factory TWNumberFailure.lessThanMinimum({
    required int value,
    required String failureMessage,
  }) = LessThanMinimum;

  const factory TWNumberFailure.moreThanMaximum({
    required int value,
    required String failureMessage,
  }) = MoreThanMaximum;
}
