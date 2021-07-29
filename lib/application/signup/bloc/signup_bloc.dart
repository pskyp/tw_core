import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/auth/auth_failure.dart';
import 'package:tw_core/models/auth/i_auth_facade.dart';
import 'package:tw_core/models/email/email.dart';
import 'package:tw_core/models/password/password.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final IAuthFacade _authFacade;
  SignupBloc(this._authFacade) : super(SignupState.initial());

  @override
  Stream<SignupState> mapEventToState(
    SignupEvent event,
  ) async* {
    yield* event.map(
      emailInputChanged: (e) async* {
        yield state.copyWith(
          email: EmailAddress(e.value),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordInputChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.value),
          authFailureOrSuccessOption: none(),
        );
      },
      signupWithCredentialsPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;
        final isEmailValid = state.email.value.isRight();
        final isPasswordValid = state.password.value.isRight();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(isSubmitting: true);
          failureOrSuccess = await _authFacade.signupWithCredentials(
            email: state.email,
            password: state.password,
          );
        }
        yield state.copyWith(
          showErrorMessages: true,
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
