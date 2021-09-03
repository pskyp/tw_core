import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/core/supplement_objects/date_validator.dart';
import 'package:tw_core/models/developer/developer.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/person/person.dart';
import 'package:tw_core/models/trades.dart';

part 'supplement_model.g.dart';

enum SupplementStatus { Active, Completed }

@JsonSerializable(explicitToJson: true)
class Supplement {
  final SupplementStatus status;
  final Developer developer;
  final String development;
  final String title;
  final String description;
  final double hourlyRate;
  final int hrsPerDay;
  final DateTime startDate;
  final DateTime endDate;
  final DateTime postedOn;
  final int applications;
  final int subbiesWorking;
  final int subbiesRequired;
  final String requirements;
  final Trade trade;
  final bool acceptingBids;
  final int totalUnseenBids;
  final int refreshCounter;
  final LocationModel location;

  Supplement({
    required this.status,
    required this.developer,
    required this.development,
    required this.title,
    required this.description,
    required this.hourlyRate,
    required this.hrsPerDay,
    required this.startDate,
    required this.endDate,
    required this.postedOn,
    required this.applications,
    required this.subbiesWorking,
    required this.subbiesRequired,
    required this.requirements,
    required this.trade,
    required this.acceptingBids,
    required this.totalUnseenBids,
    required this.refreshCounter,
    required this.location,
  });


  Map<String, dynamic> toJson() => _$SupplementToJson(this);
  factory Supplement.fromJson(Map<String, dynamic> json) => _$SupplementFromJson(json);


  get shortAddress => location.completeAddress.length < 50
      ? location.completeAddress
      : location.completeAddress.substring(0, 50) + '...';

  Supplement updateJob({
    String? development,
    String? title,
    String? description,
    double? hourlyRate,
    DateTime? endDate,
    DateTime? startDate,
    int? subbiesRequired,
    String? requirements,
    Trade? trade,
    LocationModel? location,
  }) {
    return Supplement(
      developer: this.developer,
      status: this.status,
      totalUnseenBids: this.totalUnseenBids,
      applications: this.applications,
      hrsPerDay: this.hrsPerDay,
      subbiesWorking: this.subbiesWorking,
      postedOn: this.postedOn,
      acceptingBids: this.acceptingBids,
      refreshCounter: this.refreshCounter,
      location: location ?? this.location,
      title: title ?? this.title,
      description: description ?? this.description,
      hourlyRate: hourlyRate ?? this.hourlyRate,
      endDate: endDate ?? this.endDate,
      startDate: startDate ?? this.startDate,
      subbiesRequired: subbiesRequired ?? this.subbiesRequired,
      development: development ?? this.development,
      requirements: requirements ?? this.requirements,
      trade: trade ?? this.trade,
    );
  }


}
