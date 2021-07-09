import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/tender/tender_model.dart';

part 'bid_on_tender.g.dart';

enum TenderBidStatus { neu, active }

@JsonSerializable(explicitToJson: true)
class BidOnTender {
  final String bidId;
  final String tenderId;
  final String contractorId;
  final TenderBidStatus status;
  final String contractorCompanyName;
  final double rating;

  BidOnTender({
    required this.bidId,
    required this.tenderId,
    required this.contractorId,
    required this.status,
    required this.contractorCompanyName,
    required this.rating,
  });

  Map<String, dynamic> toJson() => _$BidOnTenderToJson(this);
  factory BidOnTender.fromJson(Map<String, dynamic> json) =>
      _$BidOnTenderFromJson(json);

  factory BidOnTender.fromContractorAndTender(
    Contractor contractor,
    Tender tender,
  ) {
    return BidOnTender(
      bidId: tender.id + DateTime.now().toString(),
      contractorId: contractor.basicProfile.uid,
      tenderId: tender.id,
      status: TenderBidStatus.neu,
      contractorCompanyName: contractor.basicProfile.company,
      rating: contractor.rating,
    );
  }

  BidOnTender copyWithStatusActive() {
    return BidOnTender(
        bidId: bidId,
        tenderId: tenderId,
        contractorId: contractorId,
        status: TenderBidStatus.active,
        contractorCompanyName: contractorCompanyName,
        rating: rating);
  }
}
