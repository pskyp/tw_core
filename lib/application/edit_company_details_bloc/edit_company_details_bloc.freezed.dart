// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_company_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditCompanyDetailsEventTearOff {
  const _$EditCompanyDetailsEventTearOff();

  OnCompanyNameInput onCompanyNameInput(String input) {
    return OnCompanyNameInput(
      input,
    );
  }

  OnVATNumberInput onVatNumberInput(String input) {
    return OnVATNumberInput(
      input,
    );
  }

  OnRegisteredAddressInput onRegisteredAddressInput(LocationModel location) {
    return OnRegisteredAddressInput(
      location,
    );
  }

  SubmitPressed onSubmitPressed() {
    return SubmitPressed();
  }

  OnCompanyAddressInput onCompanyAddressInput(LocationModel location) {
    return OnCompanyAddressInput(
      location,
    );
  }

  OnCompanyNumberInput onCompanyNumberInput(String input) {
    return OnCompanyNumberInput(
      input,
    );
  }
}

/// @nodoc
const $EditCompanyDetailsEvent = _$EditCompanyDetailsEventTearOff();

/// @nodoc
mixin _$EditCompanyDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) onCompanyNameInput,
    required TResult Function(String input) onVatNumberInput,
    required TResult Function(LocationModel location) onRegisteredAddressInput,
    required TResult Function() onSubmitPressed,
    required TResult Function(LocationModel location) onCompanyAddressInput,
    required TResult Function(String input) onCompanyNumberInput,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? onCompanyNameInput,
    TResult Function(String input)? onVatNumberInput,
    TResult Function(LocationModel location)? onRegisteredAddressInput,
    TResult Function()? onSubmitPressed,
    TResult Function(LocationModel location)? onCompanyAddressInput,
    TResult Function(String input)? onCompanyNumberInput,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? onCompanyNameInput,
    TResult Function(String input)? onVatNumberInput,
    TResult Function(LocationModel location)? onRegisteredAddressInput,
    TResult Function()? onSubmitPressed,
    TResult Function(LocationModel location)? onCompanyAddressInput,
    TResult Function(String input)? onCompanyNumberInput,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnCompanyNameInput value) onCompanyNameInput,
    required TResult Function(OnVATNumberInput value) onVatNumberInput,
    required TResult Function(OnRegisteredAddressInput value)
        onRegisteredAddressInput,
    required TResult Function(SubmitPressed value) onSubmitPressed,
    required TResult Function(OnCompanyAddressInput value)
        onCompanyAddressInput,
    required TResult Function(OnCompanyNumberInput value) onCompanyNumberInput,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnCompanyNameInput value)? onCompanyNameInput,
    TResult Function(OnVATNumberInput value)? onVatNumberInput,
    TResult Function(OnRegisteredAddressInput value)? onRegisteredAddressInput,
    TResult Function(SubmitPressed value)? onSubmitPressed,
    TResult Function(OnCompanyAddressInput value)? onCompanyAddressInput,
    TResult Function(OnCompanyNumberInput value)? onCompanyNumberInput,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnCompanyNameInput value)? onCompanyNameInput,
    TResult Function(OnVATNumberInput value)? onVatNumberInput,
    TResult Function(OnRegisteredAddressInput value)? onRegisteredAddressInput,
    TResult Function(SubmitPressed value)? onSubmitPressed,
    TResult Function(OnCompanyAddressInput value)? onCompanyAddressInput,
    TResult Function(OnCompanyNumberInput value)? onCompanyNumberInput,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCompanyDetailsEventCopyWith<$Res> {
  factory $EditCompanyDetailsEventCopyWith(EditCompanyDetailsEvent value,
          $Res Function(EditCompanyDetailsEvent) then) =
      _$EditCompanyDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditCompanyDetailsEventCopyWithImpl<$Res>
    implements $EditCompanyDetailsEventCopyWith<$Res> {
  _$EditCompanyDetailsEventCopyWithImpl(this._value, this._then);

  final EditCompanyDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(EditCompanyDetailsEvent) _then;
}

/// @nodoc
abstract class $OnCompanyNameInputCopyWith<$Res> {
  factory $OnCompanyNameInputCopyWith(
          OnCompanyNameInput value, $Res Function(OnCompanyNameInput) then) =
      _$OnCompanyNameInputCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$OnCompanyNameInputCopyWithImpl<$Res>
    extends _$EditCompanyDetailsEventCopyWithImpl<$Res>
    implements $OnCompanyNameInputCopyWith<$Res> {
  _$OnCompanyNameInputCopyWithImpl(
      OnCompanyNameInput _value, $Res Function(OnCompanyNameInput) _then)
      : super(_value, (v) => _then(v as OnCompanyNameInput));

  @override
  OnCompanyNameInput get _value => super._value as OnCompanyNameInput;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(OnCompanyNameInput(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnCompanyNameInput implements OnCompanyNameInput {
  _$OnCompanyNameInput(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'EditCompanyDetailsEvent.onCompanyNameInput(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnCompanyNameInput &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  $OnCompanyNameInputCopyWith<OnCompanyNameInput> get copyWith =>
      _$OnCompanyNameInputCopyWithImpl<OnCompanyNameInput>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) onCompanyNameInput,
    required TResult Function(String input) onVatNumberInput,
    required TResult Function(LocationModel location) onRegisteredAddressInput,
    required TResult Function() onSubmitPressed,
    required TResult Function(LocationModel location) onCompanyAddressInput,
    required TResult Function(String input) onCompanyNumberInput,
  }) {
    return onCompanyNameInput(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? onCompanyNameInput,
    TResult Function(String input)? onVatNumberInput,
    TResult Function(LocationModel location)? onRegisteredAddressInput,
    TResult Function()? onSubmitPressed,
    TResult Function(LocationModel location)? onCompanyAddressInput,
    TResult Function(String input)? onCompanyNumberInput,
  }) {
    return onCompanyNameInput?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? onCompanyNameInput,
    TResult Function(String input)? onVatNumberInput,
    TResult Function(LocationModel location)? onRegisteredAddressInput,
    TResult Function()? onSubmitPressed,
    TResult Function(LocationModel location)? onCompanyAddressInput,
    TResult Function(String input)? onCompanyNumberInput,
    required TResult orElse(),
  }) {
    if (onCompanyNameInput != null) {
      return onCompanyNameInput(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnCompanyNameInput value) onCompanyNameInput,
    required TResult Function(OnVATNumberInput value) onVatNumberInput,
    required TResult Function(OnRegisteredAddressInput value)
        onRegisteredAddressInput,
    required TResult Function(SubmitPressed value) onSubmitPressed,
    required TResult Function(OnCompanyAddressInput value)
        onCompanyAddressInput,
    required TResult Function(OnCompanyNumberInput value) onCompanyNumberInput,
  }) {
    return onCompanyNameInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnCompanyNameInput value)? onCompanyNameInput,
    TResult Function(OnVATNumberInput value)? onVatNumberInput,
    TResult Function(OnRegisteredAddressInput value)? onRegisteredAddressInput,
    TResult Function(SubmitPressed value)? onSubmitPressed,
    TResult Function(OnCompanyAddressInput value)? onCompanyAddressInput,
    TResult Function(OnCompanyNumberInput value)? onCompanyNumberInput,
  }) {
    return onCompanyNameInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnCompanyNameInput value)? onCompanyNameInput,
    TResult Function(OnVATNumberInput value)? onVatNumberInput,
    TResult Function(OnRegisteredAddressInput value)? onRegisteredAddressInput,
    TResult Function(SubmitPressed value)? onSubmitPressed,
    TResult Function(OnCompanyAddressInput value)? onCompanyAddressInput,
    TResult Function(OnCompanyNumberInput value)? onCompanyNumberInput,
    required TResult orElse(),
  }) {
    if (onCompanyNameInput != null) {
      return onCompanyNameInput(this);
    }
    return orElse();
  }
}

