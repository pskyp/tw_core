part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailInputChanged(String value) = EmailInputChanged;
  const factory SignInEvent.passwordInputChanged(String value) =
      PasswordInputChanged;

  const factory SignInEvent.signInWithCredentialsPressed() =
      SignInWithCredentialsPressed;
  const factory SignInEvent.signInWithGooglePressed() = SignInWithGooglePressed;
}
