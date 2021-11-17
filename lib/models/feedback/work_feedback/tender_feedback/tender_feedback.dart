import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/work/work.dart';

part 'tender_feedback.freezed.dart';
part 'tender_feedback.g.dart';

@freezed
class TenderFeedback with _$TenderFeedback implements WorkFeedback {
  factory TenderFeedback({
    required double rating,
  }) = _TenderFeedback;

  factory TenderFeedback.fromJson(Map<String, dynamic> json) =>
      _$TenderFeedbackFromJson(json);
}
