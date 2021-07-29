// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignupEventTearOff {
  const _$SignupEventTearOff();

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

  SignupWithCredentialsPressed signupWithCredentialsPressed() {
    return const SignupWithCredentialsPressed();
  }
}

/// @nodoc
const $SignupEvent = _$SignupEventTearOff();

/// @nodoc
mixin _$SignupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailInputChanged,
    required TResult Function(String value) passwordInputChanged,
    required TResult Function() signupWithCredentialsPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailInputChanged,
    TResult Function(String value)? passwordInputChanged,
    TResult Function()? signupWithCredentialsPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailInputChanged value) emailInputChanged,
    required TResult Function(PasswordInputChanged value) passwordInputChanged,
    required TResult Function(SignupWithCredentialsPressed value)
        signupWithCredentialsPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailInputChanged value)? emailInputChanged,
    TResult Function(PasswordInputChanged value)? passwordInputChanged,
    TResult Function(SignupWithCredentialsPressed value)?
        signupWithCredentialsPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res> implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

  final SignupEvent _value;
  // ignore: unused_field
  final $Res Function(SignupEvent) _then;
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
    extends _$SignupEventCopyWithImpl<$Res>
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
    return 'SignupEvent.emailInputChanged(value: $value)';
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
    required TResult Function() signupWithCredentialsPressed,
  }) {
    return emailInputChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailInputChanged,
    TResult Function(String value)? passwordInputChanged,
    TResult Function()? signupWithCredentialsPressed,
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
    required TResult Function(SignupWithCredentialsPressed value)
        signupWithCredentialsPressed,
  }) {
    return emailInputChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailInputChanged value)? emailInputChanged,
    TResult Function(PasswordInputChanged value)? passwordInputChanged,
    TResult Function(SignupWithCredentialsPressed value)?
        signupWithCredentialsPressed,
    required TResult orElse(),
  }) {
    if (emailInputChanged != null) {
      return emailInputChanged(this);
    }
    return orElse();
  }
}

abstract class EmailInputChanged implements SignupEvent {
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
    extends _$SignupEventCopyWithImpl<$Res>
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
    return 'SignupEvent.passwordInputChanged(value: $value)';
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
    required TResult Function() signupWithCredentialsPressed,
  }) {
    return passwordInputChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailInputChanged,
    TResult Function(String value)? passwordInputChanged,
    TResult Function()? signupWithCredentialsPressed,
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
    required TResult Function(SignupWithCredentialsPressed value)
        signupWithCredentialsPressed,
  }) {
    return passwordInputChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailInputChanged value)? emailInputChanged,
    TResult Function(PasswordInputChanged value)? passwordInputChanged,
    TResult Function(SignupWithCredentialsPressed value)?
        signupWithCredentialsPressed,
    required TResult orElse(),
  }) {
    if (passwordInputChanged != null) {
      return passwordInputChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordInputChanged implements SignupEvent {
  const factory PasswordInputChanged(String value) = _$PasswordInputChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordInputChangedCopyWith<PasswordInputChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupWithCredentialsPressedCopyWith<$Res> {
  factory $SignupWithCredentialsPressedCopyWith(
          SignupWithCredentialsPressed value,
          $Res Function(SignupWithCredentialsPressed) then) =
      _$SignupWithCredentialsPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignupWithCredentialsPressedCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res>
    implements $SignupWithCredentialsPressedCopyWith<$Res> {
  _$SignupWithCredentialsPressedCopyWithImpl(
      SignupWithCredentialsPressed _value,
      $Res Function(SignupWithCredentialsPressed) _then)
      : super(_value, (v) => _then(v as SignupWithCredentialsPressed));

  @override
  SignupWithCredentialsPressed get _value =>
      super._value as SignupWithCredentialsPressed;
}

/// @nodoc

class _$SignupWithCredentialsPressed implements SignupWithCredentialsPressed {
  const _$SignupWithCredentialsPressed();

  @override
  String toString() {
    return 'SignupEvent.signupWithCredentialsPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignupWithCredentialsPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailInputChanged,
    required TResult Function(String value) passwordInputChanged,
    required TResult Function() signupWithCredentialsPressed,
  }) {
    return signupWithCredentialsPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailInputChanged,
    TResult Function(String value)? passwordInputChanged,
    TResult Function()? signupWithCredentialsPressed,
    required TResult orElse(),
  }) {
    if (signupWithCredentialsPressed != null) {
      return signupWithCredentialsPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailInputChanged value) emailInputChanged,
    required TResult Function(PasswordInputChanged value) passwordInputChanged,
    required TResult Function(SignupWithCredentialsPressed value)
        signupWithCredentialsPressed,
  }) {
    return signupWithCredentialsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailInputChanged value)? emailInputChanged,
    TResult Function(PasswordInputChanged value)? passwordInputChanged,
    TResult Function(SignupWithCredentialsPressed value)?
        signupWithCredentialsPressed,
    required TResult orElse(),
  }) {
    if (signupWithCredentialsPressed != null) {
      return signupWithCredentialsPressed(this);
    }
    return orElse();
  }
}

abstract class SignupWithCredentialsPressed implements SignupEvent {
  const factory SignupWithCredentialsPressed() = _$SignupWithCredentialsPressed;
}

/// @nodoc
class _$SignupStateTearOff {
  const _$SignupStateTearOff();

  _SignupState call(
      {required EmailAddress email,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignupState(
      email: email,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignupState = _$SignupStateTearOff();

/// @nodoc
mixin _$SignupState {
  EmailAddress get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress email,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res> implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  final SignupState _value;
  // ignore: unused_field
  final $Res Function(SignupState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
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
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignupStateCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$SignupStateCopyWith(
          _SignupState value, $Res Function(_SignupState) then) =
      __$SignupStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress email,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignupStateCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
    implements _$SignupStateCopyWith<$Res> {
  __$SignupStateCopyWithImpl(
      _SignupState _value, $Res Function(_SignupState) _then)
      : super(_value, (v) => _then(v as _SignupState));

  @override
  _SignupState get _value => super._value as _SignupState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignupState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignupState implements _SignupState {
  const _$_SignupState(
      {required this.email,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignupState(email: $email, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignupState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
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
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignupStateCopyWith<_SignupState> get copyWith =>
      __$SignupStateCopyWithImpl<_SignupState>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
      {required EmailAddress email,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignupState;

  @override
  EmailAddress get email => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignupStateCopyWith<_SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}
