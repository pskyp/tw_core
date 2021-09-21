import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/bid_on_tender/bid_on_tender.dart';
import 'package:tw_core/models/contractor/contractor_model.dart';
import 'package:tw_core/models/supplement/supplement_model.dart';
import 'package:tw_core/models/tender/tender_model.dart';
import 'package:tw_core/services/taj_facade.dart';

part 'tenders_bloc.freezed.dart';
part 'tenders_event.dart';
part 'tenders_state.dart';

class TendersBloc extends Bloc<TendersEvent, TendersState> {
  TAJFacade tAJFacade;
  final Contractor contractor;
  StreamSubscription? tendersStream;
  StreamSubscription? tenderBidsStream;
  StreamSubscription? supplementsStream;

  TendersBloc({
    required this.tAJFacade,
    required this.contractor,
  }) : super(
          TendersState.initial(tAJFacade),
        ) {
    tendersStream = tAJFacade.streamAllTenders().listen((event) {
      add(TendersEvent.tendersStreamUpdated(event));
    });
    tenderBidsStream =
        tAJFacade.streamTenderBids(contractor.basicProfile).listen((event) {
      add(TendersEvent.tenderBidsStreamUpdated(event));
    });
    supplementsStream = tAJFacade.streamAllSupplements().listen((event) {
      add(TendersEvent.supplementsStreamUpdated(event));
    });
  }

  @override
  Future<void> close() {
    tendersStream?.cancel();
    tenderBidsStream?.cancel();
    supplementsStream?.cancel();

    return super.close();
  }

  @override
  Stream<TendersState> mapEventToState(
    TendersEvent event,
  ) async* {
    yield* event.map(
      supplementsStreamUpdated: (e) async* {
        yield state.copyWith(allSupplements: optionOf(e.supplements));
      },
      tendersStreamUpdated: (e) async* {
        yield state.copyWith(allTenders: optionOf(e.tenders));
      },
      tenderBidsStreamUpdated: (e) async* {
        yield state.copyWith(allTenderBids: optionOf(e.tenderBids));
      },
    );
  }
}
