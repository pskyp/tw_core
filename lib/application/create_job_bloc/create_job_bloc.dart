import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:tw_core/models/core/tw_min_length_string/tw_min_length_string.dart';
import 'package:tw_core/models/core/tw_number/tw_number.dart';
import 'package:tw_core/models/development/development.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/models/job/value_objects/job_timeline/job_timeline.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/trades.dart';
import 'package:tw_core/services/taj_facade.dart';

part 'create_job_bloc.freezed.dart';
part 'create_job_event.dart';
part 'create_job_state.dart';

class CreateJobBloc extends Bloc<CreateJobEvent, CreateJobState> {
  StreamSubscription? tenderBidsStream;
  CreateJobBloc() : super(CreateJobState.initial()) {
    tenderBidsStream = TAJContractor().streamTenderBids().listen((event) {});
    on<OnDevelopmentIdentifierInput>((e, emit) {
      assert(e.developmentIdentifier != null || e.developmentTitle != null);
      emit(state.copyWith(
        developmentIdentifier: e.developmentTitle != null
            ? DevelopmentIdentifier.pseudo(title: e.developmentTitle!)
            : e.developmentIdentifier!,
      ));
    });

    on<OnJobStartDateChanged>((e, emit) {
      emit(state.copyWith(
        jobTimeLine: JobTimeLine(
          createdOn: state.jobTimeLine.createdOn,
          startDateInput: e.startDate,
          endDateInput: state.jobTimeLine.endDate.getDate,
        ),
      ));
    });

    on<OnJobEndDateChanged>((e, emit) {
      emit(state.copyWith(
          jobTimeLine: JobTimeLine(
        createdOn: state.jobTimeLine.createdOn,
        startDateInput: state.jobTimeLine.startDate.getDate,
        endDateInput: e.endDate,
      )));
    });

    on<JobTitleChanged>((e, emit) {
      emit(state.copyWith(
        jobTitle: TWString(e.value, TWString.Job_Title_ML),
      ));
    });

    on<ToggleRequirement>((e, emit) {
      TWString requirement = TWString(
        e.requirementInput,
        TWString.Job_Requirement_ML,
      );
      if (!requirement.isValid) return;
      var list = state.requirements.toMutableList();
      if (list.contains(requirement.getOrCrash())) {
        list.remove(requirement.getOrCrash());
      } else {
        list.add(requirement.getOrCrash());
      }
      emit(state.copyWith(
        requirements:
            list.toList(), //state.requirements..add(requirement.getOrCrash()),
      ));
    });

    on<RequiredSubbiesInput>((e, emit) {
      int? input = int.tryParse(e.input);
      if (input == null) return;
      emit(state.copyWith(
        numberOfSubbies: TWNumber(
          input: input,
          maxValue: TWNumber.Job_Required_Subbies_Max,
          minValue: TWNumber.Job_Required_Subbies_Min,
        ),
      ));
    });

    on<OnRateChanged>((e, emit) {
      double? input = double.tryParse(e.value);
      print(input);
      if (input != null) {
        emit(state.copyWith(
          jobRate: TWNumber(
            input: input.floor(),
            maxValue: TWNumber.Job_Hourly_Rate_Max,
            minValue: TWNumber.Job_Hourly_Rate_Min,
          ),
        ));
      }
    });

    on<OnDescriptionChanged>((e, emit) {
      emit(state.copyWith(
        jobDescription: TWString(e.value, TWString.Job_Desc_ML),
      ));
    });

    on<TradeChanged>((e, emit) {
      emit(state.copyWith(selectedTrade: e.trade));
    });

    on<OnLocationChanged>((e, emit) {
      emit(state.copyWith(location: optionOf(e.location)));
    });

    on<SubmitButtonPressed>((e, emit) async {
      emit(state.copyWith(showErrorMessages: true));
      if (!state.allInputsValid) return;
      emit(state.copyWith(isSubmitting: true));
      Either<TWServerError, Unit> result;
      result = await TAJContractor().createJob(
        developmentIdentifier: state.developmentIdentifier,
        jobDescription: state.jobDescription,
        jobRate: state.jobRate,
        jobTimeLine: state.jobTimeLine,
        jobTitle: state.jobTitle,
        location: state.location.getOrElse(() => null!),
        requiredNumberOfSubbies: state.numberOfSubbies,
        selectedRequirements: state.requirements.asList(),
        selectedTrade: state.selectedTrade,
      );
      emit(state.copyWith(
        isSubmitting: false,
        failureOrSuccessOption: optionOf(result),
      ));
    });
  }

