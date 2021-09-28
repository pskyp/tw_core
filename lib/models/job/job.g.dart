// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Job _$$_JobFromJson(Map<String, dynamic> json) => _$_Job(
      workIdentifier: WorkIdentifier.fromJson(
          json['workIdentifier'] as Map<String, dynamic>),
      createdOn: DateTime.parse(json['createdOn'] as String),
      contractorId: json['contractorId'] as String,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      trade: Trade.fromJson(json['trade'] as Map<String, dynamic>),
      status: JobStatus.fromJson(json['status'] as Map<String, dynamic>),
      totalUnseenBids: json['totalUnseenBids'] as int,
      developmentTitle: json['developmentTitle'] as String,
      description: json['description'] as String,
      hourlyRate: (json['hourlyRate'] as num).toDouble(),
      applications: json['applications'] as int,
      subbiesRequired: json['subbiesRequired'] as int,
      subbiesWorking: json['subbiesWorking'] as int,
      endDate: DateTime.parse(json['endDate'] as String),
      hrsPerDay: json['hrsPerDay'] as int,
      startDate: DateTime.parse(json['startDate'] as String),
      requirements: (json['requirements'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      acceptingBids: json['acceptingBids'] as bool,
    );

Map<String, dynamic> _$$_JobToJson(_$_Job instance) => <String, dynamic>{
      'workIdentifier': instance.workIdentifier.toJson(),
      'createdOn': instance.createdOn.toIso8601String(),
      'contractorId': instance.contractorId,
      'location': instance.location.toJson(),
      'trade': instance.trade.toJson(),
      'status': instance.status.toJson(),
      'totalUnseenBids': instance.totalUnseenBids,
      'developmentTitle': instance.developmentTitle,
      'description': instance.description,
      'hourlyRate': instance.hourlyRate,
      'applications': instance.applications,
      'subbiesRequired': instance.subbiesRequired,
      'subbiesWorking': instance.subbiesWorking,
      'endDate': instance.endDate.toIso8601String(),
      'hrsPerDay': instance.hrsPerDay,
      'startDate': instance.startDate.toIso8601String(),
      'requirements': instance.requirements,
      'acceptingBids': instance.acceptingBids,
    };
