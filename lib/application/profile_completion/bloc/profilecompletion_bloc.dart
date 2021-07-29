import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/company_name/company_name.dart';
import 'package:tw_core/models/core/diplay_name/display_name.dart';
import 'package:tw_core/models/core/phone/phone.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/user/i_user_service_facade.dart';

part 'profilecompletion_event.dart';
part 'profilecompletion_state.dart';
part 'profilecompletion_bloc.freezed.dart';

class ProfilecompletionBloc
    extends Bloc<ProfilecompletionEvent, ProfilecompletionState> {
  final IUserServiceFacade userServiceFacade;
  ProfilecompletionBloc(this.userServiceFacade)
      : super(ProfilecompletionState.initial());

  @override
  Stream<ProfilecompletionState> mapEventToState(
    ProfilecompletionEvent event,
  ) async* {
    yield* event.map(
      displayNameChanged: (e) async* {
        yield state.copyWith(
          displayName: TWDisplayName(e.value),
          failureOrSucessOption: none(),
        );
      },
      phoneChanged: (e) async* {
        yield state.copyWith(
          phone: TWPhone(e.value),
          failureOrSucessOption: none(),
        );
      },
      companyChanged: (e) async* {
        yield state.copyWith(
          company: TWCompanyName(e.value),
          failureOrSucessOption: none(),
        );
      },
      locationChanged: (e) async* {
        yield state.copyWith(
          location: e.value,
          failureOrSucessOption: none(),
        );
      },
      submitPressed: (e) async* {
        Either<ProfilecompletionFailure, Unit>? failureOrSuccess;
        bool isDisplayNameValid = state.displayName.value.isRight();
        bool isCompanyNameValid = state.company.value.isRight();
        bool isPhoneValid = state.phone.value.isRight();
        bool isLocationValid = state.location != null;

        if (isDisplayNameValid &&
            isCompanyNameValid &&
            isPhoneValid &&
            isLocationValid) {
          yield state.copyWith(isSubmitting: true);
          failureOrSuccess = await userServiceFacade.createUserProfile(
            displayName: state.displayName,
            company: state.company,
            phone: state.phone,
            location: state.location!,
          );
        }
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          failureOrSucessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
