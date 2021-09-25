import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/tw_min_length_string/tw_min_length_string.dart';
import 'package:tw_core/models/core/tw_number/tw_number.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/models/job/value_objects/job_timeline/job_timeline.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/trades.dart';
import 'package:tw_core/services/taj_facade.dart';

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
      onJobStartDateChanged: (e) async* {
        yield state.copyWith(
          jobTimeLine: JobTimeLine(
            createdOn: state.jobTimeLine.createdOn,
            startDateInput: e.startDate,
            endDateInput: state.jobTimeLine.endDate.getDate,
          ),
        );
      },
      onJobEndDateChanged: (e) async* {
        yield state.copyWith(
            jobTimeLine: JobTimeLine(
          createdOn: state.jobTimeLine.createdOn,
          startDateInput: state.jobTimeLine.startDate.getDate,
          endDateInput: e.endDate,
        ));
      },
      jobTitleChanged: (e) async* {
        yield state.copyWith(
          jobTitle: TWString(e.value, TWString.Job_Title_ML),
        );
      },
      onRequirementAdded: (e) async* {
        TWString requirement = TWString(
          e.requirementInput,
          TWString.Job_Requirement_ML,
        );
        if (!requirement.isValid) return;
        yield state.copyWith(
          requirements: state.requirements..add(requirement.getOrCrash()),
        );
      },
      requiredSubbiesInput: (e) async* {
        int? input = int.tryParse(e.input);
        if (input == null) return;
        yield state.copyWith(
          numberOfSubbies: TWNumber(
            input: input,
            minValue: TWNumber.Job_Required_Subbies_Min,
          ),
        );
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
        yield state.copyWith(location: optionOf(e.location));
      },
      submitButtonPressed: (e) async* {
        yield state.copyWith(showErrorMessages: true);
        if (!state.allInputsValid) return;
        yield state.copyWith(isSubmitting: true);
        Either<TWServerError, Unit> result;
        result = await TAJContractor().createJob(
          devTitle: state.developmentTitle,
          jobDescription: state.jobDescription,
          jobRate: state.jobRate,
          jobTimeLine: state.jobTimeLine,
          jobTitle: state.jobTitle,
          location: state.location.getOrElse(() => null!),
          requiredNumberOfSubbies: state.numberOfSubbies,
          selectedRequirements: state.requirements,
          selectedTrade: state.selectedTrade,
        );
        yield state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: optionOf(result),
        );
      },
    );
  }
}