abstract class OnCompanyNameInput implements EditCompanyDetailsEvent {
  factory OnCompanyNameInput(String input) = _$OnCompanyNameInput;

  String get input;
  @JsonKey(ignore: true)
  $OnCompanyNameInputCopyWith<OnCompanyNameInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnVATNumberInputCopyWith<$Res> {
  factory $OnVATNumberInputCopyWith(
          OnVATNumberInput value, $Res Function(OnVATNumberInput) then) =
      _$OnVATNumberInputCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$OnVATNumberInputCopyWithImpl<$Res>
    extends _$EditCompanyDetailsEventCopyWithImpl<$Res>
    implements $OnVATNumberInputCopyWith<$Res> {
  _$OnVATNumberInputCopyWithImpl(
      OnVATNumberInput _value, $Res Function(OnVATNumberInput) _then)
      : super(_value, (v) => _then(v as OnVATNumberInput));

  @override
  OnVATNumberInput get _value => super._value as OnVATNumberInput;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(OnVATNumberInput(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnVATNumberInput implements OnVATNumberInput {
  _$OnVATNumberInput(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'EditCompanyDetailsEvent.onVatNumberInput(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnVATNumberInput &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  $OnVATNumberInputCopyWith<OnVATNumberInput> get copyWith =>
      _$OnVATNumberInputCopyWithImpl<OnVATNumberInput>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) onCompanyNameInput,
    required TResult Function(String input) onVatNumberInput,
    required TResult Function(LocationModel location) onRegisteredAddressInput,
    required TResult Function() onSubmitPressed,
    required TResult Function(LocationModel location) onCompanyAddressInput,
    required TResult Function(String input) onCompanyNumberInput,
  }) {
    return onVatNumberInput(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? onCompanyNameInput,
    TResult Function(String input)? onVatNumberInput,
    TResult Function(LocationModel location)? onRegisteredAddressInput,
    TResult Function()? onSubmitPressed,
    TResult Function(LocationModel location)? onCompanyAddressInput,
    TResult Function(String input)? onCompanyNumberInput,
  }) {
    return onVatNumberInput?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? onCompanyNameInput,
    TResult Function(String input)? onVatNumberInput,
    TResult Function(LocationModel location)? onRegisteredAddressInput,
    TResult Function()? onSubmitPressed,
    TResult Function(LocationModel location)? onCompanyAddressInput,
    TResult Function(String input)? onCompanyNumberInput,
    required TResult orElse(),
  }) {
    if (onVatNumberInput != null) {
      return onVatNumberInput(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnCompanyNameInput value) onCompanyNameInput,
    required TResult Function(OnVATNumberInput value) onVatNumberInput,
    required TResult Function(OnRegisteredAddressInput value)
        onRegisteredAddressInput,
    required TResult Function(SubmitPressed value) onSubmitPressed,
    required TResult Function(OnCompanyAddressInput value)
        onCompanyAddressInput,
    required TResult Function(OnCompanyNumberInput value) onCompanyNumberInput,
  }) {
    return onVatNumberInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnCompanyNameInput value)? onCompanyNameInput,
    TResult Function(OnVATNumberInput value)? onVatNumberInput,
    TResult Function(OnRegisteredAddressInput value)? onRegisteredAddressInput,
    TResult Function(SubmitPressed value)? onSubmitPressed,
    TResult Function(OnCompanyAddressInput value)? onCompanyAddressInput,
    TResult Function(OnCompanyNumberInput value)? onCompanyNumberInput,
  }) {
    return onVatNumberInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnCompanyNameInput value)? onCompanyNameInput,
    TResult Function(OnVATNumberInput value)? onVatNumberInput,
    TResult Function(OnRegisteredAddressInput value)? onRegisteredAddressInput,
    TResult Function(SubmitPressed value)? onSubmitPressed,
    TResult Function(OnCompanyAddressInput value)? onCompanyAddressInput,
    TResult Function(OnCompanyNumberInput value)? onCompanyNumberInput,
    required TResult orElse(),
  }) {
    if (onVatNumberInput != null) {
      return onVatNumberInput(this);
    }
    return orElse();
  }
}

