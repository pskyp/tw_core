// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobReview _$JobReviewFromJson(Map<String, dynamic> json) {
  return JobReview(
    rating: ContractorRating.fromJson(json['rating'] as Map<String, dynamic>),
    jobId: json['jobId'] as String,
    contractorId: json['contractorId'] as String,
    jobTitle: json['jobTitle'] as String,
  );
}

Map<String, dynamic> _$JobReviewToJson(JobReview instance) => <String, dynamic>{
      'jobId': instance.jobId,
      'jobTitle': instance.jobTitle,
      'contractorId': instance.contractorId,
      'rating': instance.rating.toJson(),
    };
