import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/subbie_rating/subbie_rating.dart';
import 'package:tw_core/models/work/work.dart';

part 'job_bid_feedback.freezed.dart';
part 'job_bid_feedback.g.dart';

@freezed
class JobBidFeedback with _$JobBidFeedback implements BidFeedback {
  factory JobBidFeedback({
    required SubbieRating rating,
    required String bidId,
    required String subbieID,
  }) = _JobBidFeedback;

  factory JobBidFeedback.fromJson(Map<String, dynamic> json) =>
      _$JobBidFeedbackFromJson(json);
}
