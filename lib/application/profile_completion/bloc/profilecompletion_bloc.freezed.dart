// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profilecompletion_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfilecompletionEventTearOff {
  const _$ProfilecompletionEventTearOff();

  DisplayNameChanged displayNameChanged(String value) {
    return DisplayNameChanged(
      value,
    );
  }

  PhoneChanged phoneChanged(String value) {
    return PhoneChanged(
      value,
    );
  }

  CompanyNameChanged companyNameChanged(String value) {
    return CompanyNameChanged(
      value,
    );
  }

  CompanyDomainChanged companyDomainChanged(String value) {
    return CompanyDomainChanged(
      value,
    );
  }

  LocationChanged locationChanged(LocationModel value) {
    return LocationChanged(
      value,
    );
  }

  SubmitPressed submitPressed() {
    return const SubmitPressed();
  }
}

/// @nodoc
const $ProfilecompletionEvent = _$ProfilecompletionEventTearOff();

/// @nodoc
mixin _$ProfilecompletionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) displayNameChanged,
    required TResult Function(String value) phoneChanged,
    required TResult Function(String value) companyNameChanged,
    required TResult Function(String value) companyDomainChanged,
    required TResult Function(LocationModel value) locationChanged,
    required TResult Function() submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? displayNameChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(String value)? companyNameChanged,
    TResult Function(String value)? companyDomainChanged,
    TResult Function(LocationModel value)? locationChanged,
    TResult Function()? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? displayNameChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(String value)? companyNameChanged,
    TResult Function(String value)? companyDomainChanged,
    TResult Function(LocationModel value)? locationChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(CompanyNameChanged value) companyNameChanged,
    required TResult Function(CompanyDomainChanged value) companyDomainChanged,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(CompanyNameChanged value)? companyNameChanged,
    TResult Function(CompanyDomainChanged value)? companyDomainChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(SubmitPressed value)? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(CompanyNameChanged value)? companyNameChanged,
    TResult Function(CompanyDomainChanged value)? companyDomainChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilecompletionEventCopyWith<$Res> {
  factory $ProfilecompletionEventCopyWith(ProfilecompletionEvent value,
          $Res Function(ProfilecompletionEvent) then) =
      _$ProfilecompletionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfilecompletionEventCopyWithImpl<$Res>
    implements $ProfilecompletionEventCopyWith<$Res> {
  _$ProfilecompletionEventCopyWithImpl(this._value, this._then);

  final ProfilecompletionEvent _value;
  // ignore: unused_field
  final $Res Function(ProfilecompletionEvent) _then;
}

/// @nodoc
abstract class $DisplayNameChangedCopyWith<$Res> {
  factory $DisplayNameChangedCopyWith(
          DisplayNameChanged value, $Res Function(DisplayNameChanged) then) =
      _$DisplayNameChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$DisplayNameChangedCopyWithImpl<$Res>
    extends _$ProfilecompletionEventCopyWithImpl<$Res>
    implements $DisplayNameChangedCopyWith<$Res> {
  _$DisplayNameChangedCopyWithImpl(
      DisplayNameChanged _value, $Res Function(DisplayNameChanged) _then)
      : super(_value, (v) => _then(v as DisplayNameChanged));

  @override
  DisplayNameChanged get _value => super._value as DisplayNameChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(DisplayNameChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DisplayNameChanged implements DisplayNameChanged {
  const _$DisplayNameChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ProfilecompletionEvent.displayNameChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DisplayNameChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $DisplayNameChangedCopyWith<DisplayNameChanged> get copyWith =>
      _$DisplayNameChangedCopyWithImpl<DisplayNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) displayNameChanged,
    required TResult Function(String value) phoneChanged,
    required TResult Function(String value) companyNameChanged,
    required TResult Function(String value) companyDomainChanged,
    required TResult Function(LocationModel value) locationChanged,
    required TResult Function() submitPressed,
  }) {
    return displayNameChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? displayNameChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(String value)? companyNameChanged,
    TResult Function(String value)? companyDomainChanged,
    TResult Function(LocationModel value)? locationChanged,
    TResult Function()? submitPressed,
  }) {
    return displayNameChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? displayNameChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(String value)? companyNameChanged,
    TResult Function(String value)? companyDomainChanged,
    TResult Function(LocationModel value)? locationChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (displayNameChanged != null) {
      return displayNameChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(CompanyNameChanged value) companyNameChanged,
    required TResult Function(CompanyDomainChanged value) companyDomainChanged,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return displayNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(CompanyNameChanged value)? companyNameChanged,
    TResult Function(CompanyDomainChanged value)? companyDomainChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(SubmitPressed value)? submitPressed,
  }) {
    return displayNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(CompanyNameChanged value)? companyNameChanged,
    TResult Function(CompanyDomainChanged value)? companyDomainChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (displayNameChanged != null) {
      return displayNameChanged(this);
    }
    return orElse();
  }
}

