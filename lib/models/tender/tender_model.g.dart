// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tender _$$_TenderFromJson(Map<String, dynamic> json) => _$_Tender(
      workIdentifier: WorkIdentifier.fromJson(
          json['workIdentifier'] as Map<String, dynamic>),
      createdOn: DateTime.parse(json['createdOn'] as String),
      developerId: json['developerId'] as String,
      tenderStatus: $enumDecode(_$TenderStatusEnumMap, json['tenderStatus']),
      inviteEmailOne: json['inviteEmailOne'] as String?,
      inviteEmailTwo: json['inviteEmailTwo'] as String?,
      trade: Trade.fromJson(json['trade'] as Map<String, dynamic>),
      requirements: json['requirements'] as String,
      instructions: json['instructions'] as String,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      applicationDeadLine:
          DateTime.parse(json['applicationDeadLine'] as String),
      queriesDate: DateTime.parse(json['queriesDate'] as String),
      submissionDate: DateTime.parse(json['submissionDate'] as String),
      feedbackDate: DateTime.parse(json['feedbackDate'] as String),
      awardDate: DateTime.parse(json['awardDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      tenderTimeLineStatus: $enumDecode(
          _$TenderTimeLineStatusEnumMap, json['tenderTimeLineStatus']),
      feedbackByDeveloper: json['feedbackByDeveloper'] as bool,
      feedbackByContractor: json['feedbackByContractor'] as bool,
      feedback: (json['feedback'] as List<dynamic>?)
          ?.map((e) => TenderFeedback.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TenderToJson(_$_Tender instance) => <String, dynamic>{
      'workIdentifier': instance.workIdentifier.toJson(),
      'createdOn': instance.createdOn.toIso8601String(),
      'developerId': instance.developerId,
      'tenderStatus': _$TenderStatusEnumMap[instance.tenderStatus],
      'inviteEmailOne': instance.inviteEmailOne,
      'inviteEmailTwo': instance.inviteEmailTwo,
      'trade': instance.trade.toJson(),
      'requirements': instance.requirements,
      'instructions': instance.instructions,
      'location': instance.location.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'applicationDeadLine': instance.applicationDeadLine.toIso8601String(),
      'queriesDate': instance.queriesDate.toIso8601String(),
      'submissionDate': instance.submissionDate.toIso8601String(),
      'feedbackDate': instance.feedbackDate.toIso8601String(),
      'awardDate': instance.awardDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'tenderTimeLineStatus':
          _$TenderTimeLineStatusEnumMap[instance.tenderTimeLineStatus],
      'feedbackByDeveloper': instance.feedbackByDeveloper,
      'feedbackByContractor': instance.feedbackByContractor,
      'feedback': instance.feedback?.map((e) => e.toJson()).toList(),
    };

const _$TenderStatusEnumMap = {
  TenderStatus.UnAwarded: 'UnAwarded',
  TenderStatus.Awarded: 'Awarded',
  TenderStatus.Completed: 'Completed',
};

const _$TenderTimeLineStatusEnumMap = {
  TenderTimeLineStatus.New: 'New',
  TenderTimeLineStatus.OpenToQueries: 'OpenToQueries',
  TenderTimeLineStatus.Submission: 'Submission',
  TenderTimeLineStatus.Feedback: 'Feedback',
  TenderTimeLineStatus.Awarding: 'Awarding',
};
