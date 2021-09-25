part of 'create_job_bloc.dart';

@freezed
class CreateJobEvent with _$CreateJobEvent {
  const factory CreateJobEvent.onJobStartDateChanged(DateTime startDate) =
      OnJobStartDateChanged;

  const factory CreateJobEvent.onJobEndDateChanged(DateTime endDate) =
      OnJobEndDateChanged;

  const factory CreateJobEvent.developmentNameChanged(String value) =
      DevelopmentNameChanged;

  const factory CreateJobEvent.jobTitleChanged(String value) = JobTitleChanged;

  const factory CreateJobEvent.requiredSubbiesInput(String input) =
      RequiredSubbiesInput;

  const factory CreateJobEvent.onRateChanged(String value) = OnRateChanged;

  const factory CreateJobEvent.onDescriptionChanged(String value) =
      OnDescriptionChanged;

  const factory CreateJobEvent.onRequirementAdded(String requirementInput) =
      OnRequirementAdded;

  const factory CreateJobEvent.tradeChanged(Trade trade) = TradeChanged;

  const factory CreateJobEvent.submitButtonPressed() = SubmitButtonPressed;

  const factory CreateJobEvent.onLocationChanged(LocationModel location) =
      OnLocationChanged;
}
