// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Job _$JobFromJson(Map<String, dynamic> json) {
  return Job(
    jobId: json['jobId'] as String,
    status: json['status'] == null
        ? null
        : JobStatus.fromJson(json['status'] as Map<String, dynamic>),
    totalUnseenBids: json['totalUnseenBids'] as int,
    development: json['development'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    hourlyRate: (json['hourlyRate'] as num)?.toDouble(),
    applications: json['applications'] as int,
    endDate: json['endDate'] == null
        ? null
        : DateTime.parse(json['endDate'] as String),
    hrsPerDay: json['hrsPerDay'] as int,
    startDate: json['startDate'] == null
        ? null
        : DateTime.parse(json['startDate'] as String),
    subbiesRequired: json['subbiesRequired'] as int,
    requirements:
        (json['requirements'] as List)?.map((e) => e as String)?.toList(),
    subbiesWorking: json['subbiesWorking'] as int,
    postedOn: json['postedOn'] == null
        ? null
        : DateTime.parse(json['postedOn'] as String),
    acceptingBids: json['acceptingBids'] as bool,
    contractorId: json['contractorId'] as String,
    trade: json['trade'] == null
        ? null
        : Trade.fromJson(json['trade'] as Map<String, dynamic>),
    address: json['address'] as String,
    latlng: const LatLngConverter().fromJson(json['latlng'] as List),
    refreshCounter: json['refreshCounter'] as int,
  );
}

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'jobId': instance.jobId,
      'status': instance.status?.toJson(),
      'contractorId': instance.contractorId,
      'development': instance.development,
      'title': instance.title,
      'description': instance.description,
      'hourlyRate': instance.hourlyRate,
      'hrsPerDay': instance.hrsPerDay,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'postedOn': instance.postedOn?.toIso8601String(),
      'applications': instance.applications,
      'subbiesWorking': instance.subbiesWorking,
      'subbiesRequired': instance.subbiesRequired,
      'requirements': instance.requirements,
      'trade': instance.trade?.toJson(),
      'acceptingBids': instance.acceptingBids,
      'latlng': const LatLngConverter().toJson(instance.latlng),
      'address': instance.address,
      'totalUnseenBids': instance.totalUnseenBids,
      'refreshCounter': instance.refreshCounter,
    };