abstract class DisplayNameChanged implements ProfilecompletionEvent {
  const factory DisplayNameChanged(String value) = _$DisplayNameChanged;

  String get value;
  @JsonKey(ignore: true)
  $DisplayNameChangedCopyWith<DisplayNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneChangedCopyWith<$Res> {
  factory $PhoneChangedCopyWith(
          PhoneChanged value, $Res Function(PhoneChanged) then) =
      _$PhoneChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$PhoneChangedCopyWithImpl<$Res>
    extends _$ProfilecompletionEventCopyWithImpl<$Res>
    implements $PhoneChangedCopyWith<$Res> {
  _$PhoneChangedCopyWithImpl(
      PhoneChanged _value, $Res Function(PhoneChanged) _then)
      : super(_value, (v) => _then(v as PhoneChanged));

  @override
  PhoneChanged get _value => super._value as PhoneChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(PhoneChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneChanged implements PhoneChanged {
  const _$PhoneChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ProfilecompletionEvent.phoneChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhoneChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      _$PhoneChangedCopyWithImpl<PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) displayNameChanged,
    required TResult Function(String value) phoneChanged,
    required TResult Function(String value) companyNameChanged,
    required TResult Function(String value) companyDomainChanged,
    required TResult Function(LocationModel value) locationChanged,
    required TResult Function() submitPressed,
  }) {
    return phoneChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? displayNameChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(String value)? companyNameChanged,
    TResult Function(String value)? companyDomainChanged,
    TResult Function(LocationModel value)? locationChanged,
    TResult Function()? submitPressed,
  }) {
    return phoneChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? displayNameChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(String value)? companyNameChanged,
    TResult Function(String value)? companyDomainChanged,
    TResult Function(LocationModel value)? locationChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(CompanyNameChanged value) companyNameChanged,
    required TResult Function(CompanyDomainChanged value) companyDomainChanged,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(CompanyNameChanged value)? companyNameChanged,
    TResult Function(CompanyDomainChanged value)? companyDomainChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(SubmitPressed value)? submitPressed,
  }) {
    return phoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(CompanyNameChanged value)? companyNameChanged,
    TResult Function(CompanyDomainChanged value)? companyDomainChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneChanged implements ProfilecompletionEvent {
  const factory PhoneChanged(String value) = _$PhoneChanged;

  String get value;
  @JsonKey(ignore: true)
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyNameChangedCopyWith<$Res> {
  factory $CompanyNameChangedCopyWith(
          CompanyNameChanged value, $Res Function(CompanyNameChanged) then) =
      _$CompanyNameChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$CompanyNameChangedCopyWithImpl<$Res>
    extends _$ProfilecompletionEventCopyWithImpl<$Res>
    implements $CompanyNameChangedCopyWith<$Res> {
  _$CompanyNameChangedCopyWithImpl(
      CompanyNameChanged _value, $Res Function(CompanyNameChanged) _then)
      : super(_value, (v) => _then(v as CompanyNameChanged));

  @override
  CompanyNameChanged get _value => super._value as CompanyNameChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(CompanyNameChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompanyNameChanged implements CompanyNameChanged {
  const _$CompanyNameChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ProfilecompletionEvent.companyNameChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanyNameChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $CompanyNameChangedCopyWith<CompanyNameChanged> get copyWith =>
      _$CompanyNameChangedCopyWithImpl<CompanyNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) displayNameChanged,
    required TResult Function(String value) phoneChanged,
    required TResult Function(String value) companyNameChanged,
    required TResult Function(String value) companyDomainChanged,
    required TResult Function(LocationModel value) locationChanged,
    required TResult Function() submitPressed,
  }) {
    return companyNameChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? displayNameChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(String value)? companyNameChanged,
    TResult Function(String value)? companyDomainChanged,
    TResult Function(LocationModel value)? locationChanged,
    TResult Function()? submitPressed,
  }) {
    return companyNameChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? displayNameChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(String value)? companyNameChanged,
    TResult Function(String value)? companyDomainChanged,
    TResult Function(LocationModel value)? locationChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (companyNameChanged != null) {
      return companyNameChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(CompanyNameChanged value) companyNameChanged,
    required TResult Function(CompanyDomainChanged value) companyDomainChanged,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return companyNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(CompanyNameChanged value)? companyNameChanged,
    TResult Function(CompanyDomainChanged value)? companyDomainChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(SubmitPressed value)? submitPressed,
  }) {
    return companyNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(CompanyNameChanged value)? companyNameChanged,
    TResult Function(CompanyDomainChanged value)? companyDomainChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (companyNameChanged != null) {
      return companyNameChanged(this);
    }
    return orElse();
  }
}

abstract class CompanyNameChanged implements ProfilecompletionEvent {
  const factory CompanyNameChanged(String value) = _$CompanyNameChanged;

  String get value;
  @JsonKey(ignore: true)
  $CompanyNameChangedCopyWith<CompanyNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyDomainChangedCopyWith<$Res> {
  factory $CompanyDomainChangedCopyWith(CompanyDomainChanged value,
          $Res Function(CompanyDomainChanged) then) =
      _$CompanyDomainChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$CompanyDomainChangedCopyWithImpl<$Res>
    extends _$ProfilecompletionEventCopyWithImpl<$Res>
    implements $CompanyDomainChangedCopyWith<$Res> {
  _$CompanyDomainChangedCopyWithImpl(
      CompanyDomainChanged _value, $Res Function(CompanyDomainChanged) _then)
      : super(_value, (v) => _then(v as CompanyDomainChanged));

  @override
  CompanyDomainChanged get _value => super._value as CompanyDomainChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(CompanyDomainChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompanyDomainChanged implements CompanyDomainChanged {
  const _$CompanyDomainChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ProfilecompletionEvent.companyDomainChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanyDomainChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $CompanyDomainChangedCopyWith<CompanyDomainChanged> get copyWith =>
      _$CompanyDomainChangedCopyWithImpl<CompanyDomainChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) displayNameChanged,
    required TResult Function(String value) phoneChanged,
    required TResult Function(String value) companyNameChanged,
    required TResult Function(String value) companyDomainChanged,
    required TResult Function(LocationModel value) locationChanged,
    required TResult Function() submitPressed,
  }) {
    return companyDomainChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? displayNameChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(String value)? companyNameChanged,
    TResult Function(String value)? companyDomainChanged,
    TResult Function(LocationModel value)? locationChanged,
    TResult Function()? submitPressed,
  }) {
    return companyDomainChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? displayNameChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(String value)? companyNameChanged,
    TResult Function(String value)? companyDomainChanged,
    TResult Function(LocationModel value)? locationChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (companyDomainChanged != null) {
      return companyDomainChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(CompanyNameChanged value) companyNameChanged,
    required TResult Function(CompanyDomainChanged value) companyDomainChanged,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return companyDomainChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(CompanyNameChanged value)? companyNameChanged,
    TResult Function(CompanyDomainChanged value)? companyDomainChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(SubmitPressed value)? submitPressed,
  }) {
    return companyDomainChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(CompanyNameChanged value)? companyNameChanged,
    TResult Function(CompanyDomainChanged value)? companyDomainChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (companyDomainChanged != null) {
      return companyDomainChanged(this);
    }
    return orElse();
  }
}

abstract class CompanyDomainChanged implements ProfilecompletionEvent {
  const factory CompanyDomainChanged(String value) = _$CompanyDomainChanged;

  String get value;
  @JsonKey(ignore: true)
  $CompanyDomainChangedCopyWith<CompanyDomainChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationChangedCopyWith<$Res> {
  factory $LocationChangedCopyWith(
          LocationChanged value, $Res Function(LocationChanged) then) =
      _$LocationChangedCopyWithImpl<$Res>;
  $Res call({LocationModel value});
}

/// @nodoc
class _$LocationChangedCopyWithImpl<$Res>
    extends _$ProfilecompletionEventCopyWithImpl<$Res>
    implements $LocationChangedCopyWith<$Res> {
  _$LocationChangedCopyWithImpl(
      LocationChanged _value, $Res Function(LocationChanged) _then)
      : super(_value, (v) => _then(v as LocationChanged));

  @override
  LocationChanged get _value => super._value as LocationChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(LocationChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc

class _$LocationChanged implements LocationChanged {
  const _$LocationChanged(this.value);

  @override
  final LocationModel value;

  @override
  String toString() {
    return 'ProfilecompletionEvent.locationChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $LocationChangedCopyWith<LocationChanged> get copyWith =>
      _$LocationChangedCopyWithImpl<LocationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) displayNameChanged,
    required TResult Function(String value) phoneChanged,
    required TResult Function(String value) companyNameChanged,
    required TResult Function(String value) companyDomainChanged,
    required TResult Function(LocationModel value) locationChanged,
    required TResult Function() submitPressed,
  }) {
    return locationChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? displayNameChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(String value)? companyNameChanged,
    TResult Function(String value)? companyDomainChanged,
    TResult Function(LocationModel value)? locationChanged,
    TResult Function()? submitPressed,
  }) {
    return locationChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? displayNameChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(String value)? companyNameChanged,
    TResult Function(String value)? companyDomainChanged,
    TResult Function(LocationModel value)? locationChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(CompanyNameChanged value) companyNameChanged,
    required TResult Function(CompanyDomainChanged value) companyDomainChanged,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(CompanyNameChanged value)? companyNameChanged,
    TResult Function(CompanyDomainChanged value)? companyDomainChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(SubmitPressed value)? submitPressed,
  }) {
    return locationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(CompanyNameChanged value)? companyNameChanged,
    TResult Function(CompanyDomainChanged value)? companyDomainChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class LocationChanged implements ProfilecompletionEvent {
  const factory LocationChanged(LocationModel value) = _$LocationChanged;

  LocationModel get value;
  @JsonKey(ignore: true)
  $LocationChangedCopyWith<LocationChanged> get copyWith =>
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
    extends _$ProfilecompletionEventCopyWithImpl<$Res>
    implements $SubmitPressedCopyWith<$Res> {
  _$SubmitPressedCopyWithImpl(
      SubmitPressed _value, $Res Function(SubmitPressed) _then)
      : super(_value, (v) => _then(v as SubmitPressed));

  @override
  SubmitPressed get _value => super._value as SubmitPressed;
}

/// @nodoc

class _$SubmitPressed implements SubmitPressed {
  const _$SubmitPressed();

  @override
  String toString() {
    return 'ProfilecompletionEvent.submitPressed()';
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
    required TResult Function(String value) displayNameChanged,
    required TResult Function(String value) phoneChanged,
    required TResult Function(String value) companyNameChanged,
    required TResult Function(String value) companyDomainChanged,
    required TResult Function(LocationModel value) locationChanged,
    required TResult Function() submitPressed,
  }) {
    return submitPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? displayNameChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(String value)? companyNameChanged,
    TResult Function(String value)? companyDomainChanged,
    TResult Function(LocationModel value)? locationChanged,
    TResult Function()? submitPressed,
  }) {
    return submitPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? displayNameChanged,
    TResult Function(String value)? phoneChanged,
    TResult Function(String value)? companyNameChanged,
    TResult Function(String value)? companyDomainChanged,
    TResult Function(LocationModel value)? locationChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(CompanyNameChanged value) companyNameChanged,
    required TResult Function(CompanyDomainChanged value) companyDomainChanged,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return submitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(CompanyNameChanged value)? companyNameChanged,
    TResult Function(CompanyDomainChanged value)? companyDomainChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(SubmitPressed value)? submitPressed,
  }) {
    return submitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(CompanyNameChanged value)? companyNameChanged,
    TResult Function(CompanyDomainChanged value)? companyDomainChanged,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(this);
    }
    return orElse();
  }
}

