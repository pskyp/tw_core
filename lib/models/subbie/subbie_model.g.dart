// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subbie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subbie _$$_SubbieFromJson(Map<String, dynamic> json) => _$_Subbie(
      basicProfile:
          TWUser.fromJson(json['basicProfile'] as Map<String, dynamic>),
      totalJobs: json['totalJobs'] as int,
      subscribed: json['subscribed'] as bool,
      searchRadius: json['searchRadius'] as int,
      cscsVerified: json['cscsVerified'] as bool,
      cscsValidTo: DateTime.parse(json['cscsValidTo'] as String),
      cscsQualifications: json['cscsQualifications'] as List<dynamic>,
      subscriptionToggledOn:
          DateTime.parse(json['subscriptionToggledOn'] as String),
      selectedTrades: (json['selectedTrades'] as List<dynamic>)
          .map((e) => Trade.fromJson(e as Map<String, dynamic>))
          .toList(),
      userBankDetails: json['userBankDetails'] == null
          ? null
          : UserBankDetails.fromJson(
              json['userBankDetails'] as Map<String, dynamic>),
      totalServiceQuality: (json['totalServiceQuality'] as num).toDouble(),
      totalProfessionalism: (json['totalProfessionalism'] as num).toDouble(),
      totalTimeManagement: (json['totalTimeManagement'] as num).toDouble(),
      soleTraderDetailsOption: soleTraderDetailsFromJson(
          json['soleTraderDetailsOption'] as Map<String, dynamic>),
      limitedCompanyDetailsOption: limitedCompanyDetailsFromJson(
          json['limitedCompanyDetailsOption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SubbieToJson(_$_Subbie instance) => <String, dynamic>{
      'basicProfile': instance.basicProfile.toJson(),
      'totalJobs': instance.totalJobs,
      'subscribed': instance.subscribed,
      'searchRadius': instance.searchRadius,
      'cscsVerified': instance.cscsVerified,
      'cscsValidTo': instance.cscsValidTo.toIso8601String(),
      'cscsQualifications': instance.cscsQualifications,
      'subscriptionToggledOn': instance.subscriptionToggledOn.toIso8601String(),
      'selectedTrades': instance.selectedTrades.map((e) => e.toJson()).toList(),
      'userBankDetails': instance.userBankDetails?.toJson(),
      'totalServiceQuality': instance.totalServiceQuality,
      'totalProfessionalism': instance.totalProfessionalism,
      'totalTimeManagement': instance.totalTimeManagement,
      'soleTraderDetailsOption':
          soleTraderDetailsToJson(instance.soleTraderDetailsOption),
      'limitedCompanyDetailsOption':
          limitedCompanyDetailsToJson(instance.limitedCompanyDetailsOption),
    };
