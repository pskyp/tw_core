import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

enum SubbyInvoiceStatuses { Draft, Sent, Paid, Reconciled }
enum ContractorInvoiceStatuses {
  Unseen,
  Seen,
  Approved,
  Rejected,
  Paid,
  Reconsiled
}

@immutable
class SubbyInvoiceStatus extends Equatable {
  final SubbyInvoiceStatuses _status;

  SubbyInvoiceStatus(this._status);

  factory SubbyInvoiceStatus.fromJson(Map<String, dynamic> json) {
    switch (json['status']) {
      case 'InvoiceStatuses.Reconciled':
        return SubbyInvoiceStatus(SubbyInvoiceStatuses.Reconciled);

      case 'InvoiceStatuses.Sent':
        return SubbyInvoiceStatus(SubbyInvoiceStatuses.Sent);
      case 'InvoiceStatuses.Paid':
        return SubbyInvoiceStatus(SubbyInvoiceStatuses.Paid);

      default:
        return SubbyInvoiceStatus(SubbyInvoiceStatuses.Draft);
    }
  }

  Map<String, dynamic> toJson() => {'status': _status.toString()};

  get value => _status.toString();

  @override
  List<Object> get props => [_status];
}

@immutable
class ContractorInvoiceStatus extends Equatable {
  final ContractorInvoiceStatuses _status;

  ContractorInvoiceStatus(this._status);

  factory ContractorInvoiceStatus.fromJson(Map<String, dynamic> json) {
    switch (json['status']) {
      case 'ContractorInvoiceStatus.Reconciled':
        return ContractorInvoiceStatus(ContractorInvoiceStatuses.Reconsiled);

      case 'ContractorInvoiceStatus.Seen':
        return ContractorInvoiceStatus(ContractorInvoiceStatuses.Seen);
      case 'ContractorInvoiceStatus.Approved':
        return ContractorInvoiceStatus(ContractorInvoiceStatuses.Approved);
      case 'ContractorInvoiceStatus.Rejected':
        return ContractorInvoiceStatus(ContractorInvoiceStatuses.Rejected);
      case 'ContractorInvoiceStatus.Paid':
        return ContractorInvoiceStatus(ContractorInvoiceStatuses.Paid);
      default:
        return ContractorInvoiceStatus(ContractorInvoiceStatuses.Unseen);
    }
  }

  Map<String, dynamic> toJson() => {'status': _status.toString()};

  get value => _status.toString();

  @override
  List<Object> get props => [_status];
}
