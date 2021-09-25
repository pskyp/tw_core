import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/tw_date/tw_date.dart';

part 'supplement_timeline.freezed.dart';

class SupplementTimeLine {
  final DateTime startDate;
  final SupplementEndDate endDate;
  SupplementTimeLine({
    required DateTime startDateInput,
    required DateTime endDateInput,
  })  : startDate = startDateInput,
        endDate = SupplementEndDate(
          input: endDateInput,
          startDate: startDateInput,
        );
}

class SupplementEndDate extends TWDate {
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
      endDateBeforeStartDate;
}

// class SupplementStartDate extends TWDate {
//   SupplementStartDate(DateTime input)
//       : super(
//           input.isAfter(DateTime.now())
//               ? right(input)
//               : left(SupplementStartDateFailure.startDateBeforeToday(input)),
//         );
// }

// @freezed
// class SupplementStartDateFailure extends TWDateFailure
//     with _$SupplementStartDateFailure {
//   const factory SupplementStartDateFailure.startDateBeforeToday(DateTime date) =
//       StartDateBeforeToday;
// }

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

// class SupplementDateFailure extends TWDateFailure {
//   SupplementDateFailure(DateTime date) : super(date);
// }
