import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:tw_core/models/auth/auth_failure.dart';
import 'package:tw_core/models/tw_document/tw_document.dart';
import 'package:tw_core/services/cache_service.dart';
import 'package:tw_core/services/taj_facade.dart';

part 'portfolio_bloc.freezed.dart';
part 'portfolio_event.dart';
part 'portfolio_state.dart';

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  StreamSubscription? docsStreamSubscription;
  PortfolioBloc() : super(PortfolioState.initial()) {
    docsStreamSubscription = TAJFacade()
        .portfolioDocuments(CacheService().contractor.basicProfile)
        .listen((event) {
      add(PortfolioEvent.docsStreamUpdated(event));
    });
on<
DocsStreamUpdated>((event, emit) async {
      emit( state.copyWith(portfolioDocsOption: optionOf(event.dcos)));
    });
    on<UploadDocPressed>((event, emit) async {
      emit(state.copyWith(uploading: true));
    });



  }

  @override
  Future<void> close() {
    docsStreamSubscription?.cancel();
    return super.close();
  }


}
