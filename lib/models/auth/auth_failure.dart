import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.signOutFailed() = SignOutFailed;
  const factory AuthFailure.invalidEmail() = InvalidEmail;
  const factory AuthFailure.emaillAlreadyInUse() = EmaillAlreadyInUse;
  const factory AuthFailure.invalidCredentials() = InvalidCredentials;
  const factory AuthFailure.userNotFound() = UserNotFound;
  const factory AuthFailure.userDisabled() = UserDisabled;
  const factory AuthFailure.wrongEmailOrPassword() = WrongEmailOrPassword;
}
