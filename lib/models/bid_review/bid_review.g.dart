// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BidReview _$BidReviewFromJson(Map<String, dynamic> json) => BidReview(
      subbieName: json['subbieName'] as String,
      description: json['description'] as String,
      jobId: json['jobId'] as String,
      rating: SubbieRating.fromJson(json['rating'] as Map<String, dynamic>),
      subbieId: json['subbieId'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$BidReviewToJson(BidReview instance) => <String, dynamic>{
      'subbieId': instance.subbieId,
      'subbieName': instance.subbieName,
      'jobId': instance.jobId,
      'title': instance.title,
      'description': instance.description,
      'rating': instance.rating.toJson(),
    };
