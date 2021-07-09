// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tender _$TenderFromJson(Map<String, dynamic> json) {
  return Tender(
    id: json['id'] as String,
    developmentId: json['developmentId'] as String,
    developerId: json['developerId'] as String,
    tenderTitle: json['tenderTitle'] as String,
    trade: Trade.fromJson(json['trade'] as Map<String, dynamic>),
    requirements: json['requirements'] as String,
    startDate: DateTime.parse(json['startDate'] as String),
    endDate: DateTime.parse(json['endDate'] as String),
    location: LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    timeline: TenderProcessTimeline.fromJson(
        json['timeline'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TenderToJson(Tender instance) => <String, dynamic>{
      'id': instance.id,
      'developmentId': instance.developmentId,
      'developerId': instance.developerId,
      'tenderTitle': instance.tenderTitle,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'trade': instance.trade.toJson(),
      'requirements': instance.requirements,
      'location': instance.location.toJson(),
      'timeline': instance.timeline.toJson(),
    };

TenderProcessTimeline _$TenderProcessTimelineFromJson(
    Map<String, dynamic> json) {
  return TenderProcessTimeline(
    openToQueries: DateTime.parse(json['openToQueries'] as String),
    submissionsDeadline: DateTime.parse(json['submissionsDeadline'] as String),
    feedbackDeadline: DateTime.parse(json['feedbackDeadline'] as String),
    awardDeadline: DateTime.parse(json['awardDeadline'] as String),
  );
}

Map<String, dynamic> _$TenderProcessTimelineToJson(
        TenderProcessTimeline instance) =>
    <String, dynamic>{
      'openToQueries': instance.openToQueries.toIso8601String(),
      'submissionsDeadline': instance.submissionsDeadline.toIso8601String(),
      'feedbackDeadline': instance.feedbackDeadline.toIso8601String(),
      'awardDeadline': instance.awardDeadline.toIso8601String(),
    };
