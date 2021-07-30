import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/location/location_model.dart';

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
  final int totalUnseenBids;
  final int refreshCounter;
  final LocationModel location;

  Job({
    required this.jobId,
    required this.status,
    required this.location,
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
    required this.refreshCounter,
  });

  Map<String, dynamic> toJson() => _$JobToJson(this);
  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  String get shortDescription => description.length < 80
      ? description
      : description.substring(0, 70) + '...';

  get shortAddress => location.completeAddress.length < 50
      ? location.completeAddress
      : location.completeAddress.substring(0, 50) + '...';

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

  Job updateJob({
    String? development,
    String? title,
    String? description,
    double? hourlyRate,
    DateTime? endDate,
    DateTime? startDate,
    int? subbiesRequired,
    List<String>? requirements,
    Trade? trade,
    LocationModel? location,
  }) {
    return Job(
      jobId: this.jobId,
      status: this.status,
      totalUnseenBids: this.totalUnseenBids,
      applications: this.applications,
      hrsPerDay: this.hrsPerDay,
      subbiesWorking: this.subbiesWorking,
      postedOn: this.postedOn,
      acceptingBids: this.acceptingBids,
      refreshCounter: this.refreshCounter,
      contractorId: this.contractorId,
      location: location ?? this.location,
      title: title ?? this.title,
      description: description ?? this.description,
      hourlyRate: hourlyRate ?? this.hourlyRate,
      endDate: endDate ?? this.endDate,
      startDate: startDate ?? this.startDate,
      subbiesRequired: subbiesRequired ?? this.subbiesRequired,
      development: development ?? this.development,
      requirements: requirements ?? this.requirements,
      trade: trade ?? this.trade,
    );
  }
}
