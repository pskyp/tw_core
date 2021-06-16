import 'package:json_annotation/json_annotation.dart';

import '../trades.dart';
import 'job_action.dart';
import 'job_status.dart';

part 'job.g.dart';

@JsonSerializable(explicitToJson: true)
class Job {
  final String jobId;

  final JobStatus status;

  final String contractorId;
  final String development;
  final String title;
  final String description;
  final double hourlyRate;
  final int hrsPerDay;
  final DateTime startDate;
  final DateTime endDate;
  final DateTime postedOn;
  final int applications;
  final int subbiesWorking;
  final int subbiesRequired;
  final List<String> requirements;
  final Trade trade;
  final bool acceptingBids;
  final double latitude;
  final double longitude;
  final String address;
  final int totalUnseenBids;
  final int refreshCounter;

  Job({
    required this.jobId,
    required this.status,
    required this.latitude,
    required this.longitude,
    required this.totalUnseenBids,
    required this.development,
    required this.title,
    required this.description,
    required this.hourlyRate,
    required this.applications,
    required this.endDate,
    required this.hrsPerDay,
    required this.startDate,
    required this.subbiesRequired,
    required this.requirements,
    required this.subbiesWorking,
    required this.postedOn,
    required this.acceptingBids,
    required this.contractorId,
    required this.trade,
    required this.address,
    required this.refreshCounter,
  });

  Map<String, dynamic> toJson() => _$JobToJson(this);
  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  String get shortDescription => description.length < 80
      ? description
      : description.substring(0, 70) + '...';

  get shortAddress =>
      address.length < 50 ? address : address.substring(0, 50) + '...';

  get shortTitle => title.length < 50 ? title : title.substring(0, 45) + '...';

  List<JobAction> get availableJobActions {
    if (status.value == 'JobStatuses.Active')
      return [
        JobAction(JobActions.toggleBidding,
            acceptingBids ? 'Stop Applications' : 'Resume Applications'),
        JobAction(JobActions.inviteFavourites, 'Invite Favourite Subbies'),
        JobAction(JobActions.jobComplete, 'Job Complete'),
      ];
    return [];
  }
}
