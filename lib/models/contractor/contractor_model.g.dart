// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contractor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contractor _$ContractorFromJson(Map<String, dynamic> json) {
  return Contractor(
    basicProfile: TWUser.fromJson(json['basicProfile'] as Map<String, dynamic>),
    subscriptionToggledOn:
        DateTime.parse(json['subscriptionToggledOn'] as String),
    savedJobRequirements: (json['savedJobRequirements'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    totalJobs: json['totalJobs'] as int,
    subscribed: json['subscribed'] as bool,
    totalRatings: json['totalRatings'] as int,
    totalCommunication: (json['totalCommunication'] as num).toDouble(),
    totalEnvironment: (json['totalEnvironment'] as num).toDouble(),
    totalReliability: (json['totalReliability'] as num).toDouble(),
  );
}

Map<String, dynamic> _$ContractorToJson(Contractor instance) =>
    <String, dynamic>{
      'basicProfile': instance.basicProfile.toJson(),
      'savedJobRequirements': instance.savedJobRequirements,
      'totalJobs': instance.totalJobs,
      'totalRatings': instance.totalRatings,
      'totalCommunication': instance.totalCommunication,
      'totalEnvironment': instance.totalEnvironment,
      'totalReliability': instance.totalReliability,
      'subscribed': instance.subscribed,
      'subscriptionToggledOn': instance.subscriptionToggledOn.toIso8601String(),
    };
