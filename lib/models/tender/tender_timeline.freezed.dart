// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tender_timeline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TenderTimelineFailuresTearOff {
  const _$TenderTimelineFailuresTearOff();

  QueriesBeforeStartDate queriesBeforeStartDate(DateTime date) {
    return QueriesBeforeStartDate(
      date,
    );
  }

  SubmissionBeforeQueries submissionBeforeQueries(DateTime date) {
    return SubmissionBeforeQueries(
      date,
    );
  }

  FeedbackBeforeSubmission feedbackBeforeSubmission(DateTime date) {
    return FeedbackBeforeSubmission(
      date,
    );
  }

  AwardBeforeFeedback awardBeforeFeedback(DateTime date) {
    return AwardBeforeFeedback(
      date,
    );
  }

  EndDateBeforeAward endDateBeforeAward(DateTime date) {
    return EndDateBeforeAward(
      date,
    );
  }
}

/// @nodoc
const $TenderTimelineFailures = _$TenderTimelineFailuresTearOff();

/// @nodoc
mixin _$TenderTimelineFailures {
  DateTime get date => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) queriesBeforeStartDate,
    required TResult Function(DateTime date) submissionBeforeQueries,
    required TResult Function(DateTime date) feedbackBeforeSubmission,
    required TResult Function(DateTime date) awardBeforeFeedback,
    required TResult Function(DateTime date) endDateBeforeAward,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? queriesBeforeStartDate,
    TResult Function(DateTime date)? submissionBeforeQueries,
    TResult Function(DateTime date)? feedbackBeforeSubmission,
    TResult Function(DateTime date)? awardBeforeFeedback,
    TResult Function(DateTime date)? endDateBeforeAward,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueriesBeforeStartDate value)
        queriesBeforeStartDate,
    required TResult Function(SubmissionBeforeQueries value)
        submissionBeforeQueries,
    required TResult Function(FeedbackBeforeSubmission value)
        feedbackBeforeSubmission,
    required TResult Function(AwardBeforeFeedback value) awardBeforeFeedback,
    required TResult Function(EndDateBeforeAward value) endDateBeforeAward,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueriesBeforeStartDate value)? queriesBeforeStartDate,
    TResult Function(SubmissionBeforeQueries value)? submissionBeforeQueries,
    TResult Function(FeedbackBeforeSubmission value)? feedbackBeforeSubmission,
    TResult Function(AwardBeforeFeedback value)? awardBeforeFeedback,
    TResult Function(EndDateBeforeAward value)? endDateBeforeAward,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TenderTimelineFailuresCopyWith<TenderTimelineFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenderTimelineFailuresCopyWith<$Res> {
  factory $TenderTimelineFailuresCopyWith(TenderTimelineFailures value,
          $Res Function(TenderTimelineFailures) then) =
      _$TenderTimelineFailuresCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class _$TenderTimelineFailuresCopyWithImpl<$Res>
    implements $TenderTimelineFailuresCopyWith<$Res> {
  _$TenderTimelineFailuresCopyWithImpl(this._value, this._then);

  final TenderTimelineFailures _value;
  // ignore: unused_field
  final $Res Function(TenderTimelineFailures) _then;

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
abstract class $QueriesBeforeStartDateCopyWith<$Res>
    implements $TenderTimelineFailuresCopyWith<$Res> {
  factory $QueriesBeforeStartDateCopyWith(QueriesBeforeStartDate value,
          $Res Function(QueriesBeforeStartDate) then) =
      _$QueriesBeforeStartDateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date});
}

