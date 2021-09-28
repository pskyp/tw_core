import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';
import 'package:tw_core/models/work/work.dart';

part 'supplement_bid.freezed.dart';

@freezed
class SupplementBid with _$SupplementBid implements WorkBid {
  const factory SupplementBid({
    required TWUser bidder,
    required String bidId,
    required WorkIdentifier workIdentifier,
  }) = _SupplementBid;
}

@freezed
class TenderBid with _$TenderBid implements WorkBid {
  const factory TenderBid({
    required TWUser bidder,
    required String bidId,
    required WorkIdentifier workIdentifier,
  }) = _TenderBid;
}

abstract class WorkBid {
  TWUser get bidder;
  WorkIdentifier get workIdentifier;
  String get bidId;
}

// @freezed
// class TSupplement with _$TSupplement implements Work {
//   const factory TSupplement({
//     required DateTime createdOn,
//     required WorkIdentifier identifier,
//   }) = _TSupplement;
// }
//
// @freezed
// class TTender with _$TTender implements Work {
//   const factory TTender({
//     required DateTime createdOn,
//     required WorkIdentifier identifier,
//   }) = _TTender;
// }

// @freezed
// class WorkBid with _$WorkBid {
//   const factory WorkBid({
//     required TWUser bidder,
//   }) = _WorkBid;
// }
