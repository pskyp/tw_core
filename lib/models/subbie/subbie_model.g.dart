// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subbie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subbie _$SubbieFromJson(Map<String, dynamic> json) => Subbie(
      invoicingDetails: json['invoicingDetails'] == null
          ? null
          : SubbieInvoicingDetails.fromJson(
              json['invoicingDetails'] as Map<String, dynamic>),
      basicProfile:
          TWUser.fromJson(json['basicProfile'] as Map<String, dynamic>),
      subscriptionToggledOn:
          DateTime.parse(json['subscriptionToggledOn'] as String),
      cscsQualifications: json['cscsQualifications'] as List<dynamic>,
      searchRadius: json['searchRadius'] as int,
      cscsValidTo: DateTime.parse(json['cscsValidTo'] as String),
      cscsVerified: json['cscsVerified'] as bool,
      subscribed: json['subscribed'] as bool,
      selectedTrades: (json['selectedTrades'] as List<dynamic>)
          .map((e) => Trade.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalJobs: json['totalJobs'] as int,
      totalProfessionalism: (json['totalProfessionalism'] as num).toDouble(),
      totalServiceQuality: (json['totalServiceQuality'] as num).toDouble(),
      totalTimeManagement: (json['totalTimeManagement'] as num).toDouble(),
    );

Map<String, dynamic> _$SubbieToJson(Subbie instance) => <String, dynamic>{
      'basicProfile': instance.basicProfile.toJson(),
      'totalJobs': instance.totalJobs,
      'subscribed': instance.subscribed,
      'searchRadius': instance.searchRadius,
      'cscsVerified': instance.cscsVerified,
      'cscsValidTo': instance.cscsValidTo.toIso8601String(),
      'cscsQualifications': instance.cscsQualifications,
      'invoicingDetails': instance.invoicingDetails?.toJson(),
      'subscriptionToggledOn': instance.subscriptionToggledOn.toIso8601String(),
      'selectedTrades': instance.selectedTrades.map((e) => e.toJson()).toList(),
      'totalServiceQuality': instance.totalServiceQuality,
      'totalProfessionalism': instance.totalProfessionalism,
      'totalTimeManagement': instance.totalTimeManagement,
    };