/// @nodoc
class _$QueriesBeforeStartDateCopyWithImpl<$Res>
    extends _$TenderTimelineFailuresCopyWithImpl<$Res>
    implements $QueriesBeforeStartDateCopyWith<$Res> {
  _$QueriesBeforeStartDateCopyWithImpl(QueriesBeforeStartDate _value,
      $Res Function(QueriesBeforeStartDate) _then)
      : super(_value, (v) => _then(v as QueriesBeforeStartDate));

  @override
  QueriesBeforeStartDate get _value => super._value as QueriesBeforeStartDate;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(QueriesBeforeStartDate(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$QueriesBeforeStartDate implements QueriesBeforeStartDate {
  const _$QueriesBeforeStartDate(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'TenderTimelineFailures.queriesBeforeStartDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QueriesBeforeStartDate &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  $QueriesBeforeStartDateCopyWith<QueriesBeforeStartDate> get copyWith =>
      _$QueriesBeforeStartDateCopyWithImpl<QueriesBeforeStartDate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) queriesBeforeStartDate,
    required TResult Function(DateTime date) submissionBeforeQueries,
    required TResult Function(DateTime date) feedbackBeforeSubmission,
    required TResult Function(DateTime date) awardBeforeFeedback,
    required TResult Function(DateTime date) endDateBeforeAward,
  }) {
    return queriesBeforeStartDate(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? queriesBeforeStartDate,
    TResult Function(DateTime date)? submissionBeforeQueries,
    TResult Function(DateTime date)? feedbackBeforeSubmission,
    TResult Function(DateTime date)? awardBeforeFeedback,
    TResult Function(DateTime date)? endDateBeforeAward,
    required TResult orElse(),
  }) {
    if (queriesBeforeStartDate != null) {
      return queriesBeforeStartDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueriesBeforeStartDate value)
        queriesBeforeStartDate,
    required TResult Function(SubmissionBeforeQueries value)
        submissionBeforeQueries,
    required TResult Function(FeedbackBeforeSubmission value)
        feedbackBeforeSubmission,
    required TResult Function(AwardBeforeFeedback value) awardBeforeFeedback,
    required TResult Function(EndDateBeforeAward value) endDateBeforeAward,
  }) {
    return queriesBeforeStartDate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueriesBeforeStartDate value)? queriesBeforeStartDate,
    TResult Function(SubmissionBeforeQueries value)? submissionBeforeQueries,
    TResult Function(FeedbackBeforeSubmission value)? feedbackBeforeSubmission,
    TResult Function(AwardBeforeFeedback value)? awardBeforeFeedback,
    TResult Function(EndDateBeforeAward value)? endDateBeforeAward,
    required TResult orElse(),
  }) {
    if (queriesBeforeStartDate != null) {
      return queriesBeforeStartDate(this);
    }
    return orElse();
  }
}

abstract class QueriesBeforeStartDate implements TenderTimelineFailures {
  const factory QueriesBeforeStartDate(DateTime date) =
      _$QueriesBeforeStartDate;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $QueriesBeforeStartDateCopyWith<QueriesBeforeStartDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionBeforeQueriesCopyWith<$Res>
    implements $TenderTimelineFailuresCopyWith<$Res> {
  factory $SubmissionBeforeQueriesCopyWith(SubmissionBeforeQueries value,
          $Res Function(SubmissionBeforeQueries) then) =
      _$SubmissionBeforeQueriesCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date});
}

