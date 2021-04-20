import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

import '../lat_lng_converter.dart';
import '../trades.dart';
import 'job_action.dart';
import 'job_status.dart';

part 'job.g.dart';

@JsonSerializable(explicitToJson: true)
@LatLngConverter()
class Job {
  final String jobId;

  final JobStatus status;

  String contractorId;
  String development;
  String title;
  String description;
  double hourlyRate;
  int hrsPerDay;
  DateTime startDate;
  DateTime endDate;
  DateTime postedOn;
  int applications;
  int subbiesWorking;
  int subbiesRequired;
  List<String> requirements;
  Trade trade;
  bool acceptingBids;
  LatLng latlng;
  String address;
  int totalUnseenBids;
  int refreshCounter;

  Job({
    @required this.jobId,
    @required this.status,
    @required this.totalUnseenBids,
    @required this.development,
    @required this.title,
    @required this.description,
    @required this.hourlyRate,
    @required this.applications,
    @required this.endDate,
    @required this.hrsPerDay,
    @required this.startDate,
    @required this.subbiesRequired,
    @required this.requirements,
    @required this.subbiesWorking,
    @required this.postedOn,
    @required this.acceptingBids,
    @required this.contractorId,
    @required this.trade,
    @required this.address,
    @required this.latlng,
    @required this.refreshCounter,
  });

  Map<String, dynamic> toJson() => _$JobToJson(this);
  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  String get shortDescription => description.length < 80
      ? description
      : description.substring(0, 70) + '...';

  get shortAddress =>
      address.length < 50 ? address : address.substring(0, 50) + '...';

  get shortTitle => title.length < 50 ? title : title.substring(0, 45) + '...';

  List<JobAction> get availableJobActions {
    if (status.value == 'JobStatuses.Active')
      return [
        JobAction(JobActions.toggleBidding,
            acceptingBids ? 'Stop Applications' : 'Resume Applications'),
        JobAction(JobActions.inviteFavourites, 'Invite Favourite Subbies'),
        JobAction(JobActions.jobComplete, 'Job Complete'),
      ];
  }
  // get _requirementsAsString {
  //   String result = '';
  //   for (String requirement in requirements) result += requirement + '#';
  //   return result.substring(0, result.length);
  // }

  // static _requirementsFromString(String value) {
  //   List<String> splits = value.split("#");
  //   splits.removeAt(splits.length - 1);
  //   return splits;
  // }

  // Map<String, dynamic> get map => {
  //       'job_id': id,
  //       'status': status.value,
  //       'development': development,
  //       'title': title,
  //       'description': description,
  //       'hrsPerDay': hrsPerDay,
  //       'hourlyRate': hourlyRate,
  //       'startDate': startDate.toString(),
  //       'endDate': endDate.toString(),
  //       'subbiesRequired': subbiesRequired,
  //       'total_unseen_bids': totalUnseenBids,
  //       'subbiesworking': subbiesWorking,
  //       'applications': applications,
  //       'requirements': _requirementsAsString,
  //       'jobPostedOn': postedOn.toString(),
  //       'trade': trade.text,
  //       'acceptingBids': acceptingBids,
  //       'contractorId': contractorId,
  //       'address': address,
  //       'lat': latlng.latitude.toString(),
  //       'lng': latlng.longitude.toString(),
  //       'refreshCounter': refreshCounter
  //     };

  // factory Job.fromMap(Map data) {
  //   List<String> requirements = [''];
  //   requirements = _requirementsFromString(data['requirements']);

  //   return Job(
  //       id: data['job_id'],
  //       status: JobStatus.fromString(data['status']),
  //       development: data['development'],
  //       title: data['title'],
  //       description: data['description'],
  //       startDate: DateTime.parse(data['startDate']),
  //       endDate: DateTime.parse(data['endDate']),
  //       hourlyRate: data['hourlyRate'],
  //       hrsPerDay: data['hrsPerDay'],
  //       applications: data['applications'],
  //       requirements: requirements,
  //       totalUnseenBids: data['total_unseen_bids'],
  //       subbiesRequired: data['subbiesRequired'],
  //       subbiesWorking: data['subbiesworking'],
  //       postedOn: DateTime.parse(data['jobPostedOn']),
  //       trade: Trade.fromJson({'text': data['trade']}),
  //       acceptingBids: data['acceptingBids'],
  //       address: data['address'],
  //       latlng:
  //           LatLng(double.tryParse(data['lat']), double.tryParse(data['lng'])),
  //       contractorId: data['contractorId'],
  //       refreshCounter: data['refreshCounter']);
  // }

}
