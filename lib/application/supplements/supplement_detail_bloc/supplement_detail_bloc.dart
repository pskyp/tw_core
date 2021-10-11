import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:tw_core/models/supplement/supplement_model.dart';

part 'supplement_detail_bloc.freezed.dart';
part 'supplement_detail_event.dart';
part 'supplement_detail_state.dart';

class SupplementDetailBloc
    extends Bloc<SupplementDetailEvent, SupplementDetailState> {
  SupplementDetailBloc({
    required Supplement supplement,
  }) : super(
          SupplementDetailState.initial(
            supplement: supplement,
          ),
        );

  @override
  Stream<SupplementDetailState> mapEventToState(
    SupplementDetailEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

class SupplementDetailBlocArguemnts {
  final Supplement supplement;

  SupplementDetailBlocArguemnts({
    required this.supplement,
  });
}
