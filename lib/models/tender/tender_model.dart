import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../trades.dart';

part 'tender_model.g.dart';

@JsonSerializable(nullable: false)
class Tender extends Equatable {
  final String tenderTitle;
  final DateTime startDate;
  final DateTime endDate;
  final Trade trade;
  final String requirements;

  const Tender(
      {@required this.tenderTitle,
      @required this.trade,
      @required this.requirements,
      @required this.startDate,
      @required this.endDate});

  @override
  List<Object> get props => [tenderTitle, startDate, endDate];

  Map<String, dynamic> toJson() => _$TenderToJson(this);
  factory Tender.fromJson(Map<String, dynamic> json) => _$TenderFromJson(json);
}
