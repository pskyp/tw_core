// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobFeedback _$$_JobFeedbackFromJson(Map<String, dynamic> json) =>
    _$_JobFeedback(
      jobId: json['jobId'] as String,
      subbieId: json['subbieId'] as String,
      contractorId: json['contractorId'] as String,
      contractorRating: ContractorRating.fromJson(
          json['contractorRating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JobFeedbackToJson(_$_JobFeedback instance) =>
    <String, dynamic>{
      'jobId': instance.jobId,
      'subbieId': instance.subbieId,
      'contractorId': instance.contractorId,
      'contractorRating': instance.contractorRating.toJson(),
    };
