// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'display_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DisplayNameFailureTearOff {
  const _$DisplayNameFailureTearOff();

  ShortName shortName() {
    return const ShortName();
  }
}

/// @nodoc
const $DisplayNameFailure = _$DisplayNameFailureTearOff();

/// @nodoc
mixin _$DisplayNameFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shortName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shortName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortName value) shortName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortName value)? shortName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayNameFailureCopyWith<$Res> {
  factory $DisplayNameFailureCopyWith(
          DisplayNameFailure value, $Res Function(DisplayNameFailure) then) =
      _$DisplayNameFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$DisplayNameFailureCopyWithImpl<$Res>
    implements $DisplayNameFailureCopyWith<$Res> {
  _$DisplayNameFailureCopyWithImpl(this._value, this._then);

  final DisplayNameFailure _value;
  // ignore: unused_field
  final $Res Function(DisplayNameFailure) _then;
}

/// @nodoc
abstract class $ShortNameCopyWith<$Res> {
  factory $ShortNameCopyWith(ShortName value, $Res Function(ShortName) then) =
      _$ShortNameCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShortNameCopyWithImpl<$Res>
    extends _$DisplayNameFailureCopyWithImpl<$Res>
    implements $ShortNameCopyWith<$Res> {
  _$ShortNameCopyWithImpl(ShortName _value, $Res Function(ShortName) _then)
      : super(_value, (v) => _then(v as ShortName));

  @override
  ShortName get _value => super._value as ShortName;
}

/// @nodoc

class _$ShortName implements ShortName {
  const _$ShortName();

  @override
  String toString() {
    return 'DisplayNameFailure.shortName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShortName);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shortName,
  }) {
    return shortName();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shortName,
    required TResult orElse(),
  }) {
    if (shortName != null) {
      return shortName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortName value) shortName,
  }) {
    return shortName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortName value)? shortName,
    required TResult orElse(),
  }) {
    if (shortName != null) {
      return shortName(this);
    }
    return orElse();
  }
}

abstract class ShortName implements DisplayNameFailure {
  const factory ShortName() = _$ShortName;
}
