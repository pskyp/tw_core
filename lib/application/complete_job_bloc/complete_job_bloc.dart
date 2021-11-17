import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:tw_core/models/bid/job_bid.dart';
import 'package:tw_core/models/feedback/bid_feedback/job_bid_feedback/job_bid_feedback.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/services/taj_facade.dart';

part 'complete_job_bloc.freezed.dart';
part 'complete_job_event.dart';
part 'complete_job_state.dart';

class CompleteJobBloc extends Bloc<CompleteJobEvent, CompleteJobState> {
  StreamSubscription? streamAllBidsForJob;
  CompleteJobBloc({
    required Job job,
  }) : super(CompleteJobState.initial(job: job)) {
    streamAllBidsForJob = TAJContractor()
        .streamBidsOnJob(job.workIdentifier.workId)
        .listen((event) {
      add(CompleteJobEvent.bidsOnJobFetched(event));
    });
    on<SubmitPressed>((event, emit) {
      List<JobBidFeedback> feedback = event.feedback;
      // for (int i = 0; i < state.hiredBids.size; i++) {
      //   bidReviews.add(JobBidFeedback(
      //     bidIdentifier: hiredBids[i].bidIdentifier,
      //     rating: hiredSubbieRatings[i],
      //   ));
      // }
      TAJContractor().onJobComplete(
        job: state.job,
        jobBidsFeedbacks: event.feedback,
      );
    });

    on<BidsOnJobFetched>((event, emit) {
      emit(
        state.copyWith(
          allBidsOnJobOption: optionOf(KtList.from(event.bids)),
        ),
      );
      Option<KtList<JobBid>> hiredBids = state.hiredBids;

      // List<JobBidFeedback>
    });
  }
}
