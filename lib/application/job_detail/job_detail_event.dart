part of 'job_detail_bloc.dart';

@freezed
class JobDetailEvent with _$JobDetailEvent {
  const factory JobDetailEvent.streamInvoicesUpdated(
    List<Invoice> invoices,
  ) = StreamInvoicesUpdated;

  const factory JobDetailEvent.streamJobUpdated(
    Job job,
  ) = StreamJobUpdated;

  const factory JobDetailEvent.bidsStreamUpdated(
    List<JobBid> bids,
  ) = BidsStreamUpdated;
}
