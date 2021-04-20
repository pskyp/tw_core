import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'trades.dart';
import 'tw_user.dart';

part 'subbie_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Subbie {
  TWUser basicProfile;
  final int totalJobs;
  final bool subscribed;
  bool cscsVerified;
  DateTime cscsValidTo;
  List<dynamic> cscsQualifications;
  final DateTime subscriptionToggledOn;
  final List<Trade> selectedTrades;
  final double totalServiceQuality, totalProfessionalism, totalTimeManagement;

  Subbie({
    @required this.basicProfile,
    @required this.subscriptionToggledOn,
    @required this.cscsQualifications,
    @required this.cscsValidTo,
    @required this.cscsVerified,
    @required this.subscribed,
    @required this.selectedTrades,
    @required this.totalJobs,
    @required this.totalProfessionalism,
    @required this.totalServiceQuality,
    @required this.totalTimeManagement,
  });

  Map<String, dynamic> toJson() => _$SubbieToJson(this);
  factory Subbie.fromJson(Map<String, dynamic> json) => _$SubbieFromJson(json);

  //if total jobs are 0 we should not get NaN error
  //due to division by zero
  double get rating {
    return (totalTimeManagement + totalServiceQuality + totalProfessionalism) /
        (totalJobs == 0 ? 1 : totalJobs);
  }

  double get serviceQualityRating =>
      totalServiceQuality / (totalJobs == 0 ? 1 : totalJobs);

  double get professionalismRating =>
      totalProfessionalism / (totalJobs == 0 ? 1 : totalJobs);

  double get timeManagementRating =>
      totalTimeManagement / (totalJobs == 0 ? 1 : totalJobs);

  // factory Subbie.fromMap(Map data) => Subbie(
  //     basicProfile: BasicProfile.fromMap(data),
  //     subscriptionToggledOn: DateTime.parse(data['subscription_toggled_on']),
  //     totalJobs: data['total_jobs'],
  //     subscribed: data['subscribed'],
  //     cscsValidTo: DateTime.parse(data['cscsValidTo']),
  //     cscsVerified: data['cscsVerified'],
  //     cscsQualifications: json.decode(data['cscsQualifications']),
  //     selectedTrades: _selectedTradesFromString(data['selected_trades']),
  //     totalProfessionalism: data['total_professionalism'],
  //     totalServiceQuality: data['total_service_quality'],
  //     totalTimeManagement: data['total_time_management']);

  // get _selectedTradesAsString {
  //   String result = '';
  //   for (final trade in selectedTrades) result += trade.text + '#';
  //   return result.substring(0, result.length);
  // }

  // static _selectedTradesFromString(String value) {
  //   List<String> tradeNames = value.split("#");
  //   tradeNames.removeAt(tradeNames.length - 1);
  //   List<Trade> trades = List<Trade>();
  //   for (String name in tradeNames) trades.add(Trade.fromString(name));
  //   return trades;
  // }

  // get map {
  //   Map<String, dynamic> basicMap = basicProfile.map;
  //   Map<String, dynamic> otherDataMap = {
  //     'total_jobs': totalJobs,
  //     'total_professionalism': totalProfessionalism,
  //     'total_service_quality': totalServiceQuality,
  //     'total_time_management': totalTimeManagement,
  //     'subscribed': subscribed,
  //     'selected_trades': _selectedTradesAsString,
  //     'cscsValidTo': cscsValidTo.toString(),
  //     'cscsVerified': cscsVerified,
  //     'cscsQualifications': json.encode(cscsQualifications),
  //     'subscription_toggled_on': subscriptionToggledOn.toString()
  //   };
  //   return [basicMap, otherDataMap].reduce((map1, map2) => map1..addAll(map2));
  // }

}
