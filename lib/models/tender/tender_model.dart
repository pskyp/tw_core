import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/feedback/work_feedback/tender_feedback/tender_feedback.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/trades.dart';
import 'package:tw_core/models/work/work.dart';

part 'tender_model.freezed.dart';
part 'tender_model.g.dart';

enum TenderTimeLineStatus { New, OpenToQueries, Submission, Feedback, Awarding }
enum TenderStatus { UnAwarded, Awarded, Completed }

@freezed
class Tender with _$Tender implements Work {
  const Tender._();
  const factory Tender({
    required WorkIdentifier workIdentifier,
    required DateTime createdOn,
    required String developerId,
    required TenderStatus tenderStatus,
    required String? inviteEmailOne,
    required String? inviteEmailTwo,
    required Trade trade,
    required String requirements,
    required LocationModel location,
    required DateTime startDate,
    required DateTime applicationDeadLine,
    required DateTime queriesDate,
    required DateTime submissionDate,
    required DateTime feedbackDate,
    required DateTime awardDate,
    required DateTime endDate,
    required TenderTimeLineStatus tenderTimeLineStatus,
    required bool feedbackByDeveloper,
    required bool feedbackByContractor,
    required List<TenderFeedback>? feedback,
  }) = _Tender;

  factory Tender.fromJson(Map<String, dynamic> json) => _$TenderFromJson(json);

  bool get isCompleted => tenderStatus == TenderStatus.Completed;
  String get developmentId => workIdentifier.developmentIdentifier.id;
  String get devTitle => workIdentifier.developmentIdentifier.title;
}

// class Tender with _$Tender implements Work {
//
// }

