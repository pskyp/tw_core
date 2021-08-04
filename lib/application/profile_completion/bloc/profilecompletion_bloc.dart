import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/company_domain/company_domain.dart';
import 'package:tw_core/models/core/company_name/company_name.dart';
import 'package:tw_core/models/core/diplay_name/display_name.dart';
import 'package:tw_core/models/core/phone/phone.dart';
import 'package:tw_core/models/location/location_model.dart';
import 'package:tw_core/models/profile_completion/profile_completion_failure.dart';
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
      companyDomainChanged: (e) async* {
        yield state.copyWith(
          companyDomain: TWCompanyDomain(e.value),
          failureOrSucessOption: none(),
        );
      },
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
      companyNameChanged: (e) async* {
        yield state.copyWith(
          companyName: TWCompanyName(e.value),
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
        Either<ProfileCompletionFailure, Unit>? failureOrSuccess;
        bool isDisplayNameValid = state.displayName.value.isRight();
        bool isCompanyNameValid = state.companyName.value.isRight();
        bool isCompanyDomainValid = state.companyDomain.value.isRight();
        bool isPhoneValid = state.phone.value.isRight();
        bool isLocationValid = state.location != null;

        if (isDisplayNameValid &&
            isCompanyNameValid &&
            isCompanyDomainValid &&
            isPhoneValid &&
            isLocationValid) {
          yield state.copyWith(isSubmitting: true);
          failureOrSuccess = await userServiceFacade.createUserProfile(
            displayName: state.displayName,
            companyName: state.companyName,
            companyDomain: state.companyDomain,
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
