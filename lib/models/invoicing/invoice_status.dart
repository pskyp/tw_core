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

enum InvoiceStatus {
  draft,
  sent,
  unseen,
  seen,
  approved,
  rejected,
  paid,
  reconciled,
  overdue,
}
