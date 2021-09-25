import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/tw_date/tw_date.dart';

part 'supplement_timeline.freezed.dart';

class SupplementTimeLine {
  final DateTime createdOn;
  final SupplementStartDate startDate;
  final SupplementEndDate endDate;

  SupplementTimeLine({
    required this.createdOn,
    required DateTime startDateInput,
    required DateTime endDateInput,
  })  : startDate =
            SupplementStartDate(input: startDateInput, createdOn: createdOn),
        endDate = SupplementEndDate(
          input: endDateInput,
          startDate: startDateInput,
        );
}

class SupplementEndDate extends TWDate<SupplementEndDateFailure> {
  SupplementEndDate({required DateTime input, required DateTime startDate})
      : super(
          input.isAfter(startDate)
              ? right(input)
              : left(SupplementEndDateFailure.endDateBeforeStartDate(input)),
        );
}

@freezed
class SupplementEndDateFailure extends TWDateFailure
    with _$SupplementEndDateFailure {
  const factory SupplementEndDateFailure.endDateBeforeStartDate(DateTime date) =
      EndDateBeforeStartDate;
}

class SupplementStartDate extends TWDate<SupplementStartDateFailure> {
  SupplementStartDate({
    required DateTime input,
    required DateTime createdOn,
  }) : super(
          input.isAfter(createdOn)
              ? right(input)
              : left(SupplementStartDateFailure.startDateBeforeToday(input)),
        );
}

@freezed
class SupplementStartDateFailure extends TWDateFailure
    with _$SupplementStartDateFailure {
  const factory SupplementStartDateFailure.startDateBeforeToday(DateTime date) =
      StartDateBeforeToday;
}

// class SupplementDate extends TWDate {
//   SupplementDate(Either<SupplementDateFailure, DateTime> value) : super(value);
// }

//     : this.startDate = startDate.isBefore(endDate)
// ? TWDate(right(startDate))
// : TWDate(
// left(SupplementDateValidators.startDateValidation(startDate))),
// this.endDate = endDate.isAfter(startDate)
// ? TWDate(right(endDate))
// : TWDate(
// left(SupplementDateValidators.endDateValidation(endDate)),
// )

// @freezed
// class SupplementDateFailure extends TWDateFailure with _$SupplementDateFailure {
//   const factory SupplementDateFailure() = _SupplementDateFailure;
//   // SupplementDateFailure(DateTime date) : super(date);
// }
