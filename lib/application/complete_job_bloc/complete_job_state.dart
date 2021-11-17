part of 'complete_job_bloc.dart';

@freezed
class CompleteJobState with _$CompleteJobState {
  const CompleteJobState._();
  factory CompleteJobState({
    required Job job,
    required Option<KtList<JobBid>> allBidsOnJobOption,
    required List<JobBidFeedback> feedback,
  }) = _CompleteJobState;

  factory CompleteJobState.initial({
    required Job job,
  }) =>
      _CompleteJobState(
        job: job,
        allBidsOnJobOption: optionOf(null),
        feedback: [],
      );

  Option<KtList<JobBid>> get hiredBids {
    return allBidsOnJobOption.fold(
      () => optionOf(null),
      (allBidsOnJob) {
        List<JobBid> hiredBids = [];

        allBidsOnJob.forEach((bid) {
          if (bid.jobBidStatus == JobBidStatuses.Hired) {
            hiredBids.add(bid);
          }
        });

        return optionOf(KtList.from(hiredBids));
      },
    );
  }
}
