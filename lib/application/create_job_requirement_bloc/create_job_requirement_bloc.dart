import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/tw_min_length_string/tw_min_length_string.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/services/taj_facade.dart';

part 'create_job_requirement_bloc.freezed.dart';
part 'create_job_requirement_event.dart';
part 'create_job_requirement_state.dart';

class CreateJobRequirementBloc
    extends Bloc<CreateJobRequirementEvent, CreateJobRequirementState> {
  CreateJobRequirementBloc() : super(CreateJobRequirementState.initial());

  @override
  Stream<CreateJobRequirementState> mapEventToState(
    CreateJobRequirementEvent event,
  ) async* {
    yield* event.map(
      submitPressed: (e) async* {
        yield state.copyWith(
          requirementInput: TWString(e.input, TWString.Job_Requirement_ML),
          showErrorMessages: true,
        );
        if (!state.requirementInput.isValid) return;
        yield state.copyWith(submissionInProgress: true);
        Either<TWServerError, Unit> result = await TAJContractor()
            .saveJobRequirement(requirement: state.requirementInput);

        yield state.copyWith(
          submissionInProgress: false,
          resultOption: optionOf(result),
        );
      },
    );
  }
}
