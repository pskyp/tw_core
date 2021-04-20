import 'package:flutter/foundation.dart';

import 'subbie_rating.dart';

class BidReview {
  final String subbieId;
  final String jobId;
  final String title;
  final String description;
  final SubbieRating rating;

  BidReview(
      {@required this.description,
      @required this.jobId,
      @required this.rating,
      @required this.subbieId,
      @required this.title});

  factory BidReview.fromMap(Map data) {
    return BidReview(
        description: data['job_description'],
        jobId: data['job_id'],
        subbieId: data['subbiew_id'],
        title: data['job_title'],
        rating: SubbieRating.fromMap(data['rating']));
  }

  get map => {
        'subbie_id': subbieId,
        'job_id': jobId,
        'job_title': title,
        'job_description': description,
        'rating': rating.map
      };
}
