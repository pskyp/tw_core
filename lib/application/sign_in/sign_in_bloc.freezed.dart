// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInEventTearOff {
  const _$SignInEventTearOff();

  EmailInputChanged emailInputChanged(String value) {
    return EmailInputChanged(
      value,
    );
  }

  PasswordInputChanged passwordInputChanged(String value) {
    return PasswordInputChanged(
      value,
    );
  }

  SignInWithCredentialsPressed signInWithCredentialsPressed() {
    return const SignInWithCredentialsPressed();
  }
}

/// @nodoc
const $SignInEvent = _$SignInEventTearOff();

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailInputChanged,
    required TResult Function(String value) passwordInputChanged,
    required TResult Function() signInWithCredentialsPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailInputChanged,
    TResult Function(String value)? passwordInputChanged,
    TResult Function()? signInWithCredentialsPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailInputChanged value) emailInputChanged,
    required TResult Function(PasswordInputChanged value) passwordInputChanged,
    required TResult Function(SignInWithCredentialsPressed value)
        signInWithCredentialsPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailInputChanged value)? emailInputChanged,
    TResult Function(PasswordInputChanged value)? passwordInputChanged,
    TResult Function(SignInWithCredentialsPressed value)?
        signInWithCredentialsPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

/// @nodoc
abstract class $EmailInputChangedCopyWith<$Res> {
  factory $EmailInputChangedCopyWith(
          EmailInputChanged value, $Res Function(EmailInputChanged) then) =
      _$EmailInputChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$EmailInputChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $EmailInputChangedCopyWith<$Res> {
  _$EmailInputChangedCopyWithImpl(
      EmailInputChanged _value, $Res Function(EmailInputChanged) _then)
      : super(_value, (v) => _then(v as EmailInputChanged));

  @override
  EmailInputChanged get _value => super._value as EmailInputChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(EmailInputChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailInputChanged implements EmailInputChanged {
  const _$EmailInputChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SignInEvent.emailInputChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailInputChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $EmailInputChangedCopyWith<EmailInputChanged> get copyWith =>
      _$EmailInputChangedCopyWithImpl<EmailInputChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailInputChanged,
    required TResult Function(String value) passwordInputChanged,
    required TResult Function() signInWithCredentialsPressed,
  }) {
    return emailInputChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailInputChanged,
    TResult Function(String value)? passwordInputChanged,
    TResult Function()? signInWithCredentialsPressed,
    required TResult orElse(),
  }) {
    if (emailInputChanged != null) {
      return emailInputChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailInputChanged value) emailInputChanged,
    required TResult Function(PasswordInputChanged value) passwordInputChanged,
    required TResult Function(SignInWithCredentialsPressed value)
        signInWithCredentialsPressed,
  }) {
    return emailInputChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailInputChanged value)? emailInputChanged,
    TResult Function(PasswordInputChanged value)? passwordInputChanged,
    TResult Function(SignInWithCredentialsPressed value)?
        signInWithCredentialsPressed,
    required TResult orElse(),
  }) {
    if (emailInputChanged != null) {
      return emailInputChanged(this);
    }
    return orElse();
  }
}

