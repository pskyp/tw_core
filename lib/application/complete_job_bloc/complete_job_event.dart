part of 'complete_job_bloc.dart';

@freezed
class CompleteJobEvent with _$CompleteJobEvent {
  factory CompleteJobEvent.bidsOnJobFetched(List<JobBid> bids) =
      BidsOnJobFetched;

  factory CompleteJobEvent.submitPressed(List<JobBidFeedback> feedback) =
      SubmitPressed;
}
