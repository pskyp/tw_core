import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

enum SubbyInvoiceStatuses { Draft, Sent, Paid, Reconciled, Overdue }
enum ContractorInvoiceStatuses {
  Unseen,
  Seen,
  Approved,
  Rejected,
  Paid,
  Reconsiled,
  Overdue
}

class SubbyInvoiceStatus extends Equatable {
  final SubbyInvoiceStatuses _status;
  SubbyInvoiceStatus(this._status);

  Map<String, dynamic> toJson() {
    return {'statusAsString': statusAsString};
  }

  String get statusAsString {
    String val = _status.toString();
    return val.substring(val.indexOf(".") + 1);
  }

  factory SubbyInvoiceStatus.fromJson(Map<String, dynamic> json) {
    switch (json['statusAsString']) {
      case 'Reconciled':
        return SubbyInvoiceStatus(SubbyInvoiceStatuses.Reconciled);

      case 'Sent':
        return SubbyInvoiceStatus(SubbyInvoiceStatuses.Sent);
      case 'Paid':
        return SubbyInvoiceStatus(SubbyInvoiceStatuses.Paid);
      case 'Overdue':
        return SubbyInvoiceStatus(SubbyInvoiceStatuses.Overdue);
      default:
        return SubbyInvoiceStatus(SubbyInvoiceStatuses.Draft);
    }
  }

  @override
  List<Object> get props => [_status];
}

class ContractorInvoiceStatus extends Equatable {
  final ContractorInvoiceStatuses _status;

  ContractorInvoiceStatus(this._status);
  Map<String, dynamic> toJson() {
    return {'statusAsString': statusAsString};
  }

  String get statusAsString {
    String val = _status.toString();
    return val.substring(val.indexOf(".") + 1);
  }

  factory ContractorInvoiceStatus.fromJson(Map<String, dynamic> json) {
    switch (json['statusAsString']) {
      case 'Reconciled':
        return ContractorInvoiceStatus(ContractorInvoiceStatuses.Reconsiled);

      case 'Seen':
        return ContractorInvoiceStatus(ContractorInvoiceStatuses.Seen);
      case 'Approved':
        return ContractorInvoiceStatus(ContractorInvoiceStatuses.Approved);
      case 'Rejected':
        return ContractorInvoiceStatus(ContractorInvoiceStatuses.Rejected);
      case 'Paid':
        return ContractorInvoiceStatus(ContractorInvoiceStatuses.Paid);
      case 'Overdue':
        return ContractorInvoiceStatus(ContractorInvoiceStatuses.Overdue);
      default:
        return ContractorInvoiceStatus(ContractorInvoiceStatuses.Unseen);
    }
  }


  get value => _status.toString();

  @override
  List<Object> get props => [_status];
}
