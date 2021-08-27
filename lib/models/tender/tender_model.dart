import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/location/location_model.dart';

import '../trades.dart';

part 'tender_model.g.dart';

enum TenderTimeLineStatus { New, OpenToQueries, Submission, Feedback, Awarding }
enum TenderStatus { New, Invited, Awarded, Completed }

@JsonSerializable(explicitToJson: true)
class Tender extends Equatable {
  final TenderTimeLineStatus tenderTimeLineStatus;
  final TenderStatus tenderStatus;
  final String id;
  final String developmentId;
  final String developerId;
  final String tenderTitle;
  final String inviteEmailOne;
  final String inviteEmailTwo;
  final Trade trade;
  final String requirements;
  final LocationModel location;
  final DateTime startDate,
      createdAt,
      applicationDeadLine,
      queriesDate,
      submissionDate,
      feedbackDate,
      awardDate,
      endDate;
  // final TenderTimeline timeline;

  const Tender({
    required this.tenderTimeLineStatus,
    required this.id,
    required this.tenderStatus,
    required this.developmentId,
    required this.developerId,
    required this.tenderTitle,
    required this.trade,
    required this.inviteEmailOne,
    required this.inviteEmailTwo,
    required this.requirements,
    required this.location,
    required this.startDate,
    required this.createdAt,
    required this.applicationDeadLine,
    required this.queriesDate,
    required this.submissionDate,
    required this.feedbackDate,
    required this.awardDate,
    required this.endDate,
  });

  Tender copyWithStatusInvited() {
    return Tender(
      tenderTimeLineStatus: tenderTimeLineStatus,
      id: id,
      tenderStatus: TenderStatus.Invited,
      developmentId: developmentId,
      developerId: developerId,
      tenderTitle: tenderTitle,
      trade: trade,
      inviteEmailOne: inviteEmailOne,
      inviteEmailTwo: inviteEmailTwo,
      requirements: requirements,
      location: location,
      startDate: startDate,
      createdAt: createdAt,
      applicationDeadLine: applicationDeadLine,
      queriesDate: queriesDate,
      submissionDate: submissionDate,
      feedbackDate: feedbackDate,
      awardDate: awardDate,
      endDate: endDate,
    );
  }

  Tender copyWithStatusAwarded() {
    return Tender(
      tenderTimeLineStatus: tenderTimeLineStatus,
      id: id,
      tenderStatus: TenderStatus.Awarded,
      developmentId: developmentId,
      developerId: developerId,
      tenderTitle: tenderTitle,
      trade: trade,
      inviteEmailOne: inviteEmailOne,
      inviteEmailTwo: inviteEmailTwo,
      requirements: requirements,
      location: location,
      startDate: startDate,
      createdAt: createdAt,
      applicationDeadLine: applicationDeadLine,
      queriesDate: queriesDate,
      submissionDate: submissionDate,
      feedbackDate: feedbackDate,
      awardDate: awardDate,
      endDate: endDate,
    );
  }

  @override
  List<Object> get props => [
        tenderTimeLineStatus,
        id,
        tenderStatus,
        developmentId,
        developerId,
        trade,
        inviteEmailOne,
        inviteEmailTwo,
        requirements,
        tenderTitle,
        location,
        startDate,
        createdAt,
        applicationDeadLine,
        queriesDate,
        submissionDate,
        feedbackDate,
        awardDate,
        endDate,
      ];

  Map<String, dynamic> toJson() => _$TenderToJson(this);
  factory Tender.fromJson(Map<String, dynamic> json) => _$TenderFromJson(json);
}