/// @nodoc
class _$SubmissionBeforeQueriesCopyWithImpl<$Res>
    extends _$TenderTimelineFailuresCopyWithImpl<$Res>
    implements $SubmissionBeforeQueriesCopyWith<$Res> {
  _$SubmissionBeforeQueriesCopyWithImpl(SubmissionBeforeQueries _value,
      $Res Function(SubmissionBeforeQueries) _then)
      : super(_value, (v) => _then(v as SubmissionBeforeQueries));

  @override
  SubmissionBeforeQueries get _value => super._value as SubmissionBeforeQueries;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(SubmissionBeforeQueries(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SubmissionBeforeQueries implements SubmissionBeforeQueries {
  const _$SubmissionBeforeQueries(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'TenderTimelineFailures.submissionBeforeQueries(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubmissionBeforeQueries &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  $SubmissionBeforeQueriesCopyWith<SubmissionBeforeQueries> get copyWith =>
      _$SubmissionBeforeQueriesCopyWithImpl<SubmissionBeforeQueries>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) queriesBeforeStartDate,
    required TResult Function(DateTime date) submissionBeforeQueries,
    required TResult Function(DateTime date) feedbackBeforeSubmission,
    required TResult Function(DateTime date) awardBeforeFeedback,
    required TResult Function(DateTime date) endDateBeforeAward,
  }) {
    return submissionBeforeQueries(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? queriesBeforeStartDate,
    TResult Function(DateTime date)? submissionBeforeQueries,
    TResult Function(DateTime date)? feedbackBeforeSubmission,
    TResult Function(DateTime date)? awardBeforeFeedback,
    TResult Function(DateTime date)? endDateBeforeAward,
    required TResult orElse(),
  }) {
    if (submissionBeforeQueries != null) {
      return submissionBeforeQueries(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueriesBeforeStartDate value)
        queriesBeforeStartDate,
    required TResult Function(SubmissionBeforeQueries value)
        submissionBeforeQueries,
    required TResult Function(FeedbackBeforeSubmission value)
        feedbackBeforeSubmission,
    required TResult Function(AwardBeforeFeedback value) awardBeforeFeedback,
    required TResult Function(EndDateBeforeAward value) endDateBeforeAward,
  }) {
    return submissionBeforeQueries(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueriesBeforeStartDate value)? queriesBeforeStartDate,
    TResult Function(SubmissionBeforeQueries value)? submissionBeforeQueries,
    TResult Function(FeedbackBeforeSubmission value)? feedbackBeforeSubmission,
    TResult Function(AwardBeforeFeedback value)? awardBeforeFeedback,
    TResult Function(EndDateBeforeAward value)? endDateBeforeAward,
    required TResult orElse(),
  }) {
    if (submissionBeforeQueries != null) {
      return submissionBeforeQueries(this);
    }
    return orElse();
  }
}

abstract class SubmissionBeforeQueries implements TenderTimelineFailures {
  const factory SubmissionBeforeQueries(DateTime date) =
      _$SubmissionBeforeQueries;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SubmissionBeforeQueriesCopyWith<SubmissionBeforeQueries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackBeforeSubmissionCopyWith<$Res>
    implements $TenderTimelineFailuresCopyWith<$Res> {
  factory $FeedbackBeforeSubmissionCopyWith(FeedbackBeforeSubmission value,
          $Res Function(FeedbackBeforeSubmission) then) =
      _$FeedbackBeforeSubmissionCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date});
}

/// @nodoc
class _$FeedbackBeforeSubmissionCopyWithImpl<$Res>
    extends _$TenderTimelineFailuresCopyWithImpl<$Res>
    implements $FeedbackBeforeSubmissionCopyWith<$Res> {
  _$FeedbackBeforeSubmissionCopyWithImpl(FeedbackBeforeSubmission _value,
      $Res Function(FeedbackBeforeSubmission) _then)
      : super(_value, (v) => _then(v as FeedbackBeforeSubmission));

  @override
  FeedbackBeforeSubmission get _value =>
      super._value as FeedbackBeforeSubmission;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(FeedbackBeforeSubmission(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$FeedbackBeforeSubmission implements FeedbackBeforeSubmission {
  const _$FeedbackBeforeSubmission(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'TenderTimelineFailures.feedbackBeforeSubmission(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeedbackBeforeSubmission &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  $FeedbackBeforeSubmissionCopyWith<FeedbackBeforeSubmission> get copyWith =>
      _$FeedbackBeforeSubmissionCopyWithImpl<FeedbackBeforeSubmission>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) queriesBeforeStartDate,
    required TResult Function(DateTime date) submissionBeforeQueries,
    required TResult Function(DateTime date) feedbackBeforeSubmission,
    required TResult Function(DateTime date) awardBeforeFeedback,
    required TResult Function(DateTime date) endDateBeforeAward,
  }) {
    return feedbackBeforeSubmission(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? queriesBeforeStartDate,
    TResult Function(DateTime date)? submissionBeforeQueries,
    TResult Function(DateTime date)? feedbackBeforeSubmission,
    TResult Function(DateTime date)? awardBeforeFeedback,
    TResult Function(DateTime date)? endDateBeforeAward,
    required TResult orElse(),
  }) {
    if (feedbackBeforeSubmission != null) {
      return feedbackBeforeSubmission(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueriesBeforeStartDate value)
        queriesBeforeStartDate,
    required TResult Function(SubmissionBeforeQueries value)
        submissionBeforeQueries,
    required TResult Function(FeedbackBeforeSubmission value)
        feedbackBeforeSubmission,
    required TResult Function(AwardBeforeFeedback value) awardBeforeFeedback,
    required TResult Function(EndDateBeforeAward value) endDateBeforeAward,
  }) {
    return feedbackBeforeSubmission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueriesBeforeStartDate value)? queriesBeforeStartDate,
    TResult Function(SubmissionBeforeQueries value)? submissionBeforeQueries,
    TResult Function(FeedbackBeforeSubmission value)? feedbackBeforeSubmission,
    TResult Function(AwardBeforeFeedback value)? awardBeforeFeedback,
    TResult Function(EndDateBeforeAward value)? endDateBeforeAward,
    required TResult orElse(),
  }) {
    if (feedbackBeforeSubmission != null) {
      return feedbackBeforeSubmission(this);
    }
    return orElse();
  }
}

