part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required EmailAddress email,
    required bool sendingLinkToEmail,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> linkSentToEmailOption,
  }) = _SignInState;

  factory SignInState.initial() => _SignInState(
        linkSentToEmailOption: optionOf(null),
        email: EmailAddress(''),
        sendingLinkToEmail: false,
        showErrorMessages: false,
      );
}
