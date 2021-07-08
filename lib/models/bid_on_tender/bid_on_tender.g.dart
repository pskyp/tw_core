// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_on_tender.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BidOnTender _$BidOnTenderFromJson(Map<String, dynamic> json) {
  return BidOnTender(
    companyName: json['companyName'] as String,
    rating: (json['rating'] as num).toDouble(),
  );
}

Map<String, dynamic> _$BidOnTenderToJson(BidOnTender instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'rating': instance.rating,
    };