abstract class FeedbackBeforeSubmission implements TenderTimelineFailures {
  const factory FeedbackBeforeSubmission(DateTime date) =
      _$FeedbackBeforeSubmission;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FeedbackBeforeSubmissionCopyWith<FeedbackBeforeSubmission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AwardBeforeFeedbackCopyWith<$Res>
    implements $TenderTimelineFailuresCopyWith<$Res> {
  factory $AwardBeforeFeedbackCopyWith(
          AwardBeforeFeedback value, $Res Function(AwardBeforeFeedback) then) =
      _$AwardBeforeFeedbackCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date});
}

/// @nodoc
class _$AwardBeforeFeedbackCopyWithImpl<$Res>
    extends _$TenderTimelineFailuresCopyWithImpl<$Res>
    implements $AwardBeforeFeedbackCopyWith<$Res> {
  _$AwardBeforeFeedbackCopyWithImpl(
      AwardBeforeFeedback _value, $Res Function(AwardBeforeFeedback) _then)
      : super(_value, (v) => _then(v as AwardBeforeFeedback));

  @override
  AwardBeforeFeedback get _value => super._value as AwardBeforeFeedback;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(AwardBeforeFeedback(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$AwardBeforeFeedback implements AwardBeforeFeedback {
  const _$AwardBeforeFeedback(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'TenderTimelineFailures.awardBeforeFeedback(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AwardBeforeFeedback &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  $AwardBeforeFeedbackCopyWith<AwardBeforeFeedback> get copyWith =>
      _$AwardBeforeFeedbackCopyWithImpl<AwardBeforeFeedback>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) queriesBeforeStartDate,
    required TResult Function(DateTime date) submissionBeforeQueries,
    required TResult Function(DateTime date) feedbackBeforeSubmission,
    required TResult Function(DateTime date) awardBeforeFeedback,
    required TResult Function(DateTime date) endDateBeforeAward,
  }) {
    return awardBeforeFeedback(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? queriesBeforeStartDate,
    TResult Function(DateTime date)? submissionBeforeQueries,
    TResult Function(DateTime date)? feedbackBeforeSubmission,
    TResult Function(DateTime date)? awardBeforeFeedback,
    TResult Function(DateTime date)? endDateBeforeAward,
    required TResult orElse(),
  }) {
    if (awardBeforeFeedback != null) {
      return awardBeforeFeedback(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueriesBeforeStartDate value)
        queriesBeforeStartDate,
    required TResult Function(SubmissionBeforeQueries value)
        submissionBeforeQueries,
    required TResult Function(FeedbackBeforeSubmission value)
        feedbackBeforeSubmission,
    required TResult Function(AwardBeforeFeedback value) awardBeforeFeedback,
    required TResult Function(EndDateBeforeAward value) endDateBeforeAward,
  }) {
    return awardBeforeFeedback(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueriesBeforeStartDate value)? queriesBeforeStartDate,
    TResult Function(SubmissionBeforeQueries value)? submissionBeforeQueries,
    TResult Function(FeedbackBeforeSubmission value)? feedbackBeforeSubmission,
    TResult Function(AwardBeforeFeedback value)? awardBeforeFeedback,
    TResult Function(EndDateBeforeAward value)? endDateBeforeAward,
    required TResult orElse(),
  }) {
    if (awardBeforeFeedback != null) {
      return awardBeforeFeedback(this);
    }
    return orElse();
  }
}

