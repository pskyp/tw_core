// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_term.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaymentTermFailureTearOff {
  const _$PaymentTermFailureTearOff();

  Invalid invalid(String val) {
    return Invalid(
      val,
    );
  }
}

/// @nodoc
const $PaymentTermFailure = _$PaymentTermFailureTearOff();

/// @nodoc
mixin _$PaymentTermFailure {
  String get val => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String val) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String val)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String val)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Invalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Invalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Invalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentTermFailureCopyWith<PaymentTermFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTermFailureCopyWith<$Res> {
  factory $PaymentTermFailureCopyWith(
          PaymentTermFailure value, $Res Function(PaymentTermFailure) then) =
      _$PaymentTermFailureCopyWithImpl<$Res>;
  $Res call({String val});
}

/// @nodoc
class _$PaymentTermFailureCopyWithImpl<$Res>
    implements $PaymentTermFailureCopyWith<$Res> {
  _$PaymentTermFailureCopyWithImpl(this._value, this._then);

  final PaymentTermFailure _value;
  // ignore: unused_field
  final $Res Function(PaymentTermFailure) _then;

  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(_value.copyWith(
      val: val == freezed
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $InvalidCopyWith<$Res>
    implements $PaymentTermFailureCopyWith<$Res> {
  factory $InvalidCopyWith(Invalid value, $Res Function(Invalid) then) =
      _$InvalidCopyWithImpl<$Res>;
  @override
  $Res call({String val});
}

/// @nodoc
class _$InvalidCopyWithImpl<$Res> extends _$PaymentTermFailureCopyWithImpl<$Res>
    implements $InvalidCopyWith<$Res> {
  _$InvalidCopyWithImpl(Invalid _value, $Res Function(Invalid) _then)
      : super(_value, (v) => _then(v as Invalid));

  @override
  Invalid get _value => super._value as Invalid;

  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(Invalid(
      val == freezed
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Invalid implements Invalid {
  const _$Invalid(this.val);

  @override
  final String val;

  @override
  String toString() {
    return 'PaymentTermFailure.invalid(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Invalid &&
            const DeepCollectionEquality().equals(other.val, val));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(val));

  @JsonKey(ignore: true)
  @override
  $InvalidCopyWith<Invalid> get copyWith =>
      _$InvalidCopyWithImpl<Invalid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String val) invalid,
  }) {
    return invalid(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String val)? invalid,
  }) {
    return invalid?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String val)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Invalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Invalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Invalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class Invalid implements PaymentTermFailure {
  const factory Invalid(String val) = _$Invalid;

  @override
  String get val;
  @override
  @JsonKey(ignore: true)
  $InvalidCopyWith<Invalid> get copyWith => throw _privateConstructorUsedError;
}