//
// @JsonSerializable(explicitToJson: true)
// class Tender extends Equatable implements Work {
//   final TenderTimeLineStatus tenderTimeLineStatus;
//   final TenderStatus tenderStatus;
//   final String id;
//   final String developmentId;
//   final String developerId;
//   final TWUser developerTWUser;
//   final String tenderTitle;
//   final String? inviteEmailOne;
//   final String? inviteEmailTwo;
//   final Trade trade;
//   final double rating;
//   final bool feedbackByDeveloper;
//   final bool feedbackByContractor;
//   final String requirements;
//   final LocationModel location;
//   final DateTime startDate,
// //       createdAt,
// //       applicationDeadLine,
// //       queriesDate,
// //       submissionDate,
// //       feedbackDate,
// //       awardDate,
// //       endDate;
// //
//   // final TenderTimeline timeline;
//
//   const Tender({
//     required this.tenderTimeLineStatus,
//     required this.id,
//     required this.tenderStatus,
//     required this.developmentId,
//     required this.developerId,
//     required this.tenderTitle,
//     required this.trade,
//     required this.inviteEmailOne,
//     required this.inviteEmailTwo,
//     required this.requirements,
//     required this.location,
//     required this.startDate,
//     required this.createdAt,
//     required this.applicationDeadLine,
//     required this.queriesDate,
//     required this.submissionDate,
//     required this.feedbackDate,
//     required this.awardDate,
//     required this.endDate,
//     required this.rating,
//     required this.feedbackByContractor,
//     required this.feedbackByDeveloper,
//     required this.developerTWUser,
//   });
//
//   Tender copyWith({
//     TenderTimeLineStatus? tenderTimeLineStatus,
//     TenderStatus? tenderStatus,
//     String? id,
//     String? developmentId,
//     String? developerId,
//     // Person? developerAsPerson,
//     String? tenderTitle,
//     String? inviteEmailOne,
//     String? inviteEmailTwo,
//     Trade? trade,
//     double? rating,
//     bool? feedbackByDeveloper,
//     bool? feedbackByContractor,
//     String? requirements,
//     LocationModel? location,
//     DateTime? startDate,
//     createdAt,
//     applicationDeadLine,
//     queriesDate,
//     submissionDate,
//     feedbackDate,
//     awardDate,
//     endDate,
//   }) {
//     return Tender(
//       tenderTimeLineStatus: tenderTimeLineStatus ?? this.tenderTimeLineStatus,
//       id: id ?? this.id,
//       tenderStatus: tenderStatus ?? this.tenderStatus,
//       developmentId: developmentId ?? this.developmentId,
//       developerId: developerId ?? this.developerId,
//       tenderTitle: tenderTitle ?? this.tenderTitle,
//       trade: trade ?? this.trade,
//       inviteEmailOne: inviteEmailOne ?? this.inviteEmailOne,
//       inviteEmailTwo: inviteEmailTwo ?? this.inviteEmailTwo,
//       requirements: requirements ?? this.requirements,
//       location: location ?? this.location,
//       startDate: startDate ?? this.startDate,
//       createdAt: createdAt ?? this.createdAt,
//       applicationDeadLine: applicationDeadLine ?? this.applicationDeadLine,
//       queriesDate: queriesDate ?? this.queriesDate,
//       submissionDate: submissionDate ?? this.submissionDate,
//       feedbackDate: feedbackDate ?? this.feedbackDate,
//       awardDate: awardDate ?? this.awardDate,
//       endDate: endDate ?? this.endDate,
//       rating: rating ?? this.rating,
//       feedbackByContractor: feedbackByContractor ?? this.feedbackByContractor,
//       feedbackByDeveloper: feedbackByDeveloper ?? this.feedbackByDeveloper,
//       developerTWUser: this.developerTWUser,
//     );
//   }
//
//   Tender copyWithStatusInvited() {
//     return Tender(
//       tenderTimeLineStatus: tenderTimeLineStatus,
//       id: id,
//       tenderStatus: TenderStatus.Invited,
//       developmentId: developmentId,
//       developerId: developerId,
//       tenderTitle: tenderTitle,
//       trade: trade,
//       inviteEmailOne: inviteEmailOne,
//       inviteEmailTwo: inviteEmailTwo,
//       requirements: requirements,
//       location: location,
//       startDate: startDate,
//       createdAt: createdAt,
//       applicationDeadLine: applicationDeadLine,
//       queriesDate: queriesDate,
//       submissionDate: submissionDate,
//       feedbackDate: feedbackDate,
//       awardDate: awardDate,
//       endDate: endDate,
//       rating: rating,
//       feedbackByContractor: false,
//       feedbackByDeveloper: false,
//       developerTWUser: developerTWUser,
//     );
//   }
//
//   Tender copyWithStatusAwarded() {
//     return Tender(
//       tenderTimeLineStatus: tenderTimeLineStatus,
//       id: id,
//       tenderStatus: TenderStatus.Awarded,
//       developmentId: developmentId,
//       developerId: developerId,
//       tenderTitle: tenderTitle,
//       trade: trade,
//       inviteEmailOne: inviteEmailOne,
//       inviteEmailTwo: inviteEmailTwo,
//       requirements: requirements,
//       location: location,
//       startDate: startDate,
//       createdAt: createdAt,
//       applicationDeadLine: applicationDeadLine,
//       queriesDate: queriesDate,
//       submissionDate: submissionDate,
//       feedbackDate: feedbackDate,
//       awardDate: awardDate,
//       endDate: endDate,
//       rating: rating,
//       feedbackByContractor: false,
//       feedbackByDeveloper: false,
//       developerTWUser: developerTWUser,
//     );
//   }
//
//   Tender copyWithStatusComplete() {
//     return Tender(
//       tenderTimeLineStatus: tenderTimeLineStatus,
//       id: id,
//       tenderStatus: TenderStatus.Completed,
//       developmentId: developmentId,
//       developerId: developerId,
//       tenderTitle: tenderTitle,
//       trade: trade,
//       inviteEmailOne: inviteEmailOne,
//       inviteEmailTwo: inviteEmailTwo,
//       requirements: requirements,
//       location: location,
//       startDate: startDate,
//       createdAt: createdAt,
//       applicationDeadLine: applicationDeadLine,
//       queriesDate: queriesDate,
//       submissionDate: submissionDate,
//       feedbackDate: feedbackDate,
//       awardDate: awardDate,
//       endDate: endDate,
//       rating: rating,
//       feedbackByContractor: false,
//       feedbackByDeveloper: true,
//       developerTWUser: developerTWUser,
//     );
//   }
//
//   bool get isCompleted => tenderStatus == TenderStatus.Completed;
//
//   @override
//   List<Object?> get props => [
//         tenderTimeLineStatus,
//         id,
//         tenderStatus,
//         developmentId,
//         developerId,
//         tenderTitle,
//         trade,
//         inviteEmailOne,
//         inviteEmailTwo,
//         requirements,
//         location,
//         startDate,
//         createdAt,
//         applicationDeadLine,
//         queriesDate,
//         submissionDate,
//         feedbackDate,
//         awardDate,
//         endDate,
//         rating,
//         feedbackByContractor,
//         feedbackByDeveloper,
//         developerTWUser,
//       ];
//
//   Map<String, dynamic> toJson() => _$TenderToJson(this);
//
//   factory Tender.fromJson(Map<String, dynamic> json) => _$TenderFromJson(json);
//
//   @override
//   DateTime get createdOn => createdAt;
// }