abstract class OnVATNumberInput implements EditCompanyDetailsEvent {
  factory OnVATNumberInput(String input) = _$OnVATNumberInput;

  String get input;
  @JsonKey(ignore: true)
  $OnVATNumberInputCopyWith<OnVATNumberInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnRegisteredAddressInputCopyWith<$Res> {
  factory $OnRegisteredAddressInputCopyWith(OnRegisteredAddressInput value,
          $Res Function(OnRegisteredAddressInput) then) =
      _$OnRegisteredAddressInputCopyWithImpl<$Res>;
  $Res call({LocationModel location});
}

/// @nodoc
class _$OnRegisteredAddressInputCopyWithImpl<$Res>
    extends _$EditCompanyDetailsEventCopyWithImpl<$Res>
    implements $OnRegisteredAddressInputCopyWith<$Res> {
  _$OnRegisteredAddressInputCopyWithImpl(OnRegisteredAddressInput _value,
      $Res Function(OnRegisteredAddressInput) _then)
      : super(_value, (v) => _then(v as OnRegisteredAddressInput));

  @override
  OnRegisteredAddressInput get _value =>
      super._value as OnRegisteredAddressInput;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(OnRegisteredAddressInput(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc

class _$OnRegisteredAddressInput implements OnRegisteredAddressInput {
  _$OnRegisteredAddressInput(this.location);

  @override
  final LocationModel location;

  @override
  String toString() {
    return 'EditCompanyDetailsEvent.onRegisteredAddressInput(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnRegisteredAddressInput &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  $OnRegisteredAddressInputCopyWith<OnRegisteredAddressInput> get copyWith =>
      _$OnRegisteredAddressInputCopyWithImpl<OnRegisteredAddressInput>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) onCompanyNameInput,
    required TResult Function(String input) onVatNumberInput,
    required TResult Function(LocationModel location) onRegisteredAddressInput,
    required TResult Function() onSubmitPressed,
    required TResult Function(LocationModel location) onCompanyAddressInput,
    required TResult Function(String input) onCompanyNumberInput,
  }) {
    return onRegisteredAddressInput(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? onCompanyNameInput,
    TResult Function(String input)? onVatNumberInput,
    TResult Function(LocationModel location)? onRegisteredAddressInput,
    TResult Function()? onSubmitPressed,
    TResult Function(LocationModel location)? onCompanyAddressInput,
    TResult Function(String input)? onCompanyNumberInput,
  }) {
    return onRegisteredAddressInput?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? onCompanyNameInput,
    TResult Function(String input)? onVatNumberInput,
    TResult Function(LocationModel location)? onRegisteredAddressInput,
    TResult Function()? onSubmitPressed,
    TResult Function(LocationModel location)? onCompanyAddressInput,
    TResult Function(String input)? onCompanyNumberInput,
    required TResult orElse(),
  }) {
    if (onRegisteredAddressInput != null) {
      return onRegisteredAddressInput(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnCompanyNameInput value) onCompanyNameInput,
    required TResult Function(OnVATNumberInput value) onVatNumberInput,
    required TResult Function(OnRegisteredAddressInput value)
        onRegisteredAddressInput,
    required TResult Function(SubmitPressed value) onSubmitPressed,
    required TResult Function(OnCompanyAddressInput value)
        onCompanyAddressInput,
    required TResult Function(OnCompanyNumberInput value) onCompanyNumberInput,
  }) {
    return onRegisteredAddressInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnCompanyNameInput value)? onCompanyNameInput,
    TResult Function(OnVATNumberInput value)? onVatNumberInput,
    TResult Function(OnRegisteredAddressInput value)? onRegisteredAddressInput,
    TResult Function(SubmitPressed value)? onSubmitPressed,
    TResult Function(OnCompanyAddressInput value)? onCompanyAddressInput,
    TResult Function(OnCompanyNumberInput value)? onCompanyNumberInput,
  }) {
    return onRegisteredAddressInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnCompanyNameInput value)? onCompanyNameInput,
    TResult Function(OnVATNumberInput value)? onVatNumberInput,
    TResult Function(OnRegisteredAddressInput value)? onRegisteredAddressInput,
    TResult Function(SubmitPressed value)? onSubmitPressed,
    TResult Function(OnCompanyAddressInput value)? onCompanyAddressInput,
    TResult Function(OnCompanyNumberInput value)? onCompanyNumberInput,
    required TResult orElse(),
  }) {
    if (onRegisteredAddressInput != null) {
      return onRegisteredAddressInput(this);
    }
    return orElse();
  }
}

