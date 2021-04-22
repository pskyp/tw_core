import 'package:equatable/equatable.dart';

enum BidStatuses { New, Negotiating, Offered, Hired, Rejected, Old }

class BidStatus extends Equatable {
  final BidStatuses status;
  BidStatus(this.status);

  Map<String, dynamic> toJson() {
    return {'statusAsString': statusAsString};
  }

  String get statusAsString {
    String val = status.toString();
    return val.substring(val.indexOf(".") + 1);
  }

  factory BidStatus.fromJson(Map<String, dynamic> json) {
    switch (json['statusAsString']) {
      case 'Hired':
        return BidStatus(BidStatuses.Hired);
      case 'Negotiating':
        return BidStatus(BidStatuses.Negotiating);
      case 'Offered':
        return BidStatus(BidStatuses.Offered);
      case 'Rejected':
        return BidStatus(BidStatuses.Rejected);
      case 'Old':
        return BidStatus(BidStatuses.Old);
      default:
        return BidStatus(BidStatuses.New);
    }
  }

  @override
  List<Object> get props => [status];
}
