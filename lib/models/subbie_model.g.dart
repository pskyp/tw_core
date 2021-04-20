// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subbie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subbie _$SubbieFromJson(Map<String, dynamic> json) {
  return Subbie(
    basicProfile: json['basicProfile'] == null
        ? null
        : TWUser.fromJson(json['basicProfile'] as Map<String, dynamic>),
    subscriptionToggledOn: json['subscriptionToggledOn'] == null
        ? null
        : DateTime.parse(json['subscriptionToggledOn'] as String),
    cscsQualifications: json['cscsQualifications'] as List,
    cscsValidTo: json['cscsValidTo'] == null
        ? null
        : DateTime.parse(json['cscsValidTo'] as String),
    cscsVerified: json['cscsVerified'] as bool,
    subscribed: json['subscribed'] as bool,
    selectedTrades: (json['selectedTrades'] as List)
        ?.map(
            (e) => e == null ? null : Trade.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    totalJobs: json['totalJobs'] as int,
    totalProfessionalism: (json['totalProfessionalism'] as num)?.toDouble(),
    totalServiceQuality: (json['totalServiceQuality'] as num)?.toDouble(),
    totalTimeManagement: (json['totalTimeManagement'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$SubbieToJson(Subbie instance) => <String, dynamic>{
      'basicProfile': instance.basicProfile?.toJson(),
      'totalJobs': instance.totalJobs,
      'subscribed': instance.subscribed,
      'cscsVerified': instance.cscsVerified,
      'cscsValidTo': instance.cscsValidTo?.toIso8601String(),
      'cscsQualifications': instance.cscsQualifications,
      'subscriptionToggledOn':
          instance.subscriptionToggledOn?.toIso8601String(),
      'selectedTrades':
          instance.selectedTrades?.map((e) => e?.toJson())?.toList(),
      'totalServiceQuality': instance.totalServiceQuality,
      'totalProfessionalism': instance.totalProfessionalism,
      'totalTimeManagement': instance.totalTimeManagement,
    };
