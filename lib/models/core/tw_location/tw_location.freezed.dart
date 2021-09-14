// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tw_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TWLocationFailureTearOff {
  const _$TWLocationFailureTearOff();

  Invalid invalid() {
    return const Invalid();
  }
}

/// @nodoc
const $TWLocationFailure = _$TWLocationFailureTearOff();

/// @nodoc
mixin _$TWLocationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Invalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Invalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TWLocationFailureCopyWith<$Res> {
  factory $TWLocationFailureCopyWith(
          TWLocationFailure value, $Res Function(TWLocationFailure) then) =
      _$TWLocationFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$TWLocationFailureCopyWithImpl<$Res>
    implements $TWLocationFailureCopyWith<$Res> {
  _$TWLocationFailureCopyWithImpl(this._value, this._then);

  final TWLocationFailure _value;
  // ignore: unused_field
  final $Res Function(TWLocationFailure) _then;
}

/// @nodoc
abstract class $InvalidCopyWith<$Res> {
  factory $InvalidCopyWith(Invalid value, $Res Function(Invalid) then) =
      _$InvalidCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidCopyWithImpl<$Res> extends _$TWLocationFailureCopyWithImpl<$Res>
    implements $InvalidCopyWith<$Res> {
  _$InvalidCopyWithImpl(Invalid _value, $Res Function(Invalid) _then)
      : super(_value, (v) => _then(v as Invalid));

  @override
  Invalid get _value => super._value as Invalid;
}

/// @nodoc

class _$Invalid implements Invalid {
  const _$Invalid();

  @override
  String toString() {
    return 'TWLocationFailure.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Invalid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
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

abstract class Invalid implements TWLocationFailure {
  const factory Invalid() = _$Invalid;
}