abstract class OnRegisteredAddressInput implements EditCompanyDetailsEvent {
  factory OnRegisteredAddressInput(LocationModel location) =
      _$OnRegisteredAddressInput;

  LocationModel get location;
  @JsonKey(ignore: true)
  $OnRegisteredAddressInputCopyWith<OnRegisteredAddressInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitPressedCopyWith<$Res> {
  factory $SubmitPressedCopyWith(
          SubmitPressed value, $Res Function(SubmitPressed) then) =
      _$SubmitPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitPressedCopyWithImpl<$Res>
    extends _$EditCompanyDetailsEventCopyWithImpl<$Res>
    implements $SubmitPressedCopyWith<$Res> {
  _$SubmitPressedCopyWithImpl(
      SubmitPressed _value, $Res Function(SubmitPressed) _then)
      : super(_value, (v) => _then(v as SubmitPressed));

  @override
  SubmitPressed get _value => super._value as SubmitPressed;
}

/// @nodoc

class _$SubmitPressed implements SubmitPressed {
  _$SubmitPressed();

  @override
  String toString() {
    return 'EditCompanyDetailsEvent.onSubmitPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SubmitPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) onCompanyNameInput,
    required TResult Function(String input) onVatNumberInput,
    required TResult Function(LocationModel location) onRegisteredAddressInput,
    required TResult Function() onSubmitPressed,
    required TResult Function(LocationModel location) onCompanyAddressInput,
    required TResult Function(String input) onCompanyNumberInput,
  }) {
    return onSubmitPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? onCompanyNameInput,
    TResult Function(String input)? onVatNumberInput,
    TResult Function(LocationModel location)? onRegisteredAddressInput,
    TResult Function()? onSubmitPressed,
    TResult Function(LocationModel location)? onCompanyAddressInput,
    TResult Function(String input)? onCompanyNumberInput,
  }) {
    return onSubmitPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? onCompanyNameInput,
    TResult Function(String input)? onVatNumberInput,
    TResult Function(LocationModel location)? onRegisteredAddressInput,
    TResult Function()? onSubmitPressed,
    TResult Function(LocationModel location)? onCompanyAddressInput,
    TResult Function(String input)? onCompanyNumberInput,
    required TResult orElse(),
  }) {
    if (onSubmitPressed != null) {
      return onSubmitPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnCompanyNameInput value) onCompanyNameInput,
    required TResult Function(OnVATNumberInput value) onVatNumberInput,
    required TResult Function(OnRegisteredAddressInput value)
        onRegisteredAddressInput,
    required TResult Function(SubmitPressed value) onSubmitPressed,
    required TResult Function(OnCompanyAddressInput value)
        onCompanyAddressInput,
    required TResult Function(OnCompanyNumberInput value) onCompanyNumberInput,
  }) {
    return onSubmitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnCompanyNameInput value)? onCompanyNameInput,
    TResult Function(OnVATNumberInput value)? onVatNumberInput,
    TResult Function(OnRegisteredAddressInput value)? onRegisteredAddressInput,
    TResult Function(SubmitPressed value)? onSubmitPressed,
    TResult Function(OnCompanyAddressInput value)? onCompanyAddressInput,
    TResult Function(OnCompanyNumberInput value)? onCompanyNumberInput,
  }) {
    return onSubmitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnCompanyNameInput value)? onCompanyNameInput,
    TResult Function(OnVATNumberInput value)? onVatNumberInput,
    TResult Function(OnRegisteredAddressInput value)? onRegisteredAddressInput,
    TResult Function(SubmitPressed value)? onSubmitPressed,
    TResult Function(OnCompanyAddressInput value)? onCompanyAddressInput,
    TResult Function(OnCompanyNumberInput value)? onCompanyNumberInput,
    required TResult orElse(),
  }) {
    if (onSubmitPressed != null) {
      return onSubmitPressed(this);
    }
    return orElse();
  }
}

