import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:tw_core/models/errors.dart';

part 'tender_timeline.freezed.dart';

class TenderTimeline {
  final TenderDate createdAt;
  final TenderDate queriesDeadline;
  final TenderDate applicationDeadline;
  final TenderDate submissionDeadline;
  final TenderDate feedbackDeadline;
  final TenderDate awardDeadline;
  final TenderDate startDeadline;
  final TenderDate endDeadline;

  bool get isValid =>
      createdAt.isValid &&
      queriesDeadline.isValid &&
      applicationDeadline.isValid &&
      submissionDeadline.isValid &&
      startDeadline.isValid &&
      feedbackDeadline.isValid &&
      awardDeadline.isValid &&
      endDeadline.isValid;

  factory TenderTimeline.createAt(DateTime date) {
    return TenderTimeline(
      createdAtDate: date,
      applicationDeadlineDate: date.add(Duration(days: 1)),
      queriesDate: date.add(Duration(days: 2)),
      submissionDate: date.add(Duration(days: 3)),
      feedbackDate: date.add(Duration(days: 4)),
      awardDate: date.add(Duration(days: 5)),
      startDate: date.add(Duration(days: 6)),
      endDate: date.add(Duration(days: 7)),
    );
  }

  TenderTimeline({
    required DateTime startDate,
    required DateTime queriesDate,
    required DateTime submissionDate,
    required DateTime feedbackDate,
    required DateTime awardDate,
    required DateTime applicationDeadlineDate,
    required DateTime createdAtDate,
    required DateTime endDate,
  })  : this.createdAt = TenderDate(right(createdAtDate)),
        this.queriesDeadline = queriesDate.isAfter(createdAtDate)
            ? TenderDate(right(queriesDate))
            : TenderDate(left(
                TenderTimelineFailures.queriesBeforeCreatedAt(queriesDate))),
        this.applicationDeadline = applicationDeadlineDate
                .isAfter(createdAtDate)
            ? TenderDate(right(applicationDeadlineDate))
            : TenderDate(left(TenderTimelineFailures.startDateBeforeAwardDate(
                applicationDeadlineDate))),
        this.startDeadline = startDate.isAfter(awardDate)
            ? TenderDate(right(startDate))
            : TenderDate(left(
                TenderTimelineFailures.startDateBeforeAwardDate(startDate))),
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
        this.endDeadline = endDate.isAfter(startDate)
            ? TenderDate(right(endDate))
            : TenderDate(
                left(
                  TenderTimelineFailures.endDateBeforeStart(endDate),
                ),
              );

  TenderTimeline copyWith({
    DateTime? startDate,
    DateTime? queriesDate,
    DateTime? submissionDate,
    DateTime? feedbackDate,
    DateTime? awardDate,
    DateTime? endDate,
    DateTime? applicationDate,
    DateTime? createdAtDate,
  }) {
    return TenderTimeline(
      applicationDeadlineDate:
          applicationDate ?? applicationDeadline.value.fold((l) => l.date, id),
      createdAtDate: createdAtDate ?? createdAt.value.fold((l) => l.date, id),
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
  const factory TenderTimelineFailures.applicationDeadlineBeforeCreatedAt(
      DateTime date) = ApplicationDeadlineBeforeCreatedAt;
  const factory TenderTimelineFailures.queriesBeforeCreatedAt(DateTime date) =
      QueriesBeforeCreatedAt;
  const factory TenderTimelineFailures.submissionBeforeQueries(DateTime date) =
      SubmissionBeforeQueries;

  const factory TenderTimelineFailures.feedbackBeforeSubmission(DateTime date) =
      FeedbackBeforeSubmission;
  const factory TenderTimelineFailures.startDateBeforeAwardDate(DateTime date) =
      StartDateBeforeAwardDate;

  const factory TenderTimelineFailures.awardBeforeFeedback(DateTime date) =
      AwardBeforeFeedback;

  const factory TenderTimelineFailures.endDateBeforeStart(DateTime date) =
      EndDateBeforeAward;
}

class TenderDate {
  final Either<TenderTimelineFailures, DateTime> value;
  TenderDate(this.value);

  getOrCrash() => value.fold((l) => throw UnexpectedValueError(), id);

  bool get isValid => value.isRight();

  String get asString => value.fold(
        (l) => DateFormat('yyyy-MM-dd').format(l.date),
        (r) => DateFormat('yyyy-MM-dd').format(r),
      );
}
