import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/supplement_objects/supplement_failure.dart';
import 'package:tw_core/models/core/tw_min_length_string/tw_min_length_string.dart';
import 'package:tw_core/models/core/tw_number/tw_number.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/trades.dart';

part 'create_job_bloc.freezed.dart';
part 'create_job_event.dart';
part 'create_job_state.dart';

class CreateJobBloc extends Bloc<CreateJobEvent, CreateJobState> {
  CreateJobBloc() : super(CreateJobState.initial());

  @override
  Stream<CreateJobState> mapEventToState(
    CreateJobEvent event,
  ) async* {
    yield* event.map(
      developmentNameChanged: (e) async* {
        yield state.copyWith(
          developmentTitle: TWString(e.value, TWString.DEV_TITLE_ML),
        );
      },
      // onJobStartDateChanged: (e) async* {
      //   yield state.copyWith(
      //       jobTimeLine: state.jobTimeLine.copyWith(startDate: e.startDate));
      // },
      // onJobEndDateChanged: (e) async* {
      //   yield state.copyWith(
      //       jobTimeLine: state.jobTimeLine.copyWith(endDate: e.endDate));
      // },
      jobTitleChanged: (e) async* {
        yield state.copyWith(
          jobTitle: TWString(e.value, TWString.Job_Title_ML),
        );
      },
      jobRequirementsChanged: (e) async* {
        yield state.copyWith(requirementFieldController: e.value);
      },
      onRequirementAdded: (e) async* {
        print("this is being fired ");
        List<String> allRequirements = state.listOfRequirements;
        print(allRequirements.length);
        if (state.requirementFieldController.length > 0) {
          allRequirements.add(state.requirementFieldController);
          print(allRequirements.length);
          yield state.copyWith(
              listOfRequirements: allRequirements,
              lengthOfRequirementList: allRequirements.length,
              requirementFieldController: '');
        }
      },

      requiredSubbiesChanged: (e) async* {
        int? input = int.tryParse(e.value);
        if (input != null) {
          yield state.copyWith(
            numberOfSubbies: TWNumber(
              input: input,
              minValue: TWNumber.Job_Required_Subbies_Min,
            ),
          );
        }
      },
      onRateChanged: (e) async* {
        int? input = int.tryParse(e.value);
        if (input != null) {
          yield state.copyWith(
            jobRate: TWNumber(
              input: input,
              minValue: TWNumber.Job_Daily_Rate_Min,
            ),
          );
        }
      },
      onDescriptionChanged: (e) async* {
        yield state.copyWith(
            jobDescription: TWString(e.value, TWString.Job_Desc_ML));
      },
      tradeChanged: (e) async* {
        yield state.copyWith(selectedTrade: e.trade);
      },
      onLocationChanged: (e) async* {
        yield state.copyWith(location: e.location);
      },
      submitButtonPressed: (e) async* {
        // yield state.copyWith(showErrorMessages: true);
        // Either<AddSupplementFailure, Unit>? failureOrSuccess;
        // bool isTitleValid = state.jobTitle.value.isRight();
        // bool areRequirementsValid = state.listOfRequirements.isNotEmpty;
        // bool numberOfSubbiesValid = state.numberOfSubbies.value.isRight();
        // // bool isDevelopmentTitleValid = state.developmentName.value.isRight();
        // // bool isStartDateValid = state.jobTimeLine.startDate.isValid;
        // // bool isEndDateValid = state.jobTimeLine.endDate.isValid;
        // bool isLocationNotNull = state.location != null;
        // print("title: $isTitleValid");
        // print("requirements: $areRequirementsValid");
        // print("subbies: $numberOfSubbiesValid");
        // print("dev title: $isDevelopmentTitleValid");
        // print("startdate: $isStartDateValid");
        // print("enddate: $isEndDateValid");
        // print("location: $isLocationNotNull");
        //
        // if (isLocationNotNull &&
        //     areRequirementsValid &&
        //     isTitleValid &&
        //     numberOfSubbiesValid &&
        //     isDevelopmentTitleValid &&
        //     isStartDateValid &&
        //     isEndDateValid) {
        //   yield state.copyWith(isSubmitting: true);
        //
        //   failureOrSuccess = await jobService.saveJobToDatabase(
        //     state.location!,
        //     state.developmentName.getOrCrash(),
        //     state.jobTitle.getOrCrash(),
        //     state.jobDescription.getOrCrash(),
        //     state.jobRate.getOrCrash(),
        //     state.jobTimeLine.endDate.getOrCrash(),
        //     state.jobTimeLine.startDate.getOrCrash(),
        //     state.numberOfSubbies.getOrCrash(),
        //     state.listOfRequirements,
        //     state.selectedTrade,
        //   );
        // }
        //
        // yield state.copyWith(
        //   showErrorMessages: true,
        //   isSubmitting: false,
        //   failureOrSuccessOption: optionOf(failureOrSuccess),
        // );
      },
    );
  }
}
