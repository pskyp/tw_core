import 'package:flutter/foundation.dart';

class InviteToBid {
  final String jobId;
  final String jobTitle;

  InviteToBid({@required this.jobId, @required this.jobTitle});

  factory InviteToBid.fromMap(Map data) {
    return InviteToBid(jobId: data['job_id'], jobTitle: data['job_title']);
  }
}
