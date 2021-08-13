import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/person/person.dart';
import 'package:tw_core/models/tender/tender_model.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';

part 'bid_on_tender.g.dart';

enum TenderBidStatus { neu, active, invited }

@JsonSerializable(explicitToJson: true)
class BidOnTender {
  final String bidId;
  final String bidderId;
  final String developerId;
  final String tenderId;
  final TenderBidStatus status;
  final Person bidder;
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

  factory BidOnTender.fromContractorAndTender(
    Contractor contractor,
    Tender tender,
  ) {
    return BidOnTender(
      bidderId: contractor.basicProfile.uid,
      developerId: tender.developerId,
      bidId: tender.id + DateTime.now().toString(),
      tenderId: tender.id,
      status: TenderBidStatus.neu,
      bidder: Person.fromTWUser(contractor.basicProfile),
      rating: contractor.rating,
    );
  }

  BidOnTender copyWithStatusActive() {
    return BidOnTender(
        bidderId: bidderId,
        developerId: developerId,
        bidId: bidId,
        tenderId: tenderId,
        status: TenderBidStatus.active,
        bidder: bidder,
        rating: rating);
  }
}
