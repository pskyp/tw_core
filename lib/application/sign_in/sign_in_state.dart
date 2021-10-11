part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required EmailAddress email,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.initial() => _SignInState(
      email: EmailAddress(''),
      isSubmitting: false,
      showErrorMessages: false,
      authFailureOrSuccessOption: none());
}
