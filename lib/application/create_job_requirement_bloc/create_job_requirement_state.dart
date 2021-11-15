part of 'create_job_requirement_bloc.dart';

@freezed
class CreateJobRequirementState with _$CreateJobRequirementState {
  const CreateJobRequirementState._();
  const factory CreateJobRequirementState({
    required TWString requirementInput,
    required bool submissionInProgress,
    required bool showErrorMessages,
    required Option<Either<TWServerError, Unit>> resultOption,
  }) = _CreateJobRequirementState;

  factory CreateJobRequirementState.initial() => _CreateJobRequirementState(
        requirementInput: TWString('', TWString.Job_Requirement_ML),
        submissionInProgress: false,
        showErrorMessages: false,
        resultOption: optionOf(null),
      );
}
