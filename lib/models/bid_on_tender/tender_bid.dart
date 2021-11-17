import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/feedback/bid_feedback/tender_bid_feedback/tender_bid_feedback.dart';
import 'package:tw_core/models/tender/tender_model.dart';
import 'package:tw_core/models/work/work.dart';

part 'tender_bid.freezed.dart';
part 'tender_bid.g.dart';

enum TenderBidStatus { New, Invited, Awarded, Completed }

@freezed
class TenderBid with _$TenderBid implements WorkBid {
  const factory TenderBid({
    required BidIdentifier bidIdentifier,
    required TenderBidStatus tenderBidStatus,
    required TenderBidFeedback? feedback,
  }) = _TenderBid;

  factory TenderBid.fromContractorAndTender({
    required Contractor contractor,
    required Tender tender,
  }) {
    return _TenderBid(
      bidIdentifier: BidIdentifier(
        appliedOn: DateTime.now(),
        bidder: contractor.basicProfile,
        bidId: contractor.basicProfile.uid + DateTime.now().toString(),
        bidType: BidType.TenderBid,
        workIdentifier: tender.workIdentifier,
      ),
      tenderBidStatus: TenderBidStatus.New,
      feedback: null,
    );
  }

  factory TenderBid.fromJson(Map<String, dynamic> json) =>
      _$TenderBidFromJson(json);
}

// @JsonSerializable(explicitToJson: true)
// class TenderBid extends Equatable {
//   final String bidId;
//   final String bidderId;
//   final String developerId;
//   final String tenderId;
//   final TenderBidStatus status;
//   final TWUser bidder;
//   final double rating;
//
//   TenderBid({
//     required this.bidId,
//     required this.bidderId,
//     required this.developerId,
//     required this.tenderId,
//     required this.status,
//     required this.bidder,
//     required this.rating,
//   }) : assert(bidder.type == TWUserType.Contractor);
//
//   Map<String, dynamic> toJson() => _$BidOnTenderToJson(this);
//   factory TenderBid.fromJson(Map<String, dynamic> json) =>
//       _$BidOnTenderFromJson(json);
//
//   TenderBid copyWithRating({required double rating}) {
//     return TenderBid(
//       bidId: bidId,
//       bidderId: bidderId,
//       developerId: developerId,
//       tenderId: tenderId,
//       status: status,
//       bidder: bidder,
//       rating: rating,
//     );
//   }
//
//   factory TenderBid.fromContractorAndTender(
//       Contractor contractor, Tender tender) {
//     return TenderBid(
//       bidderId: contractor.basicProfile.uid,
//       developerId: tender.developerId,
//       bidId: tender.workIdentifier.workId + DateTime.now().toString(),
//       tenderId: tender.workIdentifier.workId,
//       status: TenderBidStatus.New,
//       bidder: contractor.basicProfile,
//       rating: contractor.rating,
//     );
//   }
//
//   TenderBid copyWithStatusInvited() {
//     return TenderBid(
//         bidderId: bidderId,
//         developerId: developerId,
//         bidId: bidId,
//         tenderId: tenderId,
//         status: TenderBidStatus.Invited,
//         bidder: bidder,
//         rating: rating);
//   }
//
//   TenderBid copyWithStatusAwarded() {
//     return TenderBid(
//       bidderId: bidderId,
//       developerId: developerId,
//       bidId: bidId,
//       tenderId: tenderId,
//       bidder: bidder,
//       status: TenderBidStatus.Awarded,
//       rating: rating,
//     );
//   }
//
//   TenderBid copyWithStatusComplete() {
//     return TenderBid(
//       bidderId: bidderId,
//       developerId: developerId,
//       bidId: bidId,
//       tenderId: tenderId,
//       bidder: bidder,
//       status: TenderBidStatus.Completed,
//       rating: rating,
//     );
//   }
//
//   @override
//   List<Object?> get props => [
//         bidderId,
//         developerId,
//         bidId,
//         bidder,
//         tenderId,
//         status,
//         rating,
//       ];
// }
