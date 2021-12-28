part of 'job_detail_bloc.dart';

@freezed
class JobDetailState with _$JobDetailState {
  const factory JobDetailState({
    required Option<List<Invoice>> invoicesOption,
    required Option<List<JobBid>> bidsOption,
    required Job job,
  }) = _JobDetailState;

  factory JobDetailState.initial({required Job job}) => _JobDetailState(
        bidsOption: optionOf(null),
        invoicesOption: optionOf(null),
        job: job,
      );
}
