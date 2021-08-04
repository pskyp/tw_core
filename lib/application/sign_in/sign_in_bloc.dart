import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:tw_core/models/auth/auth_failure.dart';
import 'package:tw_core/models/auth/i_auth_facade.dart';
import 'package:tw_core/models/email/email.dart';
import 'package:tw_core/models/password/password.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade authFacade;
  SignInBloc(this.authFacade) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    yield* event.map(
      emailInputChanged: (e) async* {
        yield state.copyWith(
          email: EmailAddress(e.value),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordInputChanged: (e) async* {
        yield state.copyWith(
            password: Password(e.value), authFailureOrSuccessOption: none());
      },
      signInWithCredentialsPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;
        bool isEmailValid = state.email.value.isRight();
        bool isPasswordValid = state.password.value.isRight();
        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(isSubmitting: true);
          failureOrSuccess = await authFacade.signinWithCredentials(
            email: state.email,
            password: state.password,
          );
        }
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
