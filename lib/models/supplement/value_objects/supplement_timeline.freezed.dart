// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'supplement_timeline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SupplementEndDateFailureTearOff {
  const _$SupplementEndDateFailureTearOff();

  endDateBeforeStartDate endDateBeforeStartDate(DateTime date) {
    return endDateBeforeStartDate(
      date,
    );
  }
}

/// @nodoc
const $SupplementEndDateFailure = _$SupplementEndDateFailureTearOff();

/// @nodoc
mixin _$SupplementEndDateFailure {
  DateTime get date => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) endDateBeforeStartDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? endDateBeforeStartDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(endDateBeforeStartDate value)
        endDateBeforeStartDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(endDateBeforeStartDate value)? endDateBeforeStartDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupplementEndDateFailureCopyWith<SupplementEndDateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplementEndDateFailureCopyWith<$Res> {
  factory $SupplementEndDateFailureCopyWith(SupplementEndDateFailure value,
          $Res Function(SupplementEndDateFailure) then) =
      _$SupplementEndDateFailureCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class _$SupplementEndDateFailureCopyWithImpl<$Res>
    implements $SupplementEndDateFailureCopyWith<$Res> {
  _$SupplementEndDateFailureCopyWithImpl(this._value, this._then);

  final SupplementEndDateFailure _value;
  // ignore: unused_field
  final $Res Function(SupplementEndDateFailure) _then;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class $endDateBeforeStartDateCopyWith<$Res>
    implements $SupplementEndDateFailureCopyWith<$Res> {
  factory $endDateBeforeStartDateCopyWith(endDateBeforeStartDate value,
          $Res Function(endDateBeforeStartDate) then) =
      _$endDateBeforeStartDateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date});
}

/// @nodoc
class _$endDateBeforeStartDateCopyWithImpl<$Res>
    extends _$SupplementEndDateFailureCopyWithImpl<$Res>
    implements $endDateBeforeStartDateCopyWith<$Res> {
  _$endDateBeforeStartDateCopyWithImpl(endDateBeforeStartDate _value,
      $Res Function(endDateBeforeStartDate) _then)
      : super(_value, (v) => _then(v as endDateBeforeStartDate));

  @override
  endDateBeforeStartDate get _value => super._value as endDateBeforeStartDate;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(endDateBeforeStartDate(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$endDateBeforeStartDate implements endDateBeforeStartDate {
  const _$endDateBeforeStartDate(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'SupplementEndDateFailure.endDateBeforeStartDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is endDateBeforeStartDate &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  $endDateBeforeStartDateCopyWith<endDateBeforeStartDate> get copyWith =>
      _$endDateBeforeStartDateCopyWithImpl<endDateBeforeStartDate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) endDateBeforeStartDate,
  }) {
    return endDateBeforeStartDate(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? endDateBeforeStartDate,
    required TResult orElse(),
  }) {
    if (endDateBeforeStartDate != null) {
      return endDateBeforeStartDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(endDateBeforeStartDate value)
        endDateBeforeStartDate,
  }) {
    return endDateBeforeStartDate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(endDateBeforeStartDate value)? endDateBeforeStartDate,
    required TResult orElse(),
  }) {
    if (endDateBeforeStartDate != null) {
      return endDateBeforeStartDate(this);
    }
    return orElse();
  }
}

abstract class endDateBeforeStartDate implements SupplementEndDateFailure {
  const factory endDateBeforeStartDate(DateTime date) =
      _$endDateBeforeStartDate;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $endDateBeforeStartDateCopyWith<endDateBeforeStartDate> get copyWith =>
      throw _privateConstructorUsedError;
}
