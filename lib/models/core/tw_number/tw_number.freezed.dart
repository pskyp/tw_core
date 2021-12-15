// coverage:ignore-file
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

  LessThanMinimum lessThanMinimum(
      {required int value, required String failureMessage}) {
    return LessThanMinimum(
      value: value,
      failureMessage: failureMessage,
    );
  }

  MoreThanMaximum moreThanMaximum(
      {required int value, required String failureMessage}) {
    return MoreThanMaximum(
      value: value,
      failureMessage: failureMessage,
    );
  }
}

/// @nodoc
const $TWNumberFailure = _$TWNumberFailureTearOff();

/// @nodoc
mixin _$TWNumberFailure {
  int get value => throw _privateConstructorUsedError;
  String get failureMessage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value, String failureMessage) lessThanMinimum,
    required TResult Function(int value, String failureMessage) moreThanMaximum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value, String failureMessage)? lessThanMinimum,
    TResult Function(int value, String failureMessage)? moreThanMaximum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value, String failureMessage)? lessThanMinimum,
    TResult Function(int value, String failureMessage)? moreThanMaximum,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessThanMinimum value) lessThanMinimum,
    required TResult Function(MoreThanMaximum value) moreThanMaximum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LessThanMinimum value)? lessThanMinimum,
    TResult Function(MoreThanMaximum value)? moreThanMaximum,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessThanMinimum value)? lessThanMinimum,
    TResult Function(MoreThanMaximum value)? moreThanMaximum,
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
  $Res call({int value, String failureMessage});
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
    Object? failureMessage = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({int value, String failureMessage});
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
    Object? failureMessage = freezed,
  }) {
    return _then(LessThanMinimum(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LessThanMinimum implements LessThanMinimum {
  const _$LessThanMinimum({required this.value, required this.failureMessage});

  @override
  final int value;
  @override
  final String failureMessage;

  @override
  String toString() {
    return 'TWNumberFailure.lessThanMinimum(value: $value, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LessThanMinimum &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.failureMessage, failureMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(failureMessage));

  @JsonKey(ignore: true)
  @override
  $LessThanMinimumCopyWith<LessThanMinimum> get copyWith =>
      _$LessThanMinimumCopyWithImpl<LessThanMinimum>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value, String failureMessage) lessThanMinimum,
    required TResult Function(int value, String failureMessage) moreThanMaximum,
  }) {
    return lessThanMinimum(value, failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value, String failureMessage)? lessThanMinimum,
    TResult Function(int value, String failureMessage)? moreThanMaximum,
  }) {
    return lessThanMinimum?.call(value, failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value, String failureMessage)? lessThanMinimum,
    TResult Function(int value, String failureMessage)? moreThanMaximum,
    required TResult orElse(),
  }) {
    if (lessThanMinimum != null) {
      return lessThanMinimum(value, failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessThanMinimum value) lessThanMinimum,
    required TResult Function(MoreThanMaximum value) moreThanMaximum,
  }) {
    return lessThanMinimum(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LessThanMinimum value)? lessThanMinimum,
    TResult Function(MoreThanMaximum value)? moreThanMaximum,
  }) {
    return lessThanMinimum?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessThanMinimum value)? lessThanMinimum,
    TResult Function(MoreThanMaximum value)? moreThanMaximum,
    required TResult orElse(),
  }) {
    if (lessThanMinimum != null) {
      return lessThanMinimum(this);
    }
    return orElse();
  }
}

abstract class LessThanMinimum implements TWNumberFailure {
  const factory LessThanMinimum(
      {required int value, required String failureMessage}) = _$LessThanMinimum;

  @override
  int get value;
  @override
  String get failureMessage;
  @override
  @JsonKey(ignore: true)
  $LessThanMinimumCopyWith<LessThanMinimum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoreThanMaximumCopyWith<$Res>
    implements $TWNumberFailureCopyWith<$Res> {
  factory $MoreThanMaximumCopyWith(
          MoreThanMaximum value, $Res Function(MoreThanMaximum) then) =
      _$MoreThanMaximumCopyWithImpl<$Res>;
  @override
  $Res call({int value, String failureMessage});
}

/// @nodoc
class _$MoreThanMaximumCopyWithImpl<$Res>
    extends _$TWNumberFailureCopyWithImpl<$Res>
    implements $MoreThanMaximumCopyWith<$Res> {
  _$MoreThanMaximumCopyWithImpl(
      MoreThanMaximum _value, $Res Function(MoreThanMaximum) _then)
      : super(_value, (v) => _then(v as MoreThanMaximum));

  @override
  MoreThanMaximum get _value => super._value as MoreThanMaximum;

  @override
  $Res call({
    Object? value = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(MoreThanMaximum(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MoreThanMaximum implements MoreThanMaximum {
  const _$MoreThanMaximum({required this.value, required this.failureMessage});

  @override
  final int value;
  @override
  final String failureMessage;

  @override
  String toString() {
    return 'TWNumberFailure.moreThanMaximum(value: $value, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoreThanMaximum &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.failureMessage, failureMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(failureMessage));

  @JsonKey(ignore: true)
  @override
  $MoreThanMaximumCopyWith<MoreThanMaximum> get copyWith =>
      _$MoreThanMaximumCopyWithImpl<MoreThanMaximum>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value, String failureMessage) lessThanMinimum,
    required TResult Function(int value, String failureMessage) moreThanMaximum,
  }) {
    return moreThanMaximum(value, failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value, String failureMessage)? lessThanMinimum,
    TResult Function(int value, String failureMessage)? moreThanMaximum,
  }) {
    return moreThanMaximum?.call(value, failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value, String failureMessage)? lessThanMinimum,
    TResult Function(int value, String failureMessage)? moreThanMaximum,
    required TResult orElse(),
  }) {
    if (moreThanMaximum != null) {
      return moreThanMaximum(value, failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessThanMinimum value) lessThanMinimum,
    required TResult Function(MoreThanMaximum value) moreThanMaximum,
  }) {
    return moreThanMaximum(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LessThanMinimum value)? lessThanMinimum,
    TResult Function(MoreThanMaximum value)? moreThanMaximum,
  }) {
    return moreThanMaximum?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessThanMinimum value)? lessThanMinimum,
    TResult Function(MoreThanMaximum value)? moreThanMaximum,
    required TResult orElse(),
  }) {
    if (moreThanMaximum != null) {
      return moreThanMaximum(this);
    }
    return orElse();
  }
}

abstract class MoreThanMaximum implements TWNumberFailure {
  const factory MoreThanMaximum(
      {required int value, required String failureMessage}) = _$MoreThanMaximum;

  @override
  int get value;
  @override
  String get failureMessage;
  @override
  @JsonKey(ignore: true)
  $MoreThanMaximumCopyWith<MoreThanMaximum> get copyWith =>
      throw _privateConstructorUsedError;
}
