// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_bid_feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobBidFeedback _$$_JobBidFeedbackFromJson(Map<String, dynamic> json) =>
    _$_JobBidFeedback(
      rating: SubbieRating.fromJson(json['rating'] as Map<String, dynamic>),
      bidId: json['bidId'] as String,
    );

Map<String, dynamic> _$$_JobBidFeedbackToJson(_$_JobBidFeedback instance) =>
    <String, dynamic>{
      'rating': instance.rating.toJson(),
      'bidId': instance.bidId,
    };
