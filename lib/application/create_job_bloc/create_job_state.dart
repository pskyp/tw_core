part of 'create_job_bloc.dart';

@freezed
class CreateJobState with _$CreateJobState {
  const factory CreateJobState({
    required int lengthOfRequirementList,
    required TWString developmentTitle,
    required TWString jobDescription,
    required Trade selectedTrade,
    // required JobTimeLine jobTimeLine,
    required TWNumber jobRate,
    required TWString jobTitle,
    required int lengthOfRequirements,
    required String requirementFieldController,
    required List<String> listOfRequirements,
    required TWNumber numberOfSubbies,
    required LocationModel? location,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<TWServerError, Unit>> failureOrSuccessOption,
  }) = _CreateJobState;

  factory CreateJobState.initial() => _CreateJobState(
        jobTitle: TWString('', TWString.Job_Title_ML),
        requirementFieldController: "",
        lengthOfRequirements: 0,
        listOfRequirements: [],
        failureOrSuccessOption: optionOf(null),
        isSubmitting: false,
        showErrorMessages: false,
        jobDescription: TWString('', TWString.Job_Desc_ML),
        location: null,
        lengthOfRequirementList: 0,
        developmentTitle: TWString('', TWString.DEV_TITLE_ML),
        selectedTrade: Trade.allTrades.first,
        jobRate: TWNumber(
          input: TWNumber.Job_Daily_Rate_Min,
          minValue: TWNumber.Job_Daily_Rate_Min,
        ),
        numberOfSubbies: TWNumber(
          input: TWNumber.Job_Required_Subbies_Min,
          minValue: TWNumber.Job_Required_Subbies_Min,
        ),
        // jobTimeLine: JobTimeLine(
        //   startDate: DateTime.now(),
        //   endDate: DateTime.now().add(Duration(days: 90)),
        // ),
      );
}
