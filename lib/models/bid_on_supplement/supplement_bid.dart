import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/feedback/bid_feedback/tender_bid_feedback/tender_bid_feedback.dart';
import 'package:tw_core/models/supplement/supplement_model.dart';

import 'package:tw_core/models/work/work.dart';

part 'supplement_bid.freezed.dart';
part 'supplement_bid.g.dart';

enum SupplementBidStatus { New, Invited, Awarded, Completed }

@freezed
class SupplementBid with _$SupplementBid implements WorkBid {
  const factory SupplementBid({
    required BidIdentifier bidIdentifier,
    required SupplementBidStatus supplementBidStatus,
    required TenderBidFeedback? feedback,
  }) = _SupplementBid;

  factory SupplementBid.fromContractorAndTender({
    required Contractor contractor,
    required Supplement supplement,
  }) {
    return _SupplementBid(
      bidIdentifier: BidIdentifier(
        appliedOn: DateTime.now(),
        bidder: contractor.basicProfile,
        bidId: contractor.basicProfile.uid + DateTime.now().toString(),
        bidType: BidType.SupplementBid,
        workIdentifier: supplement.workIdentifier,
      ),
      supplementBidStatus: SupplementBidStatus.New,
      feedback: null,
    );
  }

  

  factory SupplementBid.fromJson(Map<String, dynamic> json) =>
      _$SupplementBidFromJson(json);
}

