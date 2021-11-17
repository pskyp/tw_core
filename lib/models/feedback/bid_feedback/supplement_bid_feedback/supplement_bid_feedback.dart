import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/work/work.dart';

part 'supplement_bid_feedback.freezed.dart';
part 'supplement_bid_feedback.g.dart';

@freezed
class SupplementBidFeedback
    with _$SupplementBidFeedback
    implements BidFeedback {
  factory SupplementBidFeedback() = _SupplementBidFeedback;

  factory SupplementBidFeedback.fromJson(Map<String, dynamic> json) =>
      _$SupplementBidFeedbackFromJson(json);
}
