import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:tw_core/models/errors.dart';

part 'tender_timeline.freezed.dart';

class TenderTimeline {
  final TenderDate startDeadline;
  final TenderDate queriesDeadline;
  final TenderDate submissionDeadline;
  final TenderDate feedbackDeadline;
  final TenderDate awardDeadline;
  final TenderDate endDeadline;

  TenderTimeline({
    required DateTime startDate,
    required DateTime queriesDate,
    required DateTime submissionDate,
    required DateTime feedbackDate,
    required DateTime awardDate,
    required DateTime endDate,
  })  : this.startDeadline = TenderDate(right(startDate)),
        this.queriesDeadline = queriesDate.isAfter(startDate)
            ? TenderDate(right(queriesDate))
            : TenderDate(left(
                TenderTimelineFailures.queriesBeforeStartDate(queriesDate))),
        this.submissionDeadline = submissionDate.isAfter(queriesDate)
            ? TenderDate(right(submissionDate))
            : TenderDate(
                left(
                  TenderTimelineFailures.submissionBeforeQueries(
                      submissionDate),
                ),
              ),
        this.feedbackDeadline = feedbackDate.isAfter(submissionDate)
            ? TenderDate(right(feedbackDate))
            : TenderDate(
                left(
                  TenderTimelineFailures.feedbackBeforeSubmission(feedbackDate),
                ),
              ),
        this.awardDeadline = awardDate.isAfter(feedbackDate)
            ? TenderDate(right(awardDate))
            : TenderDate(
                left(
                  TenderTimelineFailures.awardBeforeFeedback(awardDate),
                ),
              ),
        this.endDeadline = endDate.isAfter(awardDate)
            ? TenderDate(right(endDate))
            : TenderDate(
                left(
                  TenderTimelineFailures.endDateBeforeAward(endDate),
                ),
              );

  // Map<String, dynamic> toJson() => {
  //       'startDate': startDeadline.fold(
  //         (l) => DateTime.utc(2000),
  //         (r) => r.toString(),
  //       ),
  //       'queriesDate': queriesDeadline.fold(
  //         (l) => DateTime.utc(2000),
  //         (r) => r.toString(),
  //       ),
  //       'submissionDate': submissionDeadline.fold(
  //         (l) => DateTime.utc(2000),
  //         (r) => r.toString(),
  //       ),
  //       'feedbackDate': feedbackDeadline.fold(
  //         (l) => DateTime.utc(2000),
  //         (r) => r.toString(),
  //       ),
  //       'awardDate': awardDeadline.fold(
  //         (l) => DateTime.utc(2000),
  //         (r) => r.toString(),
  //       ),
  //       'endDate': endDeadline.fold(
  //         (l) => DateTime.utc(2000),
  //         (r) => r.toString(),
  //       ),
  //     };

  // factory TenderTimeline.fromJson(Map<String, dynamic> json) => TenderTimeline(
  //       startDate: DateTime.parse(json['startDate']),
  //       queriesDate: DateTime.parse(json['queriesDate']),
  //       submissionDate: DateTime.parse(json['submissionDate']),
  //       feedbackDate: DateTime.parse(json['feedbackDate']),
  //       awardDate: DateTime.parse(json['awardDate']),
  //       endDate: DateTime.parse(json['endDate']),
  //     );

  TenderTimeline copyWith({
    DateTime? startDate,
    DateTime? queriesDate,
    DateTime? submissionDate,
    DateTime? feedbackDate,
    DateTime? awardDate,
    DateTime? endDate,
  }) {
    return TenderTimeline(
      startDate: startDate ?? startDeadline.value.fold((l) => l.date, id),
      queriesDate: queriesDate ?? queriesDeadline.value.fold((l) => l.date, id),
      submissionDate:
          submissionDate ?? submissionDeadline.value.fold((l) => l.date, id),
      feedbackDate:
          feedbackDate ?? feedbackDeadline.value.fold((l) => l.date, id),
      awardDate: awardDate ?? awardDeadline.value.fold((l) => l.date, id),
      endDate: endDate ?? endDeadline.value.fold((l) => l.date, id),
    );
  }
}

@freezed
class TenderTimelineFailures with _$TenderTimelineFailures {
  const factory TenderTimelineFailures.queriesBeforeStartDate(DateTime date) =
      QueriesBeforeStartDate;
  const factory TenderTimelineFailures.submissionBeforeQueries(DateTime date) =
      SubmissionBeforeQueries;

  const factory TenderTimelineFailures.feedbackBeforeSubmission(DateTime date) =
      FeedbackBeforeSubmission;

  const factory TenderTimelineFailures.awardBeforeFeedback(DateTime date) =
      AwardBeforeFeedback;

  const factory TenderTimelineFailures.endDateBeforeAward(DateTime date) =
      EndDateBeforeAward;
}

class TenderDate {
  final Either<TenderTimelineFailures, DateTime> value;
  TenderDate(this.value);

  getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  get isValid => value.isRight();

  String get asString => value.fold(
        (l) => DateFormat('yyyy-MM-dd').format(l.date),
        (r) => DateFormat('yyyy-MM-dd').format(r),
      );
}
