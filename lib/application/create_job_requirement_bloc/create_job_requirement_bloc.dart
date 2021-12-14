import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/application/create_job_bloc/create_job_bloc.dart';
import 'package:tw_core/models/core/tw_min_length_string/tw_min_length_string.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/services/taj_facade.dart';

part 'create_job_requirement_bloc.freezed.dart';
part 'create_job_requirement_event.dart';
part 'create_job_requirement_state.dart';

class CreateJobRequirementBloc
    extends Bloc<CreateJobRequirementEvent, CreateJobRequirementState> {
  // StreamSubscription tendersAndSupple
  final CreateJobBloc createJobBloc;
  CreateJobRequirementBloc({
    required this.createJobBloc,
  }) : super(CreateJobRequirementState.initial()) {
    on<RequirementInput>((e, emit) {
      emit(state.copyWith(
        requirementInput: TWString(e.input, 3),
        resultOption: optionOf(null),
      ));
    });

    on<SubmitPressed>((e, emit) async {
      emit(state.copyWith(
        requirementInput: state.requirementInput,
        showErrorMessages: true,
      ));
      if (!state.requirementInput.isValid) return;
      emit(state.copyWith(submissionInProgress: true));
      Either<TWServerError, Unit> result =
          await TAJContractor().saveJobRequirement(
        requirement: state.requirementInput,
      );

      if (result.isRight()) {
        createJobBloc.add(CreateJobEvent.toggleRequirement(
          state.requirementInput.getOrCrash(),
        ));
      }

      emit(state.copyWith(
        submissionInProgress: false,
        resultOption: optionOf(result),
      ));
    });
  }

  // @override
  // Stream<CreateJobRequirementState> mapEventToState(
  //   CreateJobRequirementEvent event,
  // ) async* {
  //   yield* event.map(
  //     // requirementInput: (e) async* {
  //     //   yield state.copyWith(
  //     //     requirementInput: TWString(e.input, 3),
  //     //     resultOption: optionOf(null),
  //     //   );
  //     // },
  //     // submitPressed: (e) async* {
  //     //   yield state.copyWith(
  //     //     requirementInput: state.requirementInput,
  //     //     showErrorMessages: true,
  //     //   );
  //     //   if (!state.requirementInput.isValid) return;
  //     //   yield state.copyWith(submissionInProgress: true);
  //     //   Either<TWServerError, Unit> result =
  //     //       await TAJContractor().saveJobRequirement(
  //     //     requirement: state.requirementInput,
  //     //   );
  //     //
  //     //   if (result.isRight()) {
  //     //     createJobBloc.add(CreateJobEvent.toggleRequirement(
  //     //       state.requirementInput.getOrCrash(),
  //     //     ));
  //     //   }
  //     //
  //     //   yield state.copyWith(
  //     //     submissionInProgress: false,
  //     //     resultOption: optionOf(result),
  //     //   );
  //     // },
  //   );
  // }
}