abstract class SubmitPressed implements EditCompanyDetailsEvent {
  factory SubmitPressed() = _$SubmitPressed;
}

/// @nodoc
abstract class $OnCompanyAddressInputCopyWith<$Res> {
  factory $OnCompanyAddressInputCopyWith(OnCompanyAddressInput value,
          $Res Function(OnCompanyAddressInput) then) =
      _$OnCompanyAddressInputCopyWithImpl<$Res>;
  $Res call({LocationModel location});
}

/// @nodoc
class _$OnCompanyAddressInputCopyWithImpl<$Res>
    extends _$EditCompanyDetailsEventCopyWithImpl<$Res>
    implements $OnCompanyAddressInputCopyWith<$Res> {
  _$OnCompanyAddressInputCopyWithImpl(
      OnCompanyAddressInput _value, $Res Function(OnCompanyAddressInput) _then)
      : super(_value, (v) => _then(v as OnCompanyAddressInput));

  @override
  OnCompanyAddressInput get _value => super._value as OnCompanyAddressInput;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(OnCompanyAddressInput(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc

class _$OnCompanyAddressInput implements OnCompanyAddressInput {
  _$OnCompanyAddressInput(this.location);

  @override
  final LocationModel location;

  @override
  String toString() {
    return 'EditCompanyDetailsEvent.onCompanyAddressInput(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnCompanyAddressInput &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  $OnCompanyAddressInputCopyWith<OnCompanyAddressInput> get copyWith =>
      _$OnCompanyAddressInputCopyWithImpl<OnCompanyAddressInput>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) onCompanyNameInput,
    required TResult Function(String input) onVatNumberInput,
    required TResult Function(LocationModel location) onRegisteredAddressInput,
    required TResult Function() onSubmitPressed,
    required TResult Function(LocationModel location) onCompanyAddressInput,
    required TResult Function(String input) onCompanyNumberInput,
  }) {
    return onCompanyAddressInput(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? onCompanyNameInput,
    TResult Function(String input)? onVatNumberInput,
    TResult Function(LocationModel location)? onRegisteredAddressInput,
    TResult Function()? onSubmitPressed,
    TResult Function(LocationModel location)? onCompanyAddressInput,
    TResult Function(String input)? onCompanyNumberInput,
  }) {
    return onCompanyAddressInput?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? onCompanyNameInput,
    TResult Function(String input)? onVatNumberInput,
    TResult Function(LocationModel location)? onRegisteredAddressInput,
    TResult Function()? onSubmitPressed,
    TResult Function(LocationModel location)? onCompanyAddressInput,
    TResult Function(String input)? onCompanyNumberInput,
    required TResult orElse(),
  }) {
    if (onCompanyAddressInput != null) {
      return onCompanyAddressInput(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnCompanyNameInput value) onCompanyNameInput,
    required TResult Function(OnVATNumberInput value) onVatNumberInput,
    required TResult Function(OnRegisteredAddressInput value)
        onRegisteredAddressInput,
    required TResult Function(SubmitPressed value) onSubmitPressed,
    required TResult Function(OnCompanyAddressInput value)
        onCompanyAddressInput,
    required TResult Function(OnCompanyNumberInput value) onCompanyNumberInput,
  }) {
    return onCompanyAddressInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnCompanyNameInput value)? onCompanyNameInput,
    TResult Function(OnVATNumberInput value)? onVatNumberInput,
    TResult Function(OnRegisteredAddressInput value)? onRegisteredAddressInput,
    TResult Function(SubmitPressed value)? onSubmitPressed,
    TResult Function(OnCompanyAddressInput value)? onCompanyAddressInput,
    TResult Function(OnCompanyNumberInput value)? onCompanyNumberInput,
  }) {
    return onCompanyAddressInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnCompanyNameInput value)? onCompanyNameInput,
    TResult Function(OnVATNumberInput value)? onVatNumberInput,
    TResult Function(OnRegisteredAddressInput value)? onRegisteredAddressInput,
    TResult Function(SubmitPressed value)? onSubmitPressed,
    TResult Function(OnCompanyAddressInput value)? onCompanyAddressInput,
    TResult Function(OnCompanyNumberInput value)? onCompanyNumberInput,
    required TResult orElse(),
  }) {
    if (onCompanyAddressInput != null) {
      return onCompanyAddressInput(this);
    }
    return orElse();
  }
}

