import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/tender/tender_model.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';

part 'bid_on_tender.g.dart';

enum TenderBidStatus { New, Invited, Awarded, Completed }

@JsonSerializable(explicitToJson: true)
class BidOnTender extends Equatable {
  final String bidId;
  final String bidderId;
  final String developerId;
  final String tenderId;
  final TenderBidStatus status;
  final TWUser bidder;
  final double rating;

  BidOnTender({
    required this.bidId,
    required this.bidderId,
    required this.developerId,
    required this.tenderId,
    required this.status,
    required this.bidder,
    required this.rating,
  }) : assert(bidder.type == TWUserType.Contractor);

  Map<String, dynamic> toJson() => _$BidOnTenderToJson(this);
  factory BidOnTender.fromJson(Map<String, dynamic> json) =>
      _$BidOnTenderFromJson(json);

  BidOnTender copyWithRating({required double rating}) {
    return BidOnTender(
      bidId: bidId,
      bidderId: bidderId,
      developerId: developerId,
      tenderId: tenderId,
      status: status,
      bidder: bidder,
      rating: rating,
    );
  }

  factory BidOnTender.fromContractorAndTender(
      Contractor contractor, Tender tender) {
    return BidOnTender(
      bidderId: contractor.basicProfile.uid,
      developerId: tender.developerId,
      bidId: tender.workIdentifier.workId + DateTime.now().toString(),
      tenderId: tender.workIdentifier.workId,
      status: TenderBidStatus.New,
      bidder: contractor.basicProfile,
      rating: contractor.rating,
    );
  }

  BidOnTender copyWithStatusInvited() {
    return BidOnTender(
        bidderId: bidderId,
        developerId: developerId,
        bidId: bidId,
        tenderId: tenderId,
        status: TenderBidStatus.Invited,
        bidder: bidder,
        rating: rating);
  }

  BidOnTender copyWithStatusAwarded() {
    return BidOnTender(
      bidderId: bidderId,
      developerId: developerId,
      bidId: bidId,
      tenderId: tenderId,
      bidder: bidder,
      status: TenderBidStatus.Awarded,
      rating: rating,
    );
  }

  BidOnTender copyWithStatusComplete() {
    return BidOnTender(
      bidderId: bidderId,
      developerId: developerId,
      bidId: bidId,
      tenderId: tenderId,
      bidder: bidder,
      status: TenderBidStatus.Completed,
      rating: rating,
    );
  }

  @override
  List<Object?> get props => [
        bidderId,
        developerId,
        bidId,
        bidder,
        tenderId,
        status,
        rating,
      ];
}
