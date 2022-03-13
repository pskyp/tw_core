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
      : super(ProfilecompletionState.initial()) {
    on<DisplayNameChanged>((event, emit) async {
      emit(state.copyWith(
        displayName: TWDisplayName(event.value),
        failureOrSucessOption: none(),
      ));
    });
    on<PhoneChanged>((event, emit) async {
      emit(state.copyWith(
        phone: TWPhone(event.value),
        failureOrSucessOption: none(),
      ));
    });
    on<CompanyNameChanged>((event, emit) async {
      emit(state.copyWith(
        companyName: TWCompanyName(event.value),
        failureOrSucessOption: none(),
      ));
    });
    on<LocationChanged>((event, emit) async {
      emit(state.copyWith(
        location: event.value,
        failureOrSucessOption: none(),
      ));
    });
    on<CompanyDomainChanged>((event, emit) async {
      emit(state.copyWith(
        companyDomain: TWCompanyDomain(event.value),
        failureOrSucessOption: none(),
      ));
    });
    on<SubmitPressed>((event, emit) async {
      Either<ProfileCompletionFailure, Unit>? failureOrSuccess;
      bool isDisplayNameValid = state.displayName.value.isRight();
      bool isCompanyNameValid = state.companyName.value.isRight();
      bool isCompanyDomainValid = state.companyDomain.value.isRight();
      bool isPhoneValid = state.phone.value.isRight();
      bool isLocationValid = state.location != null;
      print("This is core");

      if (isDisplayNameValid &&
          isCompanyNameValid &&
          isCompanyDomainValid &&
          isPhoneValid &&
          isLocationValid) {
        emit(state.copyWith(isSubmitting: true));
        failureOrSuccess = await userServiceFacade.createUserProfile(
          displayName: state.displayName,
          companyName: state.companyName,
          companyDomain: state.companyDomain,
          phone: state.phone,
          location: state.location!,
        );
      }
      emit(state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        failureOrSucessOption: optionOf(failureOrSuccess),
      ));
    });
  }
}