  @override
  Future<void> close() {
    tenderBidsStream?.cancel();
    return super.close();
  }
  //
  // @override
  // Stream<CreateJobState> mapEventToState(
  //   CreateJobEvent event,
  // ) async* {
  //   yield* event.map(
  //     onDevelopmentIdentifierInput: (e) async* {
  //       assert(e.developmentIdentifier != null || e.developmentTitle != null);
  //       yield state.copyWith(
  //         developmentIdentifier: e.developmentTitle != null
  //             ? DevelopmentIdentifier.pseudo(title: e.developmentTitle!)
  //             : e.developmentIdentifier!,
  //       );
  //     },
  //     onJobStartDateChanged: (e) async* {
  //       yield state.copyWith(
  //         jobTimeLine: JobTimeLine(
  //           createdOn: state.jobTimeLine.createdOn,
  //           startDateInput: e.startDate,
  //           endDateInput: state.jobTimeLine.endDate.getDate,
  //         ),
  //       );
  //     },
  //     onJobEndDateChanged: (e) async* {
  //       yield state.copyWith(
  //           jobTimeLine: JobTimeLine(
  //         createdOn: state.jobTimeLine.createdOn,
  //         startDateInput: state.jobTimeLine.startDate.getDate,
  //         endDateInput: e.endDate,
  //       ));
  //     },
  //     jobTitleChanged: (e) async* {
  //       yield state.copyWith(
  //         jobTitle: TWString(e.value, TWString.Job_Title_ML),
  //       );
  //     },
  //     toggleRequirement: (e) async* {
  //       TWString requirement = TWString(
  //         e.requirementInput,
  //         TWString.Job_Requirement_ML,
  //       );
  //       if (!requirement.isValid) return;
  //       var list = state.requirements.toMutableList();
  //       if (list.contains(requirement.getOrCrash())) {
  //         list.remove(requirement.getOrCrash());
  //       } else {
  //         list.add(requirement.getOrCrash());
  //       }
  //       yield state.copyWith(
  //         requirements: list
  //             .toList(), //state.requirements..add(requirement.getOrCrash()),
  //       );
  //     },
  //     requiredSubbiesInput: (e) async* {
  //       int? input = int.tryParse(e.input);
  //       if (input == null) return;
  //       yield state.copyWith(
  //         numberOfSubbies: TWNumber(
  //           input: input,
  //           maxValue: TWNumber.Job_Required_Subbies_Max,
  //           minValue: TWNumber.Job_Required_Subbies_Min,
  //         ),
  //       );
  //     },
  //     onRateChanged: (e) async* {
  //       double? input = double.tryParse(e.value);
  //       print(input);
  //       if (input != null) {
  //         yield state.copyWith(
  //           jobRate: TWNumber(
  //             input: input.floor(),
  //             maxValue: TWNumber.Job_Hourly_Rate_Max,
  //             minValue: TWNumber.Job_Hourly_Rate_Min,
  //           ),
  //         );
  //       }
  //     },
  //     onDescriptionChanged: (e) async* {
  //       yield state.copyWith(
  //         jobDescription: TWString(e.value, TWString.Job_Desc_ML),
  //       );
  //     },
  //     tradeChanged: (e) async* {
  //       yield state.copyWith(selectedTrade: e.trade);
  //     },
  //     onLocationChanged: (e) async* {
  //       yield state.copyWith(location: optionOf(e.location));
  //     },
  //     submitButtonPressed: (e) async* {
  //       yield state.copyWith(showErrorMessages: true);
  //       if (!state.allInputsValid) return;
  //       yield state.copyWith(isSubmitting: true);
  //       Either<TWServerError, Unit> result;
  //       result = await TAJContractor().createJob(
  //         developmentIdentifier: state.developmentIdentifier,
  //         jobDescription: state.jobDescription,
  //         jobRate: state.jobRate,
  //         jobTimeLine: state.jobTimeLine,
  //         jobTitle: state.jobTitle,
  //         location: state.location.getOrElse(() => null!),
  //         requiredNumberOfSubbies: state.numberOfSubbies,
  //         selectedRequirements: state.requirements.asList(),
  //         selectedTrade: state.selectedTrade,
  //       );
  //       yield state.copyWith(
  //         isSubmitting: false,
  //         failureOrSuccessOption: optionOf(result),
  //       );
  //     },
  //   );
  // }
}
