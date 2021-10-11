// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

  ServerError serverError() {
    return const ServerError();
  }

  SignOutFailed signOutFailed() {
    return const SignOutFailed();
  }

  InvalidEmail invalidEmail() {
    return const InvalidEmail();
  }

  EmaillAlreadyInUse emaillAlreadyInUse() {
    return const EmaillAlreadyInUse();
  }

  InvalidCredentials invalidCredentials() {
    return const InvalidCredentials();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() signOutFailed,
    required TResult Function() invalidEmail,
    required TResult Function() emaillAlreadyInUse,
    required TResult Function() invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? signOutFailed,
    TResult Function()? invalidEmail,
    TResult Function()? emaillAlreadyInUse,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(SignOutFailed value) signOutFailed,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmaillAlreadyInUse value) emaillAlreadyInUse,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(SignOutFailed value)? signOutFailed,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmaillAlreadyInUse value)? emaillAlreadyInUse,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

/// @nodoc

class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() signOutFailed,
    required TResult Function() invalidEmail,
    required TResult Function() emaillAlreadyInUse,
    required TResult Function() invalidCredentials,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? signOutFailed,
    TResult Function()? invalidEmail,
    TResult Function()? emaillAlreadyInUse,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(SignOutFailed value) signOutFailed,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmaillAlreadyInUse value) emaillAlreadyInUse,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(SignOutFailed value)? signOutFailed,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmaillAlreadyInUse value)? emaillAlreadyInUse,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() signOutFailed,
    required TResult Function() invalidEmail,
    required TResult Function() emaillAlreadyInUse,
    required TResult Function() invalidCredentials,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? signOutFailed,
    TResult Function()? invalidEmail,
    TResult Function()? emaillAlreadyInUse,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(SignOutFailed value) signOutFailed,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmaillAlreadyInUse value) emaillAlreadyInUse,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(SignOutFailed value)? signOutFailed,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmaillAlreadyInUse value)? emaillAlreadyInUse,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $SignOutFailedCopyWith<$Res> {
  factory $SignOutFailedCopyWith(
          SignOutFailed value, $Res Function(SignOutFailed) then) =
      _$SignOutFailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutFailedCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $SignOutFailedCopyWith<$Res> {
  _$SignOutFailedCopyWithImpl(
      SignOutFailed _value, $Res Function(SignOutFailed) _then)
      : super(_value, (v) => _then(v as SignOutFailed));

  @override
  SignOutFailed get _value => super._value as SignOutFailed;
}

/// @nodoc

class _$SignOutFailed implements SignOutFailed {
  const _$SignOutFailed();

  @override
  String toString() {
    return 'AuthFailure.signOutFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() signOutFailed,
    required TResult Function() invalidEmail,
    required TResult Function() emaillAlreadyInUse,
    required TResult Function() invalidCredentials,
  }) {
    return signOutFailed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? signOutFailed,
    TResult Function()? invalidEmail,
    TResult Function()? emaillAlreadyInUse,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (signOutFailed != null) {
      return signOutFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(SignOutFailed value) signOutFailed,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmaillAlreadyInUse value) emaillAlreadyInUse,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) {
    return signOutFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(SignOutFailed value)? signOutFailed,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmaillAlreadyInUse value)? emaillAlreadyInUse,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (signOutFailed != null) {
      return signOutFailed(this);
    }
    return orElse();
  }
}

abstract class SignOutFailed implements AuthFailure {
  const factory SignOutFailed() = _$SignOutFailed;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<$Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail value, $Res Function(InvalidEmail) then) =
      _$InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailCopyWith<$Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail _value, $Res Function(InvalidEmail) _then)
      : super(_value, (v) => _then(v as InvalidEmail));

  @override
  InvalidEmail get _value => super._value as InvalidEmail;
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail();

  @override
  String toString() {
    return 'AuthFailure.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() signOutFailed,
    required TResult Function() invalidEmail,
    required TResult Function() emaillAlreadyInUse,
    required TResult Function() invalidCredentials,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? signOutFailed,
    TResult Function()? invalidEmail,
    TResult Function()? emaillAlreadyInUse,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(SignOutFailed value) signOutFailed,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmaillAlreadyInUse value) emaillAlreadyInUse,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(SignOutFailed value)? signOutFailed,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmaillAlreadyInUse value)? emaillAlreadyInUse,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements AuthFailure {
  const factory InvalidEmail() = _$InvalidEmail;
}

/// @nodoc
abstract class $EmaillAlreadyInUseCopyWith<$Res> {
  factory $EmaillAlreadyInUseCopyWith(
          EmaillAlreadyInUse value, $Res Function(EmaillAlreadyInUse) then) =
      _$EmaillAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmaillAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmaillAlreadyInUseCopyWith<$Res> {
  _$EmaillAlreadyInUseCopyWithImpl(
      EmaillAlreadyInUse _value, $Res Function(EmaillAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmaillAlreadyInUse));

  @override
  EmaillAlreadyInUse get _value => super._value as EmaillAlreadyInUse;
}

/// @nodoc

class _$EmaillAlreadyInUse implements EmaillAlreadyInUse {
  const _$EmaillAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emaillAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmaillAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() signOutFailed,
    required TResult Function() invalidEmail,
    required TResult Function() emaillAlreadyInUse,
    required TResult Function() invalidCredentials,
  }) {
    return emaillAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? signOutFailed,
    TResult Function()? invalidEmail,
    TResult Function()? emaillAlreadyInUse,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (emaillAlreadyInUse != null) {
      return emaillAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(SignOutFailed value) signOutFailed,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmaillAlreadyInUse value) emaillAlreadyInUse,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) {
    return emaillAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(SignOutFailed value)? signOutFailed,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmaillAlreadyInUse value)? emaillAlreadyInUse,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (emaillAlreadyInUse != null) {
      return emaillAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmaillAlreadyInUse implements AuthFailure {
  const factory EmaillAlreadyInUse() = _$EmaillAlreadyInUse;
}

/// @nodoc
abstract class $InvalidCredentialsCopyWith<$Res> {
  factory $InvalidCredentialsCopyWith(
          InvalidCredentials value, $Res Function(InvalidCredentials) then) =
      _$InvalidCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidCredentialsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidCredentialsCopyWith<$Res> {
  _$InvalidCredentialsCopyWithImpl(
      InvalidCredentials _value, $Res Function(InvalidCredentials) _then)
      : super(_value, (v) => _then(v as InvalidCredentials));

  @override
  InvalidCredentials get _value => super._value as InvalidCredentials;
}

/// @nodoc

class _$InvalidCredentials implements InvalidCredentials {
  const _$InvalidCredentials();

  @override
  String toString() {
    return 'AuthFailure.invalidCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() signOutFailed,
    required TResult Function() invalidEmail,
    required TResult Function() emaillAlreadyInUse,
    required TResult Function() invalidCredentials,
  }) {
    return invalidCredentials();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? signOutFailed,
    TResult Function()? invalidEmail,
    TResult Function()? emaillAlreadyInUse,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(SignOutFailed value) signOutFailed,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(EmaillAlreadyInUse value) emaillAlreadyInUse,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) {
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(SignOutFailed value)? signOutFailed,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(EmaillAlreadyInUse value)? emaillAlreadyInUse,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class InvalidCredentials implements AuthFailure {
  const factory InvalidCredentials() = _$InvalidCredentials;
}
