import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/developer/developer.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/trades.dart';
import 'package:tw_core/models/work/work.dart';

part 'supplement_model.freezed.dart';
part 'supplement_model.g.dart';

enum SupplementStatus { Active, Completed }

@freezed
class Supplement with _$Supplement implements Work {
  const factory Supplement({
    required WorkIdentifier workIdentifier,
    required String developmentId,
    required String developerId,
    required SupplementStatus status,
    required Developer developer,
    required String developmentTitle,
    required String title,
    required String description,
    required double hourlyRate,
    required int hrsPerDay,
    required DateTime startDate,
    required DateTime endDate,
    required DateTime createdOn,
    required int applications,
    required int subbiesWorking,
    required int subbiesRequired,
    required String requirements,
    required Trade trade,
    required bool acceptingBids,
    required int totalUnseenBids,
    required LocationModel location,
  }) = _Supplement;

  factory Supplement.fromJson(Map<String, dynamic> json) =>
      _$SupplementFromJson(json);
}

// @JsonSerializable(explicitToJson: true)
// class Supplement implements Work {
//   final SupplementStatus status;
//   final Developer developer;
//   final String development;
//   final String developmentId;
//   final String title;
//   final String description;
//   final double hourlyRate;
//   final int hrsPerDay;
//   final DateTime startDate;
//   final DateTime endDate;
//   final DateTime createdOn;
//   final int applications;
//   final int subbiesWorking;
//   final int subbiesRequired;
//   final String requirements;
//   final Trade trade;
//   final bool acceptingBids;
//   final int totalUnseenBids;
//   final int refreshCounter;
//   final LocationModel location;
//
//   Supplement({
//     required this.status,
//     required this.developer,
//     required this.development,
//     required this.title,
//     required this.description,
//     required this.hourlyRate,
//     required this.hrsPerDay,
//     required this.startDate,
//     required this.endDate,
//     required this.createdOn,
//     required this.applications,
//     required this.subbiesWorking,
//     required this.subbiesRequired,
//     required this.requirements,
//     required this.trade,
//     required this.acceptingBids,
//     required this.totalUnseenBids,
//     required this.refreshCounter,
//     required this.location,
//     required this.developmentId,
//   });
//
//   Map<String, dynamic> toJson() => _$SupplementToJson(this);
//   factory Supplement.fromJson(Map<String, dynamic> json) =>
//       _$SupplementFromJson(json);
//
//   get shortAddress => location.completeAddress.length < 50
//       ? location.completeAddress
//       : location.completeAddress.substring(0, 50) + '...';
//
//   Supplement updateJob({
//     String? development,
//     String? title,
//     String? description,
//     double? hourlyRate,
//     DateTime? endDate,
//     DateTime? startDate,
//     int? subbiesRequired,
//     String? requirements,
//     Trade? trade,
//     LocationModel? location,
//   }) {
//     return Supplement(
//       developmentId: this.developmentId,
//       developer: this.developer,
//       status: this.status,
//       totalUnseenBids: this.totalUnseenBids,
//       applications: this.applications,
//       hrsPerDay: this.hrsPerDay,
//       subbiesWorking: this.subbiesWorking,
//       createdOn: this.createdOn,
//       acceptingBids: this.acceptingBids,
//       refreshCounter: this.refreshCounter,
//       location: location ?? this.location,
//       title: title ?? this.title,
//       description: description ?? this.description,
//       hourlyRate: hourlyRate ?? this.hourlyRate,
//       endDate: endDate ?? this.endDate,
//       startDate: startDate ?? this.startDate,
//       subbiesRequired: subbiesRequired ?? this.subbiesRequired,
//       development: development ?? this.development,
//       requirements: requirements ?? this.requirements,
//       trade: trade ?? this.trade,
//     );
//   }
// }
