part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailInputChanged(String value) = EmailInputChanged;

  const factory SignInEvent.signInPressed() = SignInPressed;
  const factory SignInEvent.onLifeCycleChanged() = OnLifecycleChanged;
}
