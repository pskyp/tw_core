// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tender _$TenderFromJson(Map<String, dynamic> json) => Tender(
      tenderTimeLineStatus: _$enumDecode(
          _$TenderTimeLineStatusEnumMap, json['tenderTimeLineStatus']),
      id: json['id'] as String,
      tenderStatus: _$enumDecode(_$TenderStatusEnumMap, json['tenderStatus']),
      developmentId: json['developmentId'] as String,
      developerId: json['developerId'] as String,
      tenderTitle: json['tenderTitle'] as String,
      trade: Trade.fromJson(json['trade'] as Map<String, dynamic>),
      inviteEmailOne: json['inviteEmailOne'] as String,
      inviteEmailTwo: json['inviteEmailTwo'] as String,
      requirements: json['requirements'] as String,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      applicationDeadLine:
          DateTime.parse(json['applicationDeadLine'] as String),
      queriesDate: DateTime.parse(json['queriesDate'] as String),
      submissionDate: DateTime.parse(json['submissionDate'] as String),
      feedbackDate: DateTime.parse(json['feedbackDate'] as String),
      awardDate: DateTime.parse(json['awardDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      rating: (json['rating'] as num).toDouble(),
      feedbackByContractor: json['feedbackByContractor'] as bool,
      feedbackByDeveloper: json['feedbackByDeveloper'] as bool,
      developerTWUser:
          TWUser.fromJson(json['developerTWUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TenderToJson(Tender instance) => <String, dynamic>{
      'tenderTimeLineStatus':
          _$TenderTimeLineStatusEnumMap[instance.tenderTimeLineStatus],
      'tenderStatus': _$TenderStatusEnumMap[instance.tenderStatus],
      'id': instance.id,
      'developmentId': instance.developmentId,
      'developerId': instance.developerId,
      'developerTWUser': instance.developerTWUser.toJson(),
      'tenderTitle': instance.tenderTitle,
      'inviteEmailOne': instance.inviteEmailOne,
      'inviteEmailTwo': instance.inviteEmailTwo,
      'trade': instance.trade.toJson(),
      'rating': instance.rating,
      'feedbackByDeveloper': instance.feedbackByDeveloper,
      'feedbackByContractor': instance.feedbackByContractor,
      'requirements': instance.requirements,
      'location': instance.location.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'applicationDeadLine': instance.applicationDeadLine.toIso8601String(),
      'queriesDate': instance.queriesDate.toIso8601String(),
      'submissionDate': instance.submissionDate.toIso8601String(),
      'feedbackDate': instance.feedbackDate.toIso8601String(),
      'awardDate': instance.awardDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$TenderTimeLineStatusEnumMap = {
  TenderTimeLineStatus.New: 'New',
  TenderTimeLineStatus.OpenToQueries: 'OpenToQueries',
  TenderTimeLineStatus.Submission: 'Submission',
  TenderTimeLineStatus.Feedback: 'Feedback',
  TenderTimeLineStatus.Awarding: 'Awarding',
};

const _$TenderStatusEnumMap = {
  TenderStatus.New: 'New',
  TenderStatus.Invited: 'Invited',
  TenderStatus.Awarded: 'Awarded',
  TenderStatus.Completed: 'Completed',
};