abstract class AwardBeforeFeedback implements TenderTimelineFailures {
  const factory AwardBeforeFeedback(DateTime date) = _$AwardBeforeFeedback;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AwardBeforeFeedbackCopyWith<AwardBeforeFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndDateBeforeAwardCopyWith<$Res>
    implements $TenderTimelineFailuresCopyWith<$Res> {
  factory $EndDateBeforeAwardCopyWith(
          EndDateBeforeAward value, $Res Function(EndDateBeforeAward) then) =
      _$EndDateBeforeAwardCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date});
}

/// @nodoc
class _$EndDateBeforeAwardCopyWithImpl<$Res>
    extends _$TenderTimelineFailuresCopyWithImpl<$Res>
    implements $EndDateBeforeAwardCopyWith<$Res> {
  _$EndDateBeforeAwardCopyWithImpl(
      EndDateBeforeAward _value, $Res Function(EndDateBeforeAward) _then)
      : super(_value, (v) => _then(v as EndDateBeforeAward));

  @override
  EndDateBeforeAward get _value => super._value as EndDateBeforeAward;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(EndDateBeforeAward(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$EndDateBeforeAward implements EndDateBeforeAward {
  const _$EndDateBeforeAward(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'TenderTimelineFailures.endDateBeforeAward(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EndDateBeforeAward &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  $EndDateBeforeAwardCopyWith<EndDateBeforeAward> get copyWith =>
      _$EndDateBeforeAwardCopyWithImpl<EndDateBeforeAward>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) queriesBeforeStartDate,
    required TResult Function(DateTime date) submissionBeforeQueries,
    required TResult Function(DateTime date) feedbackBeforeSubmission,
    required TResult Function(DateTime date) awardBeforeFeedback,
    required TResult Function(DateTime date) endDateBeforeAward,
  }) {
    return endDateBeforeAward(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? queriesBeforeStartDate,
    TResult Function(DateTime date)? submissionBeforeQueries,
    TResult Function(DateTime date)? feedbackBeforeSubmission,
    TResult Function(DateTime date)? awardBeforeFeedback,
    TResult Function(DateTime date)? endDateBeforeAward,
    required TResult orElse(),
  }) {
    if (endDateBeforeAward != null) {
      return endDateBeforeAward(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueriesBeforeStartDate value)
        queriesBeforeStartDate,
    required TResult Function(SubmissionBeforeQueries value)
        submissionBeforeQueries,
    required TResult Function(FeedbackBeforeSubmission value)
        feedbackBeforeSubmission,
    required TResult Function(AwardBeforeFeedback value) awardBeforeFeedback,
    required TResult Function(EndDateBeforeAward value) endDateBeforeAward,
  }) {
    return endDateBeforeAward(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueriesBeforeStartDate value)? queriesBeforeStartDate,
    TResult Function(SubmissionBeforeQueries value)? submissionBeforeQueries,
    TResult Function(FeedbackBeforeSubmission value)? feedbackBeforeSubmission,
    TResult Function(AwardBeforeFeedback value)? awardBeforeFeedback,
    TResult Function(EndDateBeforeAward value)? endDateBeforeAward,
    required TResult orElse(),
  }) {
    if (endDateBeforeAward != null) {
      return endDateBeforeAward(this);
    }
    return orElse();
  }
}

abstract class EndDateBeforeAward implements TenderTimelineFailures {
  const factory EndDateBeforeAward(DateTime date) = _$EndDateBeforeAward;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EndDateBeforeAwardCopyWith<EndDateBeforeAward> get copyWith =>
      throw _privateConstructorUsedError;
}
