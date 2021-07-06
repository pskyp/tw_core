import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/tender/tender_model.dart';
import 'package:tw_core/models/trades.dart';

part 'development.g.dart';

@JsonSerializable(explicitToJson: true)
class Development extends Equatable {
  final String id;
  final String developerId;
  final String devTitle;
  final LocationModel location;
  final String description;

  const Development({
    required this.id,
    required this.developerId,
    required this.devTitle,
    required this.description,
    required this.location,
  });

  Map<String, dynamic> toJson() => _$DevelopmentToJson(this);
  factory Development.fromJson(Map<String, dynamic> json) =>
      _$DevelopmentFromJson(json);

  @override
  List<Object?> get props => [
        id,
        developerId,
        devTitle,
        location,
        description,
      ];
}

// Tender t = Tender(
//     requirements:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an',
//     endDate: DateTime.now(),
//     trade: Trade(Trades.Carpenter),
//     startDate: DateTime.now(),
//     tenderTitle: 'Tender for Carpenters');

// List<Tender> pseudoTenders = [t, t];
// Development dev = Development(
//     id: 'bb',
//     developerId: 'hjij',
//     devTitle: 'London Construction',
//     address: '80 Guild Street, London',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
//     tenders: pseudoTenders);

// Development dev2 = Development(
//     id: 'ibi',
//     developerId: 'edd',
//     devTitle: 'Fleet View Construction',
//     address: 'Famous street in Fleet View',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
//     tenders: pseudoTenders);

// List<Development> pseudoDevelopments = [dev, dev2];
