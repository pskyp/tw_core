import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/tw_min_length_string/tw_min_length_string.dart';
import 'package:tw_core/models/core/tw_number/tw_number.dart';
import 'package:tw_core/models/development/development.dart';
import 'package:tw_core/models/job/job_status.dart';
import 'package:tw_core/models/job/value_objects/job_timeline/job_timeline.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/trades.dart';
import 'package:tw_core/models/work/work.dart';
import 'package:tw_core/services/cache_service.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
class Job with _$Job implements Work {
  const Job._();
  const factory Job({
    required WorkIdentifier workIdentifier,
    required DateTime createdOn,
    required String contractorId,
    required LocationModel location,
    required Trade trade,
    required JobStatus status,
    required int totalUnseenBids,
    required String description,
    required double hourlyRate,
    required int applications,
    required int subbiesRequired,
    required int subbiesWorking,
    required DateTime endDate,
    required int hrsPerDay,
    required DateTime startDate,
    required List<String> requirements,
    required bool acceptingBids,
  }) = _Job;

  factory Job.neu({
    required DevelopmentIdentifier developmentIdentifier,
    required LocationModel location,
    required TWString jobTitle,
    required TWString jobDescription,
    required TWNumber jobRate,
    required JobTimeLine jobTimeLine,
    required TWNumber requiredNumberOfSubbies,
    required List<String> selectedRequirements,
    required Trade selectedTrade,
  }) =>
      _Job(
        workIdentifier: WorkIdentifier.job(
          developmentIdentifier: developmentIdentifier,
          title: jobTitle.getOrCrash(),
          employer: CacheService().contractor.basicProfile,
          workId: CacheService().contractor.basicProfile.uid +
              DateTime.now().toString(),
        ),
        createdOn: jobTimeLine.createdOn,
        contractorId: CacheService().contractor.basicProfile.uid,
        location: location,
        trade: selectedTrade,
        status: JobStatus(JobStatuses.Active),
        totalUnseenBids: 0,
        description: jobDescription.getOrCrash(),
        hourlyRate: jobRate.getOrCrash().toDouble(),
        applications: 0,
        subbiesRequired: requiredNumberOfSubbies.getOrCrash(),
        subbiesWorking: 0,
        endDate: jobTimeLine.endDate.getOrCrash(),
        hrsPerDay: 3,
        startDate: jobTimeLine.startDate.getOrCrash(),
        requirements: selectedRequirements,
        acceptingBids: true,
      );

  String get developmentTitle => workIdentifier.developmentIdentifier.title;
  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
}
