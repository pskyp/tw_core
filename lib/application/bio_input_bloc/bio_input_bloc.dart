import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/tw_min_length_string/tw_min_length_string.dart';
import 'package:tw_core/models/errors.dart';

part 'bio_input_bloc.freezed.dart';
part 'bio_input_event.dart';
part 'bio_input_state.dart';

class BioInputBloc extends Bloc<BioInputEvent, BioInputState> {
  BioInputBloc() : super(BioInputState.initial());

  @override
  Stream<BioInputState> mapEventToState(
    BioInputEvent event,
  ) async* {
    yield* event.map(
      coverLetterInpput: (e) async* {
        yield state.copyWith(
          coverLetter: TWString(e.input, TWString.Bio_Cover_Letter_ML),
        );
      },
    );
  }
}
