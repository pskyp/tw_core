// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contractor_rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContractorRating _$ContractorRatingFromJson(Map<String, dynamic> json) {
  return ContractorRating(
    reliability: (json['reliability'] as num).toDouble(),
    communication: (json['communication'] as num).toDouble(),
    environment: (json['environment'] as num).toDouble(),
  );
}

Map<String, dynamic> _$ContractorRatingToJson(ContractorRating instance) =>
    <String, dynamic>{
      'reliability': instance.reliability,
      'communication': instance.communication,
      'environment': instance.environment,
    };

PendingContractorRating _$PendingContractorRatingFromJson(
    Map<String, dynamic> json) {
  return PendingContractorRating(
    contractorId: json['contractorId'] as String,
    jobId: json['jobId'] as String,
    jobTitle: json['jobTitle'] as String,
  );
}

Map<String, dynamic> _$PendingContractorRatingToJson(
        PendingContractorRating instance) =>
    <String, dynamic>{
      'jobId': instance.jobId,
      'jobTitle': instance.jobTitle,
      'contractorId': instance.contractorId,
    };
