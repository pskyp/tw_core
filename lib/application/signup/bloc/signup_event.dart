part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.emailInputChanged(String value) = EmailInputChanged;
  const factory SignupEvent.passwordInputChanged(String value) =
      PasswordInputChanged;

  const factory SignupEvent.signupWithCredentialsPressed() =
      SignupWithCredentialsPressed;
}