abstract class OnCompanyAddressInput implements EditCompanyDetailsEvent {
  factory OnCompanyAddressInput(LocationModel location) =
      _$OnCompanyAddressInput;

  LocationModel get location;
  @JsonKey(ignore: true)
  $OnCompanyAddressInputCopyWith<OnCompanyAddressInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnCompanyNumberInputCopyWith<$Res> {
  factory $OnCompanyNumberInputCopyWith(OnCompanyNumberInput value,
          $Res Function(OnCompanyNumberInput) then) =
      _$OnCompanyNumberInputCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$OnCompanyNumberInputCopyWithImpl<$Res>
    extends _$EditCompanyDetailsEventCopyWithImpl<$Res>
    implements $OnCompanyNumberInputCopyWith<$Res> {
  _$OnCompanyNumberInputCopyWithImpl(
      OnCompanyNumberInput _value, $Res Function(OnCompanyNumberInput) _then)
      : super(_value, (v) => _then(v as OnCompanyNumberInput));

  @override
  OnCompanyNumberInput get _value => super._value as OnCompanyNumberInput;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(OnCompanyNumberInput(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnCompanyNumberInput implements OnCompanyNumberInput {
  _$OnCompanyNumberInput(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'EditCompanyDetailsEvent.onCompanyNumberInput(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnCompanyNumberInput &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  $OnCompanyNumberInputCopyWith<OnCompanyNumberInput> get copyWith =>
      _$OnCompanyNumberInputCopyWithImpl<OnCompanyNumberInput>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) onCompanyNameInput,
    required TResult Function(String input) onVatNumberInput,
    required TResult Function(LocationModel location) onRegisteredAddressInput,
    required TResult Function() onSubmitPressed,
    required TResult Function(LocationModel location) onCompanyAddressInput,
    required TResult Function(String input) onCompanyNumberInput,
  }) {
    return onCompanyNumberInput(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? onCompanyNameInput,
    TResult Function(String input)? onVatNumberInput,
    TResult Function(LocationModel location)? onRegisteredAddressInput,
    TResult Function()? onSubmitPressed,
    TResult Function(LocationModel location)? onCompanyAddressInput,
    TResult Function(String input)? onCompanyNumberInput,
  }) {
    return onCompanyNumberInput?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? onCompanyNameInput,
    TResult Function(String input)? onVatNumberInput,
    TResult Function(LocationModel location)? onRegisteredAddressInput,
    TResult Function()? onSubmitPressed,
    TResult Function(LocationModel location)? onCompanyAddressInput,
    TResult Function(String input)? onCompanyNumberInput,
    required TResult orElse(),
  }) {
    if (onCompanyNumberInput != null) {
      return onCompanyNumberInput(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnCompanyNameInput value) onCompanyNameInput,
    required TResult Function(OnVATNumberInput value) onVatNumberInput,
    required TResult Function(OnRegisteredAddressInput value)
        onRegisteredAddressInput,
    required TResult Function(SubmitPressed value) onSubmitPressed,
    required TResult Function(OnCompanyAddressInput value)
        onCompanyAddressInput,
    required TResult Function(OnCompanyNumberInput value) onCompanyNumberInput,
  }) {
    return onCompanyNumberInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnCompanyNameInput value)? onCompanyNameInput,
    TResult Function(OnVATNumberInput value)? onVatNumberInput,
    TResult Function(OnRegisteredAddressInput value)? onRegisteredAddressInput,
    TResult Function(SubmitPressed value)? onSubmitPressed,
    TResult Function(OnCompanyAddressInput value)? onCompanyAddressInput,
    TResult Function(OnCompanyNumberInput value)? onCompanyNumberInput,
  }) {
    return onCompanyNumberInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnCompanyNameInput value)? onCompanyNameInput,
    TResult Function(OnVATNumberInput value)? onVatNumberInput,
    TResult Function(OnRegisteredAddressInput value)? onRegisteredAddressInput,
    TResult Function(SubmitPressed value)? onSubmitPressed,
    TResult Function(OnCompanyAddressInput value)? onCompanyAddressInput,
    TResult Function(OnCompanyNumberInput value)? onCompanyNumberInput,
    required TResult orElse(),
  }) {
    if (onCompanyNumberInput != null) {
      return onCompanyNumberInput(this);
    }
    return orElse();
  }
}