abstract class SubmitPressed implements ProfilecompletionEvent {
  const factory SubmitPressed() = _$SubmitPressed;
}

/// @nodoc
class _$ProfilecompletionStateTearOff {
  const _$ProfilecompletionStateTearOff();

  _ProfilecompletionState call(
      {required TWPhone phone,
      required TWCompanyName companyName,
      required TWCompanyDomain companyDomain,
      required TWDisplayName displayName,
      required LocationModel? location,
      required bool isSubmitting,
      required bool showErrorMessages,
      required Option<Either<ProfileCompletionFailure, Unit>>
          failureOrSucessOption}) {
    return _ProfilecompletionState(
      phone: phone,
      companyName: companyName,
      companyDomain: companyDomain,
      displayName: displayName,
      location: location,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      failureOrSucessOption: failureOrSucessOption,
    );
  }
}

/// @nodoc
const $ProfilecompletionState = _$ProfilecompletionStateTearOff();

/// @nodoc
mixin _$ProfilecompletionState {
  TWPhone get phone => throw _privateConstructorUsedError;
  TWCompanyName get companyName => throw _privateConstructorUsedError;
  TWCompanyDomain get companyDomain => throw _privateConstructorUsedError;
  TWDisplayName get displayName => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<ProfileCompletionFailure, Unit>> get failureOrSucessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfilecompletionStateCopyWith<ProfilecompletionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilecompletionStateCopyWith<$Res> {
  factory $ProfilecompletionStateCopyWith(ProfilecompletionState value,
          $Res Function(ProfilecompletionState) then) =
      _$ProfilecompletionStateCopyWithImpl<$Res>;
  $Res call(
      {TWPhone phone,
      TWCompanyName companyName,
      TWCompanyDomain companyDomain,
      TWDisplayName displayName,
      LocationModel? location,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<ProfileCompletionFailure, Unit>> failureOrSucessOption});
}

/// @nodoc
class _$ProfilecompletionStateCopyWithImpl<$Res>
    implements $ProfilecompletionStateCopyWith<$Res> {
  _$ProfilecompletionStateCopyWithImpl(this._value, this._then);

  final ProfilecompletionState _value;
  // ignore: unused_field
  final $Res Function(ProfilecompletionState) _then;

  @override
  $Res call({
    Object? phone = freezed,
    Object? companyName = freezed,
    Object? companyDomain = freezed,
    Object? displayName = freezed,
    Object? location = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? failureOrSucessOption = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as TWPhone,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as TWCompanyName,
      companyDomain: companyDomain == freezed
          ? _value.companyDomain
          : companyDomain // ignore: cast_nullable_to_non_nullable
              as TWCompanyDomain,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as TWDisplayName,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSucessOption: failureOrSucessOption == freezed
          ? _value.failureOrSucessOption
          : failureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileCompletionFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ProfilecompletionStateCopyWith<$Res>
    implements $ProfilecompletionStateCopyWith<$Res> {
  factory _$ProfilecompletionStateCopyWith(_ProfilecompletionState value,
          $Res Function(_ProfilecompletionState) then) =
      __$ProfilecompletionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TWPhone phone,
      TWCompanyName companyName,
      TWCompanyDomain companyDomain,
      TWDisplayName displayName,
      LocationModel? location,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<ProfileCompletionFailure, Unit>> failureOrSucessOption});
}

/// @nodoc
class __$ProfilecompletionStateCopyWithImpl<$Res>
    extends _$ProfilecompletionStateCopyWithImpl<$Res>
    implements _$ProfilecompletionStateCopyWith<$Res> {
  __$ProfilecompletionStateCopyWithImpl(_ProfilecompletionState _value,
      $Res Function(_ProfilecompletionState) _then)
      : super(_value, (v) => _then(v as _ProfilecompletionState));

  @override
  _ProfilecompletionState get _value => super._value as _ProfilecompletionState;

  @override
  $Res call({
    Object? phone = freezed,
    Object? companyName = freezed,
    Object? companyDomain = freezed,
    Object? displayName = freezed,
    Object? location = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? failureOrSucessOption = freezed,
  }) {
    return _then(_ProfilecompletionState(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as TWPhone,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as TWCompanyName,
      companyDomain: companyDomain == freezed
          ? _value.companyDomain
          : companyDomain // ignore: cast_nullable_to_non_nullable
              as TWCompanyDomain,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as TWDisplayName,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSucessOption: failureOrSucessOption == freezed
          ? _value.failureOrSucessOption
          : failureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileCompletionFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ProfilecompletionState implements _ProfilecompletionState {
  const _$_ProfilecompletionState(
      {required this.phone,
      required this.companyName,
      required this.companyDomain,
      required this.displayName,
      required this.location,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.failureOrSucessOption});

  @override
  final TWPhone phone;
  @override
  final TWCompanyName companyName;
  @override
  final TWCompanyDomain companyDomain;
  @override
  final TWDisplayName displayName;
  @override
  final LocationModel? location;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<ProfileCompletionFailure, Unit>> failureOrSucessOption;

  @override
  String toString() {
    return 'ProfilecompletionState(phone: $phone, companyName: $companyName, companyDomain: $companyDomain, displayName: $displayName, location: $location, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, failureOrSucessOption: $failureOrSucessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfilecompletionState &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality()
                .equals(other.companyDomain, companyDomain) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSucessOption, failureOrSucessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(companyName),
      const DeepCollectionEquality().hash(companyDomain),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(failureOrSucessOption));

  @JsonKey(ignore: true)
  @override
  _$ProfilecompletionStateCopyWith<_ProfilecompletionState> get copyWith =>
      __$ProfilecompletionStateCopyWithImpl<_ProfilecompletionState>(
          this, _$identity);
}

abstract class _ProfilecompletionState implements ProfilecompletionState {
  const factory _ProfilecompletionState(
      {required TWPhone phone,
      required TWCompanyName companyName,
      required TWCompanyDomain companyDomain,
      required TWDisplayName displayName,
      required LocationModel? location,
      required bool isSubmitting,
      required bool showErrorMessages,
      required Option<Either<ProfileCompletionFailure, Unit>>
          failureOrSucessOption}) = _$_ProfilecompletionState;

  @override
  TWPhone get phone;
  @override
  TWCompanyName get companyName;
  @override
  TWCompanyDomain get companyDomain;
  @override
  TWDisplayName get displayName;
  @override
  LocationModel? get location;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<ProfileCompletionFailure, Unit>> get failureOrSucessOption;
  @override
  @JsonKey(ignore: true)
  _$ProfilecompletionStateCopyWith<_ProfilecompletionState> get copyWith =>
      throw _privateConstructorUsedError;
}
