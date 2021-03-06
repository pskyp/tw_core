part of 'create_job_bloc.dart';

@freezed
class CreateJobEvent with _$CreateJobEvent {
  const factory CreateJobEvent.onJobStartDateChanged(DateTime startDate) =
      OnJobStartDateChanged;

  const factory CreateJobEvent.onJobEndDateChanged(DateTime endDate) =
      OnJobEndDateChanged;

  const factory CreateJobEvent.onDevelopmentIdentifierInput({
    String? developmentTitle,
    DevelopmentIdentifier? developmentIdentifier,
  }) = OnDevelopmentIdentifierInput;

  const factory CreateJobEvent.jobTitleChanged(String value) = JobTitleChanged;

  const factory CreateJobEvent.requiredSubbiesInput(String input) =
      RequiredSubbiesInput;

  const factory CreateJobEvent.onRateChanged(String value) = OnRateChanged;

  const factory CreateJobEvent.onDescriptionChanged(String value) =
      OnDescriptionChanged;

  const factory CreateJobEvent.toggleRequirement(String requirementInput) =
      ToggleRequirement;

  const factory CreateJobEvent.tradeChanged(Trade trade) = TradeChanged;

  const factory CreateJobEvent.submitButtonPressed() = SubmitButtonPressed;

  const factory CreateJobEvent.onLocationChanged(LocationModel location) =
      OnLocationChanged;
}
