import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/work/work.dart';

part 'tender_bid_feedback.freezed.dart';
part 'tender_bid_feedback.g.dart';

@freezed
class TenderBidFeedback with _$TenderBidFeedback implements BidFeedback {
  factory TenderBidFeedback({
    required double rating,
  }) = _TenderBidFeedback;

  factory TenderBidFeedback.fromJson(Map<String, dynamic> json) =>
      _$TenderBidFeedbackFromJson(json);
}
