enum JobStatuses { Active, Completed }

class JobStatus {
  JobStatuses _status;

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
}