abstract class OnCompanyNumberInput implements EditCompanyDetailsEvent {
  factory OnCompanyNumberInput(String input) = _$OnCompanyNumberInput;

  String get input;
  @JsonKey(ignore: true)
  $OnCompanyNumberInputCopyWith<OnCompanyNumberInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EditCompanyDetailsStateTearOff {
  const _$EditCompanyDetailsStateTearOff();

  _EditCompanyDetailsState call(
      {required TWCompanyName companyName,
      required CompanyNumber companyNumber,
      required TWLocation registeredAddress,
      required TWLocation companyAddress,
      required VATNumber vatNumber,
      required bool showErrors,
      required bool submissionInProgress,
      required Option<Either<TWServerError, Unit>> resultOption}) {
    return _EditCompanyDetailsState(
      companyName: companyName,
      companyNumber: companyNumber,
      registeredAddress: registeredAddress,
      companyAddress: companyAddress,
      vatNumber: vatNumber,
      showErrors: showErrors,
      submissionInProgress: submissionInProgress,
      resultOption: resultOption,
    );
  }
}

/// @nodoc
const $EditCompanyDetailsState = _$EditCompanyDetailsStateTearOff();

/// @nodoc
mixin _$EditCompanyDetailsState {
  TWCompanyName get companyName => throw _privateConstructorUsedError;
  CompanyNumber get companyNumber => throw _privateConstructorUsedError;
  TWLocation get registeredAddress => throw _privateConstructorUsedError;
  TWLocation get companyAddress => throw _privateConstructorUsedError;
  VATNumber get vatNumber => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  bool get submissionInProgress => throw _privateConstructorUsedError;
  Option<Either<TWServerError, Unit>> get resultOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditCompanyDetailsStateCopyWith<EditCompanyDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCompanyDetailsStateCopyWith<$Res> {
  factory $EditCompanyDetailsStateCopyWith(EditCompanyDetailsState value,
          $Res Function(EditCompanyDetailsState) then) =
      _$EditCompanyDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {TWCompanyName companyName,
      CompanyNumber companyNumber,
      TWLocation registeredAddress,
      TWLocation companyAddress,
      VATNumber vatNumber,
      bool showErrors,
      bool submissionInProgress,
      Option<Either<TWServerError, Unit>> resultOption});
}

/// @nodoc
class _$EditCompanyDetailsStateCopyWithImpl<$Res>
    implements $EditCompanyDetailsStateCopyWith<$Res> {
  _$EditCompanyDetailsStateCopyWithImpl(this._value, this._then);

  final EditCompanyDetailsState _value;
  // ignore: unused_field
  final $Res Function(EditCompanyDetailsState) _then;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? companyNumber = freezed,
    Object? registeredAddress = freezed,
    Object? companyAddress = freezed,
    Object? vatNumber = freezed,
    Object? showErrors = freezed,
    Object? submissionInProgress = freezed,
    Object? resultOption = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as TWCompanyName,
      companyNumber: companyNumber == freezed
          ? _value.companyNumber
          : companyNumber // ignore: cast_nullable_to_non_nullable
              as CompanyNumber,
      registeredAddress: registeredAddress == freezed
          ? _value.registeredAddress
          : registeredAddress // ignore: cast_nullable_to_non_nullable
              as TWLocation,
      companyAddress: companyAddress == freezed
          ? _value.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as TWLocation,
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as VATNumber,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionInProgress: submissionInProgress == freezed
          ? _value.submissionInProgress
          : submissionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TWServerError, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$EditCompanyDetailsStateCopyWith<$Res>
    implements $EditCompanyDetailsStateCopyWith<$Res> {
  factory _$EditCompanyDetailsStateCopyWith(_EditCompanyDetailsState value,
          $Res Function(_EditCompanyDetailsState) then) =
      __$EditCompanyDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TWCompanyName companyName,
      CompanyNumber companyNumber,
      TWLocation registeredAddress,
      TWLocation companyAddress,
      VATNumber vatNumber,
      bool showErrors,
      bool submissionInProgress,
      Option<Either<TWServerError, Unit>> resultOption});
}

