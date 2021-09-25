// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'job_timeline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JobEndDateFailureTearOff {
  const _$JobEndDateFailureTearOff();

  EndDateBeforeStartDate endDateBeforeStartDate(DateTime date) {
    return EndDateBeforeStartDate(
      date,
    );
  }
}

/// @nodoc
const $JobEndDateFailure = _$JobEndDateFailureTearOff();

/// @nodoc
mixin _$JobEndDateFailure {
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
    required TResult Function(EndDateBeforeStartDate value)
        endDateBeforeStartDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndDateBeforeStartDate value)? endDateBeforeStartDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobEndDateFailureCopyWith<JobEndDateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobEndDateFailureCopyWith<$Res> {
  factory $JobEndDateFailureCopyWith(
          JobEndDateFailure value, $Res Function(JobEndDateFailure) then) =
      _$JobEndDateFailureCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class _$JobEndDateFailureCopyWithImpl<$Res>
    implements $JobEndDateFailureCopyWith<$Res> {
  _$JobEndDateFailureCopyWithImpl(this._value, this._then);

  final JobEndDateFailure _value;
  // ignore: unused_field
  final $Res Function(JobEndDateFailure) _then;

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
abstract class $EndDateBeforeStartDateCopyWith<$Res>
    implements $JobEndDateFailureCopyWith<$Res> {
  factory $EndDateBeforeStartDateCopyWith(EndDateBeforeStartDate value,
          $Res Function(EndDateBeforeStartDate) then) =
      _$EndDateBeforeStartDateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date});
}

/// @nodoc
class _$EndDateBeforeStartDateCopyWithImpl<$Res>
    extends _$JobEndDateFailureCopyWithImpl<$Res>
    implements $EndDateBeforeStartDateCopyWith<$Res> {
  _$EndDateBeforeStartDateCopyWithImpl(EndDateBeforeStartDate _value,
      $Res Function(EndDateBeforeStartDate) _then)
      : super(_value, (v) => _then(v as EndDateBeforeStartDate));

  @override
  EndDateBeforeStartDate get _value => super._value as EndDateBeforeStartDate;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(EndDateBeforeStartDate(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$EndDateBeforeStartDate implements EndDateBeforeStartDate {
  const _$EndDateBeforeStartDate(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'JobEndDateFailure.endDateBeforeStartDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EndDateBeforeStartDate &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  $EndDateBeforeStartDateCopyWith<EndDateBeforeStartDate> get copyWith =>
      _$EndDateBeforeStartDateCopyWithImpl<EndDateBeforeStartDate>(
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
    required TResult Function(EndDateBeforeStartDate value)
        endDateBeforeStartDate,
  }) {
    return endDateBeforeStartDate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndDateBeforeStartDate value)? endDateBeforeStartDate,
    required TResult orElse(),
  }) {
    if (endDateBeforeStartDate != null) {
      return endDateBeforeStartDate(this);
    }
    return orElse();
  }
}

abstract class EndDateBeforeStartDate implements JobEndDateFailure {
  const factory EndDateBeforeStartDate(DateTime date) =
      _$EndDateBeforeStartDate;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EndDateBeforeStartDateCopyWith<EndDateBeforeStartDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$JobStartDateFailureTearOff {
  const _$JobStartDateFailureTearOff();

  StartDateBeforeToday startDateBeforeToday(DateTime date) {
    return StartDateBeforeToday(
      date,
    );
  }
}

/// @nodoc
const $JobStartDateFailure = _$JobStartDateFailureTearOff();

/// @nodoc
mixin _$JobStartDateFailure {
  DateTime get date => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) startDateBeforeToday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? startDateBeforeToday,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDateBeforeToday value) startDateBeforeToday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDateBeforeToday value)? startDateBeforeToday,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobStartDateFailureCopyWith<JobStartDateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobStartDateFailureCopyWith<$Res> {
  factory $JobStartDateFailureCopyWith(
          JobStartDateFailure value, $Res Function(JobStartDateFailure) then) =
      _$JobStartDateFailureCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class _$JobStartDateFailureCopyWithImpl<$Res>
    implements $JobStartDateFailureCopyWith<$Res> {
  _$JobStartDateFailureCopyWithImpl(this._value, this._then);

  final JobStartDateFailure _value;
  // ignore: unused_field
  final $Res Function(JobStartDateFailure) _then;

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
abstract class $StartDateBeforeTodayCopyWith<$Res>
    implements $JobStartDateFailureCopyWith<$Res> {
  factory $StartDateBeforeTodayCopyWith(StartDateBeforeToday value,
          $Res Function(StartDateBeforeToday) then) =
      _$StartDateBeforeTodayCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date});
}

/// @nodoc
class _$StartDateBeforeTodayCopyWithImpl<$Res>
    extends _$JobStartDateFailureCopyWithImpl<$Res>
    implements $StartDateBeforeTodayCopyWith<$Res> {
  _$StartDateBeforeTodayCopyWithImpl(
      StartDateBeforeToday _value, $Res Function(StartDateBeforeToday) _then)
      : super(_value, (v) => _then(v as StartDateBeforeToday));

  @override
  StartDateBeforeToday get _value => super._value as StartDateBeforeToday;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(StartDateBeforeToday(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$StartDateBeforeToday implements StartDateBeforeToday {
  const _$StartDateBeforeToday(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'JobStartDateFailure.startDateBeforeToday(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartDateBeforeToday &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  $StartDateBeforeTodayCopyWith<StartDateBeforeToday> get copyWith =>
      _$StartDateBeforeTodayCopyWithImpl<StartDateBeforeToday>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) startDateBeforeToday,
  }) {
    return startDateBeforeToday(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? startDateBeforeToday,
    required TResult orElse(),
  }) {
    if (startDateBeforeToday != null) {
      return startDateBeforeToday(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDateBeforeToday value) startDateBeforeToday,
  }) {
    return startDateBeforeToday(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDateBeforeToday value)? startDateBeforeToday,
    required TResult orElse(),
  }) {
    if (startDateBeforeToday != null) {
      return startDateBeforeToday(this);
    }
    return orElse();
  }
}

abstract class StartDateBeforeToday implements JobStartDateFailure {
  const factory StartDateBeforeToday(DateTime date) = _$StartDateBeforeToday;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $StartDateBeforeTodayCopyWith<StartDateBeforeToday> get copyWith =>
      throw _privateConstructorUsedError;
}
