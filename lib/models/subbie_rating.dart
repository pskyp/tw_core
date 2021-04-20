import 'package:flutter/foundation.dart';

class SubbieRating {
  double serviceQuality;
  double professionalism;
  double timeManagement;

  SubbieRating({
    @required this.serviceQuality,
    @required this.professionalism,
    @required this.timeManagement,
  });

  factory SubbieRating.fromMap(Map data) => SubbieRating(
        professionalism: data['professionalism'],
        serviceQuality: data['serviceQuality'],
        timeManagement: data['timeManagement'],
      );

  get map => {
        'serviceQuality': serviceQuality,
        'professionalism': professionalism,
        'timeManagement': timeManagement
      };
}