/// @nodoc
class __$EditCompanyDetailsStateCopyWithImpl<$Res>
    extends _$EditCompanyDetailsStateCopyWithImpl<$Res>
    implements _$EditCompanyDetailsStateCopyWith<$Res> {
  __$EditCompanyDetailsStateCopyWithImpl(_EditCompanyDetailsState _value,
      $Res Function(_EditCompanyDetailsState) _then)
      : super(_value, (v) => _then(v as _EditCompanyDetailsState));

  @override
  _EditCompanyDetailsState get _value =>
      super._value as _EditCompanyDetailsState;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? companyNumber = freezed,
    Object? registeredAddress = freezed,
    Object? companyAddress = freezed,
    Object? vatNumber = freezed,
    Object? showErrors = freezed,
    Object? submissionInProgress = freezed,
    Object? resultOption = freezed,
  }) {
    return _then(_EditCompanyDetailsState(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as TWCompanyName,
      companyNumber: companyNumber == freezed
          ? _value.companyNumber
          : companyNumber // ignore: cast_nullable_to_non_nullable
              as CompanyNumber,
      registeredAddress: registeredAddress == freezed
          ? _value.registeredAddress
          : registeredAddress // ignore: cast_nullable_to_non_nullable
              as TWLocation,
      companyAddress: companyAddress == freezed
          ? _value.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as TWLocation,
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as VATNumber,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionInProgress: submissionInProgress == freezed
          ? _value.submissionInProgress
          : submissionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TWServerError, Unit>>,
    ));
  }
}

/// @nodoc

class _$_EditCompanyDetailsState extends _EditCompanyDetailsState {
  _$_EditCompanyDetailsState(
      {required this.companyName,
      required this.companyNumber,
      required this.registeredAddress,
      required this.companyAddress,
      required this.vatNumber,
      required this.showErrors,
      required this.submissionInProgress,
      required this.resultOption})
      : super._();

  @override
  final TWCompanyName companyName;
  @override
  final CompanyNumber companyNumber;
  @override
  final TWLocation registeredAddress;
  @override
  final TWLocation companyAddress;
  @override
  final VATNumber vatNumber;
  @override
  final bool showErrors;
  @override
  final bool submissionInProgress;
  @override
  final Option<Either<TWServerError, Unit>> resultOption;

  @override
  String toString() {
    return 'EditCompanyDetailsState(companyName: $companyName, companyNumber: $companyNumber, registeredAddress: $registeredAddress, companyAddress: $companyAddress, vatNumber: $vatNumber, showErrors: $showErrors, submissionInProgress: $submissionInProgress, resultOption: $resultOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditCompanyDetailsState &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality()
                .equals(other.companyNumber, companyNumber) &&
            const DeepCollectionEquality()
                .equals(other.registeredAddress, registeredAddress) &&
            const DeepCollectionEquality()
                .equals(other.companyAddress, companyAddress) &&
            const DeepCollectionEquality().equals(other.vatNumber, vatNumber) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality()
                .equals(other.submissionInProgress, submissionInProgress) &&
            const DeepCollectionEquality()
                .equals(other.resultOption, resultOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(companyName),
      const DeepCollectionEquality().hash(companyNumber),
      const DeepCollectionEquality().hash(registeredAddress),
      const DeepCollectionEquality().hash(companyAddress),
      const DeepCollectionEquality().hash(vatNumber),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(submissionInProgress),
      const DeepCollectionEquality().hash(resultOption));

  @JsonKey(ignore: true)
  @override
  _$EditCompanyDetailsStateCopyWith<_EditCompanyDetailsState> get copyWith =>
      __$EditCompanyDetailsStateCopyWithImpl<_EditCompanyDetailsState>(
          this, _$identity);
}

abstract class _EditCompanyDetailsState extends EditCompanyDetailsState {
  factory _EditCompanyDetailsState(
          {required TWCompanyName companyName,
          required CompanyNumber companyNumber,
          required TWLocation registeredAddress,
          required TWLocation companyAddress,
          required VATNumber vatNumber,
          required bool showErrors,
          required bool submissionInProgress,
          required Option<Either<TWServerError, Unit>> resultOption}) =
      _$_EditCompanyDetailsState;
  _EditCompanyDetailsState._() : super._();

  @override
  TWCompanyName get companyName;
  @override
  CompanyNumber get companyNumber;
  @override
  TWLocation get registeredAddress;
  @override
  TWLocation get companyAddress;
  @override
  VATNumber get vatNumber;
  @override
  bool get showErrors;
  @override
  bool get submissionInProgress;
  @override
  Option<Either<TWServerError, Unit>> get resultOption;
  @override
  @JsonKey(ignore: true)
  _$EditCompanyDetailsStateCopyWith<_EditCompanyDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
