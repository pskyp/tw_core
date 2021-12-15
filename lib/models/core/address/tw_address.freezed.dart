// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tw_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TWAddressFailureTearOff {
  const _$TWAddressFailureTearOff();

  ShortAddress tooshort(String value) {
    return ShortAddress(
      value,
    );
  }
}

/// @nodoc
const $TWAddressFailure = _$TWAddressFailureTearOff();

/// @nodoc
mixin _$TWAddressFailure {
  String get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) tooshort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? tooshort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? tooshort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortAddress value) tooshort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShortAddress value)? tooshort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortAddress value)? tooshort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TWAddressFailureCopyWith<TWAddressFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TWAddressFailureCopyWith<$Res> {
  factory $TWAddressFailureCopyWith(
          TWAddressFailure value, $Res Function(TWAddressFailure) then) =
      _$TWAddressFailureCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$TWAddressFailureCopyWithImpl<$Res>
    implements $TWAddressFailureCopyWith<$Res> {
  _$TWAddressFailureCopyWithImpl(this._value, this._then);

  final TWAddressFailure _value;
  // ignore: unused_field
  final $Res Function(TWAddressFailure) _then;

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
abstract class $ShortAddressCopyWith<$Res>
    implements $TWAddressFailureCopyWith<$Res> {
  factory $ShortAddressCopyWith(
          ShortAddress value, $Res Function(ShortAddress) then) =
      _$ShortAddressCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class _$ShortAddressCopyWithImpl<$Res>
    extends _$TWAddressFailureCopyWithImpl<$Res>
    implements $ShortAddressCopyWith<$Res> {
  _$ShortAddressCopyWithImpl(
      ShortAddress _value, $Res Function(ShortAddress) _then)
      : super(_value, (v) => _then(v as ShortAddress));

  @override
  ShortAddress get _value => super._value as ShortAddress;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(ShortAddress(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShortAddress implements ShortAddress {
  const _$ShortAddress(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'TWAddressFailure.tooshort(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShortAddress &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $ShortAddressCopyWith<ShortAddress> get copyWith =>
      _$ShortAddressCopyWithImpl<ShortAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) tooshort,
  }) {
    return tooshort(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? tooshort,
  }) {
    return tooshort?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? tooshort,
    required TResult orElse(),
  }) {
    if (tooshort != null) {
      return tooshort(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortAddress value) tooshort,
  }) {
    return tooshort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShortAddress value)? tooshort,
  }) {
    return tooshort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortAddress value)? tooshort,
    required TResult orElse(),
  }) {
    if (tooshort != null) {
      return tooshort(this);
    }
    return orElse();
  }
}

abstract class ShortAddress implements TWAddressFailure {
  const factory ShortAddress(String value) = _$ShortAddress;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  $ShortAddressCopyWith<ShortAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
