import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../person/person.dart';
import '../trades.dart';
import 'bid_action.dart';
import 'bid_status.dart';

part 'bid.g.dart';

@JsonSerializable(explicitToJson: true)
class Bid {
  final String bidId;
  final String jobId;
  final String title;
  final String description;
  final String development;
  final Trade trade;
  final DateTime appliedOn;
  final String address;
  final String contractorId;
  final bool seenByContractor;

  //the person field is kinda nnecessary in the subbie app
  //since a subbie can only view his own bids
  //but for the sake of sameness with the contractor app the person object is here
  final Person person;

  final BidStatus status;

  Bid({
    @required this.jobId,
    @required this.bidId,
    @required this.contractorId,
    @required this.title,
    @required this.development,
    @required this.person,
    @required this.address,
    @required this.seenByContractor,
    @required this.description,
    @required this.status,
    @required this.appliedOn,
    @required this.trade,
  });

  factory Bid.fromJson(Map<String, dynamic> json) => _$BidFromJson(json);
  Map<String, dynamic> toJson() => _$BidToJson(this);

  String get shortDescription => description.length < 80
      ? description
      : description.substring(0, 70) + '...';

  get shortTitle => title.length < 50 ? title : title.substring(0, 45) + '...';

  get shortAddress =>
      address.length < 50 ? address : address.substring(0, 50) + '...';

  List<BidAction> get availableActions {
    if (status.status != BidStatuses.Offered &&
        status.status != BidStatuses.Hired &&
        status.status != BidStatuses.Old)
      return [BidAction(BidActions.OfferJob, 'Offer Job')];
    return List<BidAction>();
  }
}
