import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'add_twdoc_bloc.freezed.dart';
part 'add_twdoc_event.dart';
part 'add_twdoc_state.dart';

class AddTwdocBloc extends Bloc<AddTwdocEvent, AddTWDocState> {
  AddTwdocBloc() : super(AddTWDocState.initial());

  @override
  Stream<AddTWDocState> mapEventToState(
    AddTwdocEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
