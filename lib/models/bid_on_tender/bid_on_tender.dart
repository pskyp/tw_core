import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';

part 'bid_on_tender.g.dart';

@JsonSerializable(explicitToJson: true)
class BidOnTender {
  final String companyName;
  final double rating;

  BidOnTender({
    required this.companyName,
    required this.rating,
  });

  Map<String, dynamic> toJson() => _$BidOnTenderToJson(this);
  factory BidOnTender.fromJson(Map<String, dynamic> json) =>
      _$BidOnTenderFromJson(json);

  factory BidOnTender.fromContractor(Contractor contractor) {
    return BidOnTender(
      companyName: contractor.basicProfile.company,
      rating: contractor.rating,
    );
  }
}
