// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_bid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobBid _$$_JobBidFromJson(Map<String, dynamic> json) => _$_JobBid(
      bidIdentifier:
          BidIdentifier.fromJson(json['bidIdentifier'] as Map<String, dynamic>),
      jobBidStatus: $enumDecode(_$JobBidStatusesEnumMap, json['jobBidStatus']),
      feedback: json['feedback'] == null
          ? null
          : JobBidFeedback.fromJson(json['feedback'] as Map<String, dynamic>),
      feedbackProvidedToContractor:
          json['feedbackProvidedToContractor'] as bool,
      feedbackSkipped: json['feedbackSkipped'] as bool,
    );

Map<String, dynamic> _$$_JobBidToJson(_$_JobBid instance) => <String, dynamic>{
      'bidIdentifier': instance.bidIdentifier.toJson(),
      'jobBidStatus': _$JobBidStatusesEnumMap[instance.jobBidStatus],
      'feedback': instance.feedback?.toJson(),
      'feedbackProvidedToContractor': instance.feedbackProvidedToContractor,
      'feedbackSkipped': instance.feedbackSkipped,
    };

const _$JobBidStatusesEnumMap = {
  JobBidStatuses.New: 'New',
  JobBidStatuses.Negotiating: 'Negotiating',
  JobBidStatuses.Offered: 'Offered',
  JobBidStatuses.Hired: 'Hired',
  JobBidStatuses.Rejected: 'Rejected',
  JobBidStatuses.Old: 'Old',
};
