import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/tw_min_length_string/tw_min_length_string.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/services/cache_service.dart';
import 'package:tw_core/services/taj_facade.dart';

part 'bio_input_bloc.freezed.dart';
part 'bio_input_event.dart';
part 'bio_input_state.dart';

class BioInputBloc extends Bloc<BioInputEvent, BioInputState> {
  BioInputBloc() : super(BioInputState.initial()) {
    on<CoverLetterInput>((event, emit) async {
      emit(state.copyWith(
        coverLetter: TWString(event.input, TWString.Bio_Cover_Letter_ML),
        resultOption: optionOf(null),
      ));
    });

    on<SubmitPressed>((event, emit) async {
      emit(state.copyWith(showErrorMessages: true));
      if (!state.coverLetter.isValid) return;
      emit(state.copyWith(submissionInProgress: true));
      Either<TWServerError, Unit> result = await TAJFacade().saveCoverLetter(
        contractor: CacheService().contractor,
        coverLetter: state.coverLetter,
      );
      emit(state.copyWith(
        resultOption: optionOf(result),
        submissionInProgress: false,
      ));
    });
  }
}
