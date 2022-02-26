import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/contractor_rating/contractor_rating.dart';
import 'package:tw_core/models/work/work.dart';

part 'job_feedback.freezed.dart';
part 'job_feedback.g.dart';

@freezed
class JobFeedback with _$JobFeedback implements WorkFeedback {
  factory JobFeedback({
    required String jobId,
    required String subbieId,
      required String contractorId,
    required ContractorRating contractorRating,
  }) = _JobFeedback;

  factory JobFeedback.fromJson(Map<String, dynamic> json) =>
      _$JobFeedbackFromJson(json);
}
