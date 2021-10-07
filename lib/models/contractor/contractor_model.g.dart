// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contractor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Contractor _$$_ContractorFromJson(Map<String, dynamic> json) =>
    _$_Contractor(
      basicProfile:
          TWUser.fromJson(json['basicProfile'] as Map<String, dynamic>),
      savedJobRequirements: (json['savedJobRequirements'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      totalJobs: json['totalJobs'] as int,
      totalRatings: json['totalRatings'] as int,
      totalCommunication: (json['totalCommunication'] as num).toDouble(),
      totalEnvironment: (json['totalEnvironment'] as num).toDouble(),
      totalReliability: (json['totalReliability'] as num).toDouble(),
      subscribed: json['subscribed'] as bool,
      subscriptionToggledOn:
          DateTime.parse(json['subscriptionToggledOn'] as String),
      userBio: json['userBio'] == null
          ? null
          : UserBio.fromJson(json['userBio'] as Map<String, dynamic>),
      portfolioDocument: json['portfolioDocument'] == null
          ? null
          : TWDocument.fromJson(
              json['portfolioDocument'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ContractorToJson(_$_Contractor instance) =>
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
      'userBio': instance.userBio?.toJson(),
      'portfolioDocument': instance.portfolioDocument?.toJson(),
    };
