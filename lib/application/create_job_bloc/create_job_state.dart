part of 'create_job_bloc.dart';

@freezed
class CreateJobState with _$CreateJobState {
  const CreateJobState._();
  const factory CreateJobState({
    required DevelopmentIdentifier developmentIdentifier,
    required TWString jobTitle,
    required TWString jobDescription,
    required Trade selectedTrade,
    required JobTimeLine jobTimeLine,
    required TWNumber jobRate,
    required TWNumber numberOfSubbies,
    required Option<LocationModel> location,
    required List<String> requirements,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<TWServerError, Unit>> failureOrSuccessOption,
  }) = _CreateJobState;

  factory CreateJobState.initial() => _CreateJobState(
        developmentIdentifier: DevelopmentIdentifier.pseudo(title: ''),
        jobTitle: TWString('', TWString.Job_Title_ML),
        jobDescription: TWString('', TWString.Job_Desc_ML),
        selectedTrade: Trade.allTrades.first,
        jobRate: TWNumber(
          input: TWNumber.Job_Daily_Rate_Min,
          minValue: TWNumber.Job_Daily_Rate_Min,
        ),
        numberOfSubbies: TWNumber(
          input: TWNumber.Job_Required_Subbies_Min,
          minValue: TWNumber.Job_Required_Subbies_Min,
        ),
        jobTimeLine: JobTimeLine(
          createdOn: DateTime.now(),
          startDateInput: DateTime.now().add(Duration(seconds: 1)),
          endDateInput: DateTime.now().add(Duration(days: 1)),
        ),
        location: optionOf(null),
        requirements: [],
        isSubmitting: false,
        showErrorMessages: false,
        failureOrSuccessOption: optionOf(null),
      );

  bool get allInputsValid {
    return jobTitle.isValid &&
        jobDescription.isValid &&
        location.isSome() &&
        // developmentIdentifierOption.fold(
        //     () => false, (developmentIdentifier) => true) &&
        jobRate.isValid &&
        numberOfSubbies.isValid &&
        jobTimeLine.isValid;
  }
}
