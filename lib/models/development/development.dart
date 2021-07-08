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

@JsonSerializable()
class DevelopmentDoc extends Equatable {
  final String docName;
  final String docPath;

  DevelopmentDoc({
    required this.docName,
    required this.docPath,
  });

  @override
  List<Object?> get props => [
        docName,
        docPath,
      ];
  Map<String, dynamic> toJson() => _$DevelopmentDocToJson(this);
  factory DevelopmentDoc.fromJson(Map<String, dynamic> json) =>
      _$DevelopmentDocFromJson(json);
}
