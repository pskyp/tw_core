import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/work/work.dart';

part 'supplement_feedback.freezed.dart';
part 'supplement_feedback.g.dart';

@freezed
class SupplementFeedback with _$SupplementFeedback implements WorkFeedback {
  factory SupplementFeedback() = _SupplementFeedback;

  factory SupplementFeedback.fromJson(Map<String, dynamic> json) =>
      _$SupplementFeedbackFromJson(json);
}
