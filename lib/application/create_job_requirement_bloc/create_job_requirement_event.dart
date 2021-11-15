part of 'create_job_requirement_bloc.dart';

@freezed
class CreateJobRequirementEvent with _$CreateJobRequirementEvent {
  const factory CreateJobRequirementEvent.submitPressed() = SubmitPressed;

  const factory CreateJobRequirementEvent.requirementInput(String input) =
      RequirementInput;
}
