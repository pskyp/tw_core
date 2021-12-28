import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:tw_core/models/bid/job_bid.dart';
import 'package:tw_core/models/invoicing/invoice_model.dart';
import 'package:tw_core/models/job/job.dart';
import 'package:tw_core/services/taj_facade.dart';

part 'job_detail_bloc.freezed.dart';
part 'job_detail_event.dart';
part 'job_detail_state.dart';

class JobDetailBloc extends Bloc<JobDetailEvent, JobDetailState> {
  StreamSubscription? invoicesStreamSubscription;
  StreamSubscription? bidsStreamSubscription;
  StreamSubscription? jobStreamSubscription;

  final TAJFacade jobService;
  final Job job;
  JobDetailBloc({
    required this.jobService,
    required this.job,
  }) : super(JobDetailState.initial(job: job)) {
    jobStreamSubscription =
        TAJFacade().streamJob(jobId: job.workIdentifier.workId).listen((event) {
      emit(state.copyWith(job: event));
    });

    bidsStreamSubscription =
        TAJContractor().bidsOnJob(job: job).listen((event) {
      emit(state.copyWith(bidsOption: some(event)));
      // add(JobDetailEvent.bidsStreamUpdated(event));
    });
    invoicesStreamSubscription =
        TAJContractor().streamPublishedInvoicesOnJob(job: job).listen((event) {
      emit(state.copyWith(invoicesOption: some(event)));
      // add(JobDetailEvent.streamInvoicesUpdated(event));
      // setState(() => invoicesListOption = dartz.optionOf(event));
    });
    // TAJContractor().streamInvoice(job).listen((invoices) {
    //   add(JobDetailEvent.streamInvoicesUpdated(invoices));
    // });
  }

  @override
  Future<void> close() {
    invoicesStreamSubscription?.cancel();
    bidsStreamSubscription?.cancel();
    jobStreamSubscription?.cancel();
    return super.close();
  }

  // @override
  // Stream<JobDetailState> mapEventToState(
  //   JobDetailEvent event,
  // ) async* {
  //   yield* event.map(
  //     streamJobUpdated: (e) async* {
  //       yield state.copyWith(job: e.job);
  //     },
  //     bidsStreamUpdated: (e) async* {
  //       yield state.copyWith(bidsOption: optionOf(e.bids));
  //     },
  //     streamInvoicesUpdated: (e) async* {
  //       yield state.copyWith(invoicesOption: optionOf(e.invoices));
  //     },
  //   );
  // }
}
