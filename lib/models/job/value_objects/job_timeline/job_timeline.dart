import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/tw_date/tw_date.dart';

part 'job_timeline.freezed.dart';

class JobTimeLine {
  final DateTime createdOn;
  final JobStartDate startDate;
  final JobEndDate endDate;
  JobTimeLine({
    required this.createdOn,
    required DateTime startDateInput,
    required DateTime endDateInput,
  })  : startDate = JobStartDate(
          input: startDateInput,
          createdOn: createdOn,
        ),
        endDate = JobEndDate(
          input: endDateInput,
          startDate: startDateInput,
        );

  bool get isValid => endDate.isValid;
}

class JobEndDate extends TWDate<JobEndDateFailure> {
  JobEndDate({required DateTime input, required DateTime startDate})
      : super(
          input.isAfter(startDate)
              ? right(input)
              : left(JobEndDateFailure.endDateBeforeStartDate(input)),
        );
}

@freezed
class JobEndDateFailure extends TWDateFailure with _$JobEndDateFailure {
  const factory JobEndDateFailure.endDateBeforeStartDate(DateTime date) =
      EndDateBeforeStartDate;
}

class JobStartDate extends TWDate<JobStartDateFailure> {
  JobStartDate({required DateTime input, required DateTime createdOn})
      : super(
          input.isAfter(createdOn)
              ? right(input)
              : left(JobStartDateFailure.startDateBeforeToday(input)),
        );
}

@freezed
class JobStartDateFailure extends TWDateFailure with _$JobStartDateFailure {
  const factory JobStartDateFailure.startDateBeforeToday(DateTime date) =
      StartDateBeforeToday;
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
