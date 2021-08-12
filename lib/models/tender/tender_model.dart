import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/email/email.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/tender/tender_timeline.dart';

import '../trades.dart';
part 'tender_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Tender extends Equatable {
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
      queriesDate,
      submissionDate,
      feedbackDate,
      awardDate,
      endDate;
  // final TenderTimeline timeline;

  const Tender({
    required this.id,
    required this.developmentId,
    required this.developerId,
    required this.tenderTitle,
    required this.trade,
    required this.inviteEmailOne,
    required this.inviteEmailTwo,
    required this.requirements,
    required this.location,
    required this.startDate,
    required this.queriesDate,
    required this.submissionDate,
    required this.feedbackDate,
    required this.awardDate,
    required this.endDate,
  });

  @override
  List<Object> get props => [
        id,
        developmentId,
        developerId,
        trade,
        inviteEmailOne,
        inviteEmailTwo,
        requirements,
        tenderTitle,
        location,
        startDate,
        queriesDate,
        submissionDate,
        feedbackDate,
        awardDate,
        endDate,
      ];

  Map<String, dynamic> toJson() => _$TenderToJson(this);
  factory Tender.fromJson(Map<String, dynamic> json) => _$TenderFromJson(json);
}