abstract class EmailInputChanged implements SignInEvent {
  const factory EmailInputChanged(String value) = _$EmailInputChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailInputChangedCopyWith<EmailInputChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordInputChangedCopyWith<$Res> {
  factory $PasswordInputChangedCopyWith(PasswordInputChanged value,
          $Res Function(PasswordInputChanged) then) =
      _$PasswordInputChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$PasswordInputChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $PasswordInputChangedCopyWith<$Res> {
  _$PasswordInputChangedCopyWithImpl(
      PasswordInputChanged _value, $Res Function(PasswordInputChanged) _then)
      : super(_value, (v) => _then(v as PasswordInputChanged));

  @override
  PasswordInputChanged get _value => super._value as PasswordInputChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(PasswordInputChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordInputChanged implements PasswordInputChanged {
  const _$PasswordInputChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SignInEvent.passwordInputChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordInputChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $PasswordInputChangedCopyWith<PasswordInputChanged> get copyWith =>
      _$PasswordInputChangedCopyWithImpl<PasswordInputChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailInputChanged,
    required TResult Function(String value) passwordInputChanged,
    required TResult Function() signInWithCredentialsPressed,
  }) {
    return passwordInputChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailInputChanged,
    TResult Function(String value)? passwordInputChanged,
    TResult Function()? signInWithCredentialsPressed,
    required TResult orElse(),
  }) {
    if (passwordInputChanged != null) {
      return passwordInputChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailInputChanged value) emailInputChanged,
    required TResult Function(PasswordInputChanged value) passwordInputChanged,
    required TResult Function(SignInWithCredentialsPressed value)
        signInWithCredentialsPressed,
  }) {
    return passwordInputChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailInputChanged value)? emailInputChanged,
    TResult Function(PasswordInputChanged value)? passwordInputChanged,
    TResult Function(SignInWithCredentialsPressed value)?
        signInWithCredentialsPressed,
    required TResult orElse(),
  }) {
    if (passwordInputChanged != null) {
      return passwordInputChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordInputChanged implements SignInEvent {
  const factory PasswordInputChanged(String value) = _$PasswordInputChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordInputChangedCopyWith<PasswordInputChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithCredentialsPressedCopyWith<$Res> {
  factory $SignInWithCredentialsPressedCopyWith(
          SignInWithCredentialsPressed value,
          $Res Function(SignInWithCredentialsPressed) then) =
      _$SignInWithCredentialsPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithCredentialsPressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInWithCredentialsPressedCopyWith<$Res> {
  _$SignInWithCredentialsPressedCopyWithImpl(
      SignInWithCredentialsPressed _value,
      $Res Function(SignInWithCredentialsPressed) _then)
      : super(_value, (v) => _then(v as SignInWithCredentialsPressed));

  @override
  SignInWithCredentialsPressed get _value =>
      super._value as SignInWithCredentialsPressed;
}

/// @nodoc

class _$SignInWithCredentialsPressed implements SignInWithCredentialsPressed {
  const _$SignInWithCredentialsPressed();

  @override
  String toString() {
    return 'SignInEvent.signInWithCredentialsPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithCredentialsPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailInputChanged,
    required TResult Function(String value) passwordInputChanged,
    required TResult Function() signInWithCredentialsPressed,
  }) {
    return signInWithCredentialsPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailInputChanged,
    TResult Function(String value)? passwordInputChanged,
    TResult Function()? signInWithCredentialsPressed,
    required TResult orElse(),
  }) {
    if (signInWithCredentialsPressed != null) {
      return signInWithCredentialsPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailInputChanged value) emailInputChanged,
    required TResult Function(PasswordInputChanged value) passwordInputChanged,
    required TResult Function(SignInWithCredentialsPressed value)
        signInWithCredentialsPressed,
  }) {
    return signInWithCredentialsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailInputChanged value)? emailInputChanged,
    TResult Function(PasswordInputChanged value)? passwordInputChanged,
    TResult Function(SignInWithCredentialsPressed value)?
        signInWithCredentialsPressed,
    required TResult orElse(),
  }) {
    if (signInWithCredentialsPressed != null) {
      return signInWithCredentialsPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithCredentialsPressed implements SignInEvent {
  const factory SignInWithCredentialsPressed() = _$SignInWithCredentialsPressed;
}

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {required EmailAddress email,
      required Password password,
      required bool isSubmitting,
      required bool showErrorMessages,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInState(
      email: email,
      password: password,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  EmailAddress get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress email,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress email,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {required this.email,
      required this.password,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required EmailAddress email,
      required Password password,
      required bool isSubmitting,
      required bool showErrorMessages,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignInState;

  @override
  EmailAddress get email => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
