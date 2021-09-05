import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'date_validator.freezed.dart';

class SupplementTimeLine {
  final SupplementDate startDate;
  final SupplementDate endDate;

  SupplementTimeLine({required DateTime startDate, required DateTime endDate})
      : this.startDate = startDate.isBefore(endDate)
            ? SupplementDate(right(startDate))
            : SupplementDate(
                left(SupplementDateValidators.startDateValidation(startDate))),
        this.endDate = endDate.isAfter(startDate)
            ? SupplementDate(right(endDate))
            : SupplementDate(
                left(SupplementDateValidators.endDateValidation(endDate)));

  SupplementTimeLine copyWith({
    DateTime? startDate,
    DateTime? endDate,
  }) {
    return SupplementTimeLine(
      startDate: startDate ?? this.startDate.value.fold((l) => l.date, id),
      endDate: endDate ?? this.endDate.value.fold((l) => l.date, id),
    );
  }
}

@freezed
class SupplementDateValidators with _$SupplementDateValidators {
  const factory SupplementDateValidators.startDateValidation(DateTime date) =
      StartDateValidation;
  const factory SupplementDateValidators.endDateValidation(DateTime date) =
      EndDateValidation;
}

class SupplementDate {
  final Either<SupplementDateValidators, DateTime> value;
  SupplementDate(this.value);

  getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  get isValid => value.isRight();

  String get asString => value.fold(
        (l) => DateFormat('yyyy-MM-dd').format(l.date),
        (r) => DateFormat('yyyy-MM-dd').format(r),
      );
}

class UnexpectedValueError extends Error {}
