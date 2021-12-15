// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhoneValueFailureTearOff {
  const _$PhoneValueFailureTearOff();

  InvalidPhone invalidPhone(String value) {
    return InvalidPhone(
      value,
    );
  }
}

/// @nodoc
const $PhoneValueFailure = _$PhoneValueFailureTearOff();

/// @nodoc
mixin _$PhoneValueFailure {
  String get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) invalidPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? invalidPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? invalidPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhone value) invalidPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidPhone value)? invalidPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhone value)? invalidPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneValueFailureCopyWith<PhoneValueFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneValueFailureCopyWith<$Res> {
  factory $PhoneValueFailureCopyWith(
          PhoneValueFailure value, $Res Function(PhoneValueFailure) then) =
      _$PhoneValueFailureCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$PhoneValueFailureCopyWithImpl<$Res>
    implements $PhoneValueFailureCopyWith<$Res> {
  _$PhoneValueFailureCopyWithImpl(this._value, this._then);

  final PhoneValueFailure _value;
  // ignore: unused_field
  final $Res Function(PhoneValueFailure) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $InvalidPhoneCopyWith<$Res>
    implements $PhoneValueFailureCopyWith<$Res> {
  factory $InvalidPhoneCopyWith(
          InvalidPhone value, $Res Function(InvalidPhone) then) =
      _$InvalidPhoneCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class _$InvalidPhoneCopyWithImpl<$Res>
    extends _$PhoneValueFailureCopyWithImpl<$Res>
    implements $InvalidPhoneCopyWith<$Res> {
  _$InvalidPhoneCopyWithImpl(
      InvalidPhone _value, $Res Function(InvalidPhone) _then)
      : super(_value, (v) => _then(v as InvalidPhone));

  @override
  InvalidPhone get _value => super._value as InvalidPhone;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(InvalidPhone(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidPhone implements InvalidPhone {
  const _$InvalidPhone(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'PhoneValueFailure.invalidPhone(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidPhone &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $InvalidPhoneCopyWith<InvalidPhone> get copyWith =>
      _$InvalidPhoneCopyWithImpl<InvalidPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) invalidPhone,
  }) {
    return invalidPhone(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? invalidPhone,
  }) {
    return invalidPhone?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? invalidPhone,
    required TResult orElse(),
  }) {
    if (invalidPhone != null) {
      return invalidPhone(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhone value) invalidPhone,
  }) {
    return invalidPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidPhone value)? invalidPhone,
  }) {
    return invalidPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhone value)? invalidPhone,
    required TResult orElse(),
  }) {
    if (invalidPhone != null) {
      return invalidPhone(this);
    }
    return orElse();
  }
}

abstract class InvalidPhone implements PhoneValueFailure {
  const factory InvalidPhone(String value) = _$InvalidPhone;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  $InvalidPhoneCopyWith<InvalidPhone> get copyWith =>
      throw _privateConstructorUsedError;
}
