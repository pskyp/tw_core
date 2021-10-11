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

  SignInPressed signInPressed() {
    return const SignInPressed();
  }

  OnLifecycleChanged onLifeCycleChanged() {
    return const OnLifecycleChanged();
  }
}

/// @nodoc
const $SignInEvent = _$SignInEventTearOff();

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailInputChanged,
    required TResult Function() signInPressed,
    required TResult Function() onLifeCycleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailInputChanged,
    TResult Function()? signInPressed,
    TResult Function()? onLifeCycleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailInputChanged value) emailInputChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(OnLifecycleChanged value) onLifeCycleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailInputChanged value)? emailInputChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(OnLifecycleChanged value)? onLifeCycleChanged,
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
    required TResult Function() signInPressed,
    required TResult Function() onLifeCycleChanged,
  }) {
    return emailInputChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailInputChanged,
    TResult Function()? signInPressed,
    TResult Function()? onLifeCycleChanged,
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
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(OnLifecycleChanged value) onLifeCycleChanged,
  }) {
    return emailInputChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailInputChanged value)? emailInputChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(OnLifecycleChanged value)? onLifeCycleChanged,
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
abstract class $SignInPressedCopyWith<$Res> {
  factory $SignInPressedCopyWith(
          SignInPressed value, $Res Function(SignInPressed) then) =
      _$SignInPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInPressedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInPressedCopyWith<$Res> {
  _$SignInPressedCopyWithImpl(
      SignInPressed _value, $Res Function(SignInPressed) _then)
      : super(_value, (v) => _then(v as SignInPressed));

  @override
  SignInPressed get _value => super._value as SignInPressed;
}

/// @nodoc

class _$SignInPressed implements SignInPressed {
  const _$SignInPressed();

  @override
  String toString() {
    return 'SignInEvent.signInPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailInputChanged,
    required TResult Function() signInPressed,
    required TResult Function() onLifeCycleChanged,
  }) {
    return signInPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailInputChanged,
    TResult Function()? signInPressed,
    TResult Function()? onLifeCycleChanged,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailInputChanged value) emailInputChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(OnLifecycleChanged value) onLifeCycleChanged,
  }) {
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailInputChanged value)? emailInputChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(OnLifecycleChanged value)? onLifeCycleChanged,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed(this);
    }
    return orElse();
  }
}

abstract class SignInPressed implements SignInEvent {
  const factory SignInPressed() = _$SignInPressed;
}

/// @nodoc
abstract class $OnLifecycleChangedCopyWith<$Res> {
  factory $OnLifecycleChangedCopyWith(
          OnLifecycleChanged value, $Res Function(OnLifecycleChanged) then) =
      _$OnLifecycleChangedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLifecycleChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $OnLifecycleChangedCopyWith<$Res> {
  _$OnLifecycleChangedCopyWithImpl(
      OnLifecycleChanged _value, $Res Function(OnLifecycleChanged) _then)
      : super(_value, (v) => _then(v as OnLifecycleChanged));

  @override
  OnLifecycleChanged get _value => super._value as OnLifecycleChanged;
}

/// @nodoc

class _$OnLifecycleChanged implements OnLifecycleChanged {
  const _$OnLifecycleChanged();

  @override
  String toString() {
    return 'SignInEvent.onLifeCycleChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnLifecycleChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailInputChanged,
    required TResult Function() signInPressed,
    required TResult Function() onLifeCycleChanged,
  }) {
    return onLifeCycleChanged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailInputChanged,
    TResult Function()? signInPressed,
    TResult Function()? onLifeCycleChanged,
    required TResult orElse(),
  }) {
    if (onLifeCycleChanged != null) {
      return onLifeCycleChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailInputChanged value) emailInputChanged,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(OnLifecycleChanged value) onLifeCycleChanged,
  }) {
    return onLifeCycleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailInputChanged value)? emailInputChanged,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(OnLifecycleChanged value)? onLifeCycleChanged,
    required TResult orElse(),
  }) {
    if (onLifeCycleChanged != null) {
      return onLifeCycleChanged(this);
    }
    return orElse();
  }
}

abstract class OnLifecycleChanged implements SignInEvent {
  const factory OnLifecycleChanged() = _$OnLifecycleChanged;
}

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {required EmailAddress email,
      required bool sendingLinkToEmail,
      required bool showErrorMessages,
      required Option<Either<AuthFailure, Unit>> linkSentToEmailOption}) {
    return _SignInState(
      email: email,
      sendingLinkToEmail: sendingLinkToEmail,
      showErrorMessages: showErrorMessages,
      linkSentToEmailOption: linkSentToEmailOption,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  EmailAddress get email => throw _privateConstructorUsedError;
  bool get sendingLinkToEmail => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get linkSentToEmailOption =>
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
      bool sendingLinkToEmail,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> linkSentToEmailOption});
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
    Object? sendingLinkToEmail = freezed,
    Object? showErrorMessages = freezed,
    Object? linkSentToEmailOption = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      sendingLinkToEmail: sendingLinkToEmail == freezed
          ? _value.sendingLinkToEmail
          : sendingLinkToEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      linkSentToEmailOption: linkSentToEmailOption == freezed
          ? _value.linkSentToEmailOption
          : linkSentToEmailOption // ignore: cast_nullable_to_non_nullable
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
      bool sendingLinkToEmail,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> linkSentToEmailOption});
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
    Object? sendingLinkToEmail = freezed,
    Object? showErrorMessages = freezed,
    Object? linkSentToEmailOption = freezed,
  }) {
    return _then(_SignInState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      sendingLinkToEmail: sendingLinkToEmail == freezed
          ? _value.sendingLinkToEmail
          : sendingLinkToEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      linkSentToEmailOption: linkSentToEmailOption == freezed
          ? _value.linkSentToEmailOption
          : linkSentToEmailOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {required this.email,
      required this.sendingLinkToEmail,
      required this.showErrorMessages,
      required this.linkSentToEmailOption});

  @override
  final EmailAddress email;
  @override
  final bool sendingLinkToEmail;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> linkSentToEmailOption;

  @override
  String toString() {
    return 'SignInState(email: $email, sendingLinkToEmail: $sendingLinkToEmail, showErrorMessages: $showErrorMessages, linkSentToEmailOption: $linkSentToEmailOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.sendingLinkToEmail, sendingLinkToEmail) ||
                const DeepCollectionEquality()
                    .equals(other.sendingLinkToEmail, sendingLinkToEmail)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.linkSentToEmailOption, linkSentToEmailOption) ||
                const DeepCollectionEquality().equals(
                    other.linkSentToEmailOption, linkSentToEmailOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(sendingLinkToEmail) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(linkSentToEmailOption);

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
          {required EmailAddress email,
          required bool sendingLinkToEmail,
          required bool showErrorMessages,
          required Option<Either<AuthFailure, Unit>> linkSentToEmailOption}) =
      _$_SignInState;

  @override
  EmailAddress get email => throw _privateConstructorUsedError;
  @override
  bool get sendingLinkToEmail => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get linkSentToEmailOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
