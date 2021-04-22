import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

enum JobStatuses { Active, Completed }

@immutable
class JobStatus extends Equatable {
  final JobStatuses _status;

  JobStatus(this._status);

  factory JobStatus.fromJson(Map<String, dynamic> json) {
    switch (json['status']) {
      case 'JobStatuses.Active':
        return JobStatus(JobStatuses.Active);
      default:
        return JobStatus(JobStatuses.Completed);
    }
  }

  Map<String, dynamic> toJson() => {'status': _status.toString()};

  get value => _status.toString();

  @override
  List<Object> get props => [_status];
}
