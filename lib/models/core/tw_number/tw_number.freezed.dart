// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tw_number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TWNumberFailureTearOff {
  const _$TWNumberFailureTearOff();

  LessThanMinimum lessThanMinimum({required int value}) {
    return LessThanMinimum(
      value: value,
    );
  }
}

/// @nodoc
const $TWNumberFailure = _$TWNumberFailureTearOff();

/// @nodoc
mixin _$TWNumberFailure {
  int get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) lessThanMinimum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? lessThanMinimum,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessThanMinimum value) lessThanMinimum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessThanMinimum value)? lessThanMinimum,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TWNumberFailureCopyWith<TWNumberFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TWNumberFailureCopyWith<$Res> {
  factory $TWNumberFailureCopyWith(
          TWNumberFailure value, $Res Function(TWNumberFailure) then) =
      _$TWNumberFailureCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$TWNumberFailureCopyWithImpl<$Res>
    implements $TWNumberFailureCopyWith<$Res> {
  _$TWNumberFailureCopyWithImpl(this._value, this._then);

  final TWNumberFailure _value;
  // ignore: unused_field
  final $Res Function(TWNumberFailure) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $LessThanMinimumCopyWith<$Res>
    implements $TWNumberFailureCopyWith<$Res> {
  factory $LessThanMinimumCopyWith(
          LessThanMinimum value, $Res Function(LessThanMinimum) then) =
      _$LessThanMinimumCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class _$LessThanMinimumCopyWithImpl<$Res>
    extends _$TWNumberFailureCopyWithImpl<$Res>
    implements $LessThanMinimumCopyWith<$Res> {
  _$LessThanMinimumCopyWithImpl(
      LessThanMinimum _value, $Res Function(LessThanMinimum) _then)
      : super(_value, (v) => _then(v as LessThanMinimum));

  @override
  LessThanMinimum get _value => super._value as LessThanMinimum;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(LessThanMinimum(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LessThanMinimum implements LessThanMinimum {
  const _$LessThanMinimum({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'TWNumberFailure.lessThanMinimum(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessThanMinimum &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $LessThanMinimumCopyWith<LessThanMinimum> get copyWith =>
      _$LessThanMinimumCopyWithImpl<LessThanMinimum>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) lessThanMinimum,
  }) {
    return lessThanMinimum(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? lessThanMinimum,
    required TResult orElse(),
  }) {
    if (lessThanMinimum != null) {
      return lessThanMinimum(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessThanMinimum value) lessThanMinimum,
  }) {
    return lessThanMinimum(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessThanMinimum value)? lessThanMinimum,
    required TResult orElse(),
  }) {
    if (lessThanMinimum != null) {
      return lessThanMinimum(this);
    }
    return orElse();
  }
}

abstract class LessThanMinimum implements TWNumberFailure {
  const factory LessThanMinimum({required int value}) = _$LessThanMinimum;

  @override
  int get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LessThanMinimumCopyWith<LessThanMinimum> get copyWith =>
      throw _privateConstructorUsedError;
}
