import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/bid_on_tender/tender_bid.dart';
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
          TendersState.initial(),
        ) {
    tendersStream = TAJContractor().streamAllTenders().listen((event) {
      add(TendersEvent.tendersStreamUpdated(event));
    });
    tenderBidsStream = TAJContractor().streamTenderBids().listen((event) {
      add(TendersEvent.tenderBidsStreamUpdated(event));
    });
    supplementsStream = TAJContractor().streamAllSupplements().listen((event) {
      add(TendersEvent.supplementsStreamUpdated(event));
    });


     on<TendersStreamUpdated>(
        (event, emit) {
          emit(state.copyWith(allTenders: optionOf(event.tenders)));
        });
         on<TenderBidsStreamUpdated>(
        (event, emit) {
          emit(state.copyWith(allTenderBids: optionOf(event.tenderBids)));
        });
         on<SupplementsStreamUpdated>(
        (event, emit) {
          emit(state.copyWith(allSupplements: optionOf(event.supplements)));
        });
  }

  
}
