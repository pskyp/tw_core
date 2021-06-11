import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tw_core/models/tender/tender_model.dart';
import 'package:tw_core/models/trades.dart';

part 'development.g.dart';

@JsonSerializable(explicitToJson: true)
class Development {
  final String devTitle;
  final String address;
  final String description;
  final List<Tender> tenders;

  Development({
    required this.devTitle,
    required this.description,
    required this.address,
    required this.tenders,
  });

  Map<String, dynamic> toJson() => _$DevelopmentToJson(this);
  factory Development.fromJson(Map<String, dynamic> json) =>
      _$DevelopmentFromJson(json);
}

Tender t = Tender(
    requirements:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an',
    endDate: DateTime.now(),
    trade: Trade.fromTrades(Trades.Carpenter),
    startDate: DateTime.now(),
    tenderTitle: 'Tender for Carpenters');

List<Tender> pseudoTenders = [t, t];
Development dev = Development(
    devTitle: 'London Construction',
    address: '80 Guild Street, London',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    tenders: pseudoTenders);

Development dev2 = Development(
    devTitle: 'Fleet View Construction',
    address: 'Famous street in Fleet View',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    tenders: pseudoTenders);

List<Development> pseudoDevelopments = [dev, dev2];
