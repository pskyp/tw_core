import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../contractor_rating/contractor_rating.dart';

part 'job_review.g.dart';

@JsonSerializable(explicitToJson: true)
@immutable
class JobReview {
  final String jobId;
  final String jobTitle;
  final String contractorId;
  final ContractorRating rating;

  JobReview({
    @required this.rating,
    @required this.jobId,
    @required this.contractorId,
    @required this.jobTitle,
  });

  factory JobReview.fromPendingReviewAndRating({
    @required PendingContractorRating pendingReview,
    @required ContractorRating theRating,
  }) {
    return JobReview(
      contractorId: pendingReview.contractorId,
      jobId: pendingReview.jobId,
      rating: theRating,
      jobTitle: pendingReview.jobTitle,
    );
  }

  factory JobReview.fromJson(Map<String, dynamic> json) =>
      _$JobReviewFromJson(json);

  Map<String, dynamic> toJson() => _$JobReviewToJson(this);
}
