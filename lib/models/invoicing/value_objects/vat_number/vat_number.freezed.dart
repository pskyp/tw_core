// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vat_number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VATNumberFailureTearOff {
  const _$VATNumberFailureTearOff();

  Ivalid invalid(String val) {
    return Ivalid(
      val,
    );
  }
}

/// @nodoc
const $VATNumberFailure = _$VATNumberFailureTearOff();

/// @nodoc
mixin _$VATNumberFailure {
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
    required TResult Function(Ivalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ivalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ivalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VATNumberFailureCopyWith<VATNumberFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VATNumberFailureCopyWith<$Res> {
  factory $VATNumberFailureCopyWith(
          VATNumberFailure value, $Res Function(VATNumberFailure) then) =
      _$VATNumberFailureCopyWithImpl<$Res>;
  $Res call({String val});
}

/// @nodoc
class _$VATNumberFailureCopyWithImpl<$Res>
    implements $VATNumberFailureCopyWith<$Res> {
  _$VATNumberFailureCopyWithImpl(this._value, this._then);

  final VATNumberFailure _value;
  // ignore: unused_field
  final $Res Function(VATNumberFailure) _then;

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
abstract class $IvalidCopyWith<$Res>
    implements $VATNumberFailureCopyWith<$Res> {
  factory $IvalidCopyWith(Ivalid value, $Res Function(Ivalid) then) =
      _$IvalidCopyWithImpl<$Res>;
  @override
  $Res call({String val});
}

/// @nodoc
class _$IvalidCopyWithImpl<$Res> extends _$VATNumberFailureCopyWithImpl<$Res>
    implements $IvalidCopyWith<$Res> {
  _$IvalidCopyWithImpl(Ivalid _value, $Res Function(Ivalid) _then)
      : super(_value, (v) => _then(v as Ivalid));

  @override
  Ivalid get _value => super._value as Ivalid;

  @override
  $Res call({
    Object? val = freezed,
  }) {
    return _then(Ivalid(
      val == freezed
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Ivalid implements Ivalid {
  const _$Ivalid(this.val);

  @override
  final String val;

  @override
  String toString() {
    return 'VATNumberFailure.invalid(val: $val)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Ivalid &&
            const DeepCollectionEquality().equals(other.val, val));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(val));

  @JsonKey(ignore: true)
  @override
  $IvalidCopyWith<Ivalid> get copyWith =>
      _$IvalidCopyWithImpl<Ivalid>(this, _$identity);

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
    required TResult Function(Ivalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ivalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ivalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class Ivalid implements VATNumberFailure {
  const factory Ivalid(String val) = _$Ivalid;

  @override
  String get val;
  @override
  @JsonKey(ignore: true)
  $IvalidCopyWith<Ivalid> get copyWith => throw _privateConstructorUsedError;
}
