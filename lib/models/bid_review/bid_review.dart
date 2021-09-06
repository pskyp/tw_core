import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../bid/bid.dart';
import '../subbie_rating/subbie_rating.dart';

part 'bid_review.g.dart';

@JsonSerializable(explicitToJson: true)
class BidReview {
  final String subbieId;
  final String subbieName;
  final String jobId;
  final String title;
  final String description;
  final SubbieRating rating;

  BidReview({
    required this.subbieName,
    required this.description,
    required this.jobId,
    required this.rating,
    required this.subbieId,
    required this.title,
  });

  factory BidReview.fromBidAndRating(Bid bid, SubbieRating theRating) {
    return BidReview(
      subbieName: bid.subbieTWUser.displayName,
      description: bid.description,
      jobId: bid.jobId,
      rating: theRating,
      subbieId: bid.subbieTWUser.uid,
      title: bid.title,
    );
  }

  Map<String, dynamic> toJson() => _$BidReviewToJson(this);

  factory BidReview.fromJson(Map<String, dynamic> json) =>
      _$BidReviewFromJson(json);
}
