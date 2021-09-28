import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/tw_min_length_string/tw_min_length_string.dart';
import 'package:tw_core/models/core/tw_number/tw_number.dart';
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
  const factory Job({
    required WorkIdentifier workIdentifier,
    required DateTime createdOn,
    required String contractorId,
    required LocationModel location,
    required Trade trade,
    required JobStatus status,
    required int totalUnseenBids,
    required String developmentTitle,
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
    required LocationModel location,
    required TWString devTitle,
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
        developmentTitle: devTitle.getOrCrash(),
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

  // {
  //   Contractor contractor = CacheService().contractor;
  //   return Job(
  //     contractorTWUser: contractor.basicProfile,
  //     contractorId: contractor.basicProfile.uid,
  //     jobId: contractor.basicProfile.uid + DateTime.now().toString(),
  //     development: devTitle.getOrCrash(),
  //     title: jobTitle.getOrCrash(),
  //     description: jobDescription.getOrCrash(),
  //     hourlyRate: jobRate.getOrCrash().toDouble(),
  //     startDate: jobTimeLine.startDate.getOrCrash(),
  //     endDate: jobTimeLine.endDate.getOrCrash(),
  //     location: location,
  //     subbiesRequired: requiredNumberOfSubbies.getOrCrash(),
  //     requirements: selectedRequirements,
  //     trade: selectedTrade,
  //     status: JobStatus(JobStatuses.Active),
  //     totalUnseenBids: 0,
  //     applications: 0,
  //     hrsPerDay: 3,
  //     subbiesWorking: 0,
  //     postedOn: DateTime.now(),
  //     acceptingBids: true,
  //     refreshCounter: 0,
  //   );
  // }

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
}

// @JsonSerializable(explicitToJson: true)
// class Job {
//   final String jobId;
//
//   final JobStatus status;
//   final TWUser contractorTWUser;
//   final String contractorId;
//   final String development;
//   final String title;
//   final String description;
//   final double hourlyRate;
//   final int hrsPerDay;
//   final DateTime startDate;
//   final DateTime endDate;
//   final DateTime postedOn;
//   final int applications;
//   final int subbiesWorking;
//   final int subbiesRequired;
//   final List<String> requirements;
//   final Trade trade;
//   final bool acceptingBids;
//   final int totalUnseenBids;
//   final int refreshCounter;
//   final LocationModel location;
//
//   Job({
//     required this.contractorTWUser,
//     required this.jobId,
//     required this.status,
//     required this.location,
//     required this.totalUnseenBids,
//     required this.development,
//     required this.title,
//     required this.description,
//     required this.hourlyRate,
//     required this.applications,
//     required this.endDate,
//     required this.hrsPerDay,
//     required this.startDate,
//     required this.subbiesRequired,
//     required this.requirements,
//     required this.subbiesWorking,
//     required this.postedOn,
//     required this.acceptingBids,
//     required this.contractorId,
//     required this.trade,
//     required this.refreshCounter,
//   });
//
//   factory Job.neu({
//     required LocationModel location,
//     required TWString devTitle,
//     required TWString jobTitle,
//     required TWString jobDescription,
//     required TWNumber jobRate,
//     required JobTimeLine jobTimeLine,
//     required TWNumber requiredNumberOfSubbies,
//     required List<String> selectedRequirements,
//     required Trade selectedTrade,
//   }) {
//     Contractor contractor = CacheService().contractor;
//     return Job(
//       contractorTWUser: contractor.basicProfile,
//       contractorId: contractor.basicProfile.uid,
//       jobId: contractor.basicProfile.uid + DateTime.now().toString(),
//       development: devTitle.getOrCrash(),
//       title: jobTitle.getOrCrash(),
//       description: jobDescription.getOrCrash(),
//       hourlyRate: jobRate.getOrCrash().toDouble(),
//       startDate: jobTimeLine.startDate.getOrCrash(),
//       endDate: jobTimeLine.endDate.getOrCrash(),
//       location: location,
//       subbiesRequired: requiredNumberOfSubbies.getOrCrash(),
//       requirements: selectedRequirements,
//       trade: selectedTrade,
//       status: JobStatus(JobStatuses.Active),
//       totalUnseenBids: 0,
//       applications: 0,
//       hrsPerDay: 3,
//       subbiesWorking: 0,
//       postedOn: DateTime.now(),
//       acceptingBids: true,
//       refreshCounter: 0,
//     );
//   }
//
//   Map<String, dynamic> toJson() => _$JobToJson(this);
//   factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
//
//   bool get isCompleted => status == JobStatus(JobStatuses.Completed);
//
//   String get shortDescription => description.length < 80
//       ? description
//       : description.substring(0, 70) + '...';
//
//   get shortAddress => location.completeAddress.length < 50
//       ? location.completeAddress
//       : location.completeAddress.substring(0, 50) + '...';
//
//   get shortTitle => title.length < 50 ? title : title.substring(0, 45) + '...';
//
//   List<JobAction> get availableJobActions {
//     if (status.value == 'JobStatuses.Active')
//       return [
//         JobAction(JobActions.toggleBidding,
//             acceptingBids ? 'Stop Applications' : 'Resume Applications'),
//         JobAction(JobActions.inviteFavourites, 'Invite Favourite Subbies'),
//         JobAction(JobActions.jobComplete, 'Job Complete'),
//       ];
//     return [];
//   }
//
//   Job updateJob({
//     String? development,
//     String? title,
//     String? description,
//     double? hourlyRate,
//     DateTime? endDate,
//     DateTime? startDate,
//     int? subbiesRequired,
//     List<String>? requirements,
//     Trade? trade,
//     LocationModel? location,
//   }) {
//     return Job(
//       contractorTWUser: this.contractorTWUser,
//       jobId: this.jobId,
//       status: this.status,
//       totalUnseenBids: this.totalUnseenBids,
//       applications: this.applications,
//       hrsPerDay: this.hrsPerDay,
//       subbiesWorking: this.subbiesWorking,
//       postedOn: this.postedOn,
//       acceptingBids: this.acceptingBids,
//       refreshCounter: this.refreshCounter,
//       contractorId: this.contractorId,
//       location: location ?? this.location,
//       title: title ?? this.title,
//       description: description ?? this.description,
//       hourlyRate: hourlyRate ?? this.hourlyRate,
//       endDate: endDate ?? this.endDate,
//       startDate: startDate ?? this.startDate,
//       subbiesRequired: subbiesRequired ?? this.subbiesRequired,
//       development: development ?? this.development,
//       requirements: requirements ?? this.requirements,
//       trade: trade ?? this.trade,
//     );
//   }
// }
