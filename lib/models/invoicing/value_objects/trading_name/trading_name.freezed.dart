// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trading_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TradingNameFailureTearOff {
  const _$TradingNameFailureTearOff();

  TooShort tooShort(String val) {
    return TooShort(
      val,
    );
  }
}

/// @nodoc
const $TradingNameFailure = _$TradingNameFailureTearOff();

/// @nodoc
mixin _$TradingNameFailure {
  String get val => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String val) tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String val)? tooShort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TooShort value) tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TooShort value)? tooShort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TradingNameFailureCopyWith<TradingNameFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradingNameFailureCopyWith<$Res> {
  factory $TradingNameFailureCopyWith(
          TradingNameFailure value, $Res Function(TradingNameFailure) then) =
      _$TradingNameFailureCopyWithImpl<$Res>;
  $Res call({String val});
}

/// @nodoc
class _$TradingNameFailureCopyWithImpl<$Res>
    implements $TradingNameFailureCopyWith<$Res> {
  _$TradingNameFailureCopyWithImpl(this._value, this._then);

  final TradingNameFailure _value;
  // ignore: unused_field
  final $Res Function(TradingNameFailure) _then;

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
abstract class $TooShortCopyWith<$Res>
    implements $TradingNameFailureCopyWith<$Res> {
  factory $TooShortCopyWith(TooShort value, $Res Function(TooShort) then) =
      _$TooShortCopyWithImpl<$Res>;
  @override
  $Res call({String val});
}

/// @nodoc
class _$TooShortCopyWithImpl<$Res>
    extends _$TradingNameFailureCopyWithImpl<$Res>
    implements $TooShortCopyWith<$Res> {
  _$TooShortCopyWithImpl(TooShort _value, $Res Function(TooShort) _then)
      : super(_value, (v) => _then(v as TooShort));

  @override
  TooShort get _value => super._value as TooShort;

  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(TooShort(
      val == freezed
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TooShort implements TooShort {
  const _$TooShort(this.val);

  @override
  final String val;

  @override
  String toString() {
    return 'TradingNameFailure.tooShort(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TooShort &&
            (identical(other.val, val) ||
                const DeepCollectionEquality().equals(other.val, val)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(val);

  @JsonKey(ignore: true)
  @override
  $TooShortCopyWith<TooShort> get copyWith =>
      _$TooShortCopyWithImpl<TooShort>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String val) tooShort,
  }) {
    return tooShort(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String val)? tooShort,
    required TResult orElse(),
  }) {
    if (tooShort != null) {
      return tooShort(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TooShort value) tooShort,
  }) {
    return tooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TooShort value)? tooShort,
    required TResult orElse(),
  }) {
    if (tooShort != null) {
      return tooShort(this);
    }
    return orElse();
  }
}

abstract class TooShort implements TradingNameFailure {
  const factory TooShort(String val) = _$TooShort;

  @override
  String get val => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TooShortCopyWith<TooShort> get copyWith =>
      throw _privateConstructorUsedError;
}
