import 'package:flutter/foundation.dart';

class ContractorRating {
  final String contractorId;
  double reliability, communication, environment;
  final String jobId;
  final String jobTitle;

  ContractorRating({
    @required this.contractorId,
    @required this.reliability,
    @required this.communication,
    @required this.environment,
    @required this.jobId,
    @required this.jobTitle,
  });

  get map => {
        'job_id': jobId,
        'job_title': jobTitle,
        'reliability': reliability,
        'communication': communication,
        'environment': environment
      };

  factory ContractorRating.fromMap(Map data) {
    return ContractorRating(
        contractorId: data['contractor_id'],
        jobId: data['job_id'],
        jobTitle: data['job_title'],
        reliability: data['reliability'] ?? 5,
        communication: data['communication'] ?? 5,
        environment: data['environment'] ?? 5);
  }
}
