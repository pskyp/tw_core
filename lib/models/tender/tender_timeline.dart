import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tender_timeline.freezed.dart';

class TenderTimeline {
  final Either<TenderTimelineFailures, DateTime> queriesDeadline;
  final Either<TenderTimelineFailures, DateTime> submissionDeadline;
  final Either<TenderTimelineFailures, DateTime> feedbackDeadline;
  final Either<TenderTimelineFailures, DateTime> awardDeadline;

  TenderTimeline({
    required DateTime queriesDeadline,
    required DateTime submissionDeadline,
    required DateTime feedbackDeadline,
    required DateTime awardDeadline,
  })  : queriesDeadline = right(queriesDeadline),
        this.submissionDeadline = submissionDeadline.isAfter(queriesDeadline)
            ? right(submissionDeadline)
            : left(SubmissionBeforeQueries()),
        this.feedbackDeadline = feedbackDeadline.isAfter(submissionDeadline)
            ? right(feedbackDeadline)
            : left(FeedbackBeforeSubmission()),
        this.awardDeadline = awardDeadline.isAfter(feedbackDeadline)
            ? right(awardDeadline)
            : left(AwardBeforeFeedback());

  Map<String, dynamic> toJson() => {
        'queriesDeadline': queriesDeadline.fold(
          (l) => DateTime.utc(2000),
          (r) => r.toString(),
        ),
        'submissionDeadline': submissionDeadline.fold(
          (l) => DateTime.utc(2000),
          (r) => r.toString(),
        ),
        'feedbackDeadline': feedbackDeadline.fold(
          (l) => DateTime.utc(2000),
          (r) => r.toString(),
        ),
        'awardDeadline': awardDeadline.fold(
          (l) => DateTime.utc(2000),
          (r) => r.toString(),
        ),
      };

  factory TenderTimeline.fromJson(Map<String, dynamic> json) => TenderTimeline(
        queriesDeadline: DateTime.parse(json['queriesDeadline']),
        submissionDeadline: DateTime.parse(json['submissionDeadline']),
        feedbackDeadline: DateTime.parse(json['feedbackDeadline']),
        awardDeadline: DateTime.parse(json['awardDeadline']),
      );
}

@freezed
class TenderTimelineFailures with _$TenderTimelineFailures {
  const factory TenderTimelineFailures.submissionBeforeQueries() =
      SubmissionBeforeQueries;

  const factory TenderTimelineFailures.feedbackBeforeSubmission() =
      FeedbackBeforeSubmission;

  const factory TenderTimelineFailures.awardBeforeFeedback() =
      AwardBeforeFeedback;
}

// class SubmissionDateBeforeQueriesDate extends TenderTimelineFailures {}

// class FeedbackDateBeforeSubmissionDate extends TenderTimelineFailures {}

// class AwardDateBeforeFeedbackDate extends TenderTimelineFailures {}
