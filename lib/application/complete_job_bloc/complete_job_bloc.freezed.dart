// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'complete_job_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CompleteJobEventTearOff {
  const _$CompleteJobEventTearOff();

  BidsOnJobFetched bidsOnJobFetched(List<JobBid> bids) {
    return BidsOnJobFetched(
      bids,
    );
  }

  SubmitPressed submitPressed(List<JobBidFeedback> feedback) {
    return SubmitPressed(
      feedback,
    );
  }
}

/// @nodoc
const $CompleteJobEvent = _$CompleteJobEventTearOff();

/// @nodoc
mixin _$CompleteJobEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<JobBid> bids) bidsOnJobFetched,
    required TResult Function(List<JobBidFeedback> feedback) submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<JobBid> bids)? bidsOnJobFetched,
    TResult Function(List<JobBidFeedback> feedback)? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<JobBid> bids)? bidsOnJobFetched,
    TResult Function(List<JobBidFeedback> feedback)? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BidsOnJobFetched value) bidsOnJobFetched,
    required TResult Function(SubmitPressed value) submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BidsOnJobFetched value)? bidsOnJobFetched,
    TResult Function(SubmitPressed value)? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BidsOnJobFetched value)? bidsOnJobFetched,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteJobEventCopyWith<$Res> {
  factory $CompleteJobEventCopyWith(
          CompleteJobEvent value, $Res Function(CompleteJobEvent) then) =
      _$CompleteJobEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CompleteJobEventCopyWithImpl<$Res>
    implements $CompleteJobEventCopyWith<$Res> {
  _$CompleteJobEventCopyWithImpl(this._value, this._then);

  final CompleteJobEvent _value;
  // ignore: unused_field
  final $Res Function(CompleteJobEvent) _then;
}

/// @nodoc
abstract class $BidsOnJobFetchedCopyWith<$Res> {
  factory $BidsOnJobFetchedCopyWith(
          BidsOnJobFetched value, $Res Function(BidsOnJobFetched) then) =
      _$BidsOnJobFetchedCopyWithImpl<$Res>;
  $Res call({List<JobBid> bids});
}

/// @nodoc
class _$BidsOnJobFetchedCopyWithImpl<$Res>
    extends _$CompleteJobEventCopyWithImpl<$Res>
    implements $BidsOnJobFetchedCopyWith<$Res> {
  _$BidsOnJobFetchedCopyWithImpl(
      BidsOnJobFetched _value, $Res Function(BidsOnJobFetched) _then)
      : super(_value, (v) => _then(v as BidsOnJobFetched));

  @override
  BidsOnJobFetched get _value => super._value as BidsOnJobFetched;

  @override
  $Res call({
    Object? bids = freezed,
  }) {
    return _then(BidsOnJobFetched(
      bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<JobBid>,
    ));
  }
}

/// @nodoc

class _$BidsOnJobFetched implements BidsOnJobFetched {
  _$BidsOnJobFetched(this.bids);

  @override
  final List<JobBid> bids;

  @override
  String toString() {
    return 'CompleteJobEvent.bidsOnJobFetched(bids: $bids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BidsOnJobFetched &&
            const DeepCollectionEquality().equals(other.bids, bids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bids));

  @JsonKey(ignore: true)
  @override
  $BidsOnJobFetchedCopyWith<BidsOnJobFetched> get copyWith =>
      _$BidsOnJobFetchedCopyWithImpl<BidsOnJobFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<JobBid> bids) bidsOnJobFetched,
    required TResult Function(List<JobBidFeedback> feedback) submitPressed,
  }) {
    return bidsOnJobFetched(bids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<JobBid> bids)? bidsOnJobFetched,
    TResult Function(List<JobBidFeedback> feedback)? submitPressed,
  }) {
    return bidsOnJobFetched?.call(bids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<JobBid> bids)? bidsOnJobFetched,
    TResult Function(List<JobBidFeedback> feedback)? submitPressed,
    required TResult orElse(),
  }) {
    if (bidsOnJobFetched != null) {
      return bidsOnJobFetched(bids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BidsOnJobFetched value) bidsOnJobFetched,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return bidsOnJobFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BidsOnJobFetched value)? bidsOnJobFetched,
    TResult Function(SubmitPressed value)? submitPressed,
  }) {
    return bidsOnJobFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BidsOnJobFetched value)? bidsOnJobFetched,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (bidsOnJobFetched != null) {
      return bidsOnJobFetched(this);
    }
    return orElse();
  }
}

abstract class BidsOnJobFetched implements CompleteJobEvent {
  factory BidsOnJobFetched(List<JobBid> bids) = _$BidsOnJobFetched;

  List<JobBid> get bids;
  @JsonKey(ignore: true)
  $BidsOnJobFetchedCopyWith<BidsOnJobFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitPressedCopyWith<$Res> {
  factory $SubmitPressedCopyWith(
          SubmitPressed value, $Res Function(SubmitPressed) then) =
      _$SubmitPressedCopyWithImpl<$Res>;
  $Res call({List<JobBidFeedback> feedback});
}

/// @nodoc
class _$SubmitPressedCopyWithImpl<$Res>
    extends _$CompleteJobEventCopyWithImpl<$Res>
    implements $SubmitPressedCopyWith<$Res> {
  _$SubmitPressedCopyWithImpl(
      SubmitPressed _value, $Res Function(SubmitPressed) _then)
      : super(_value, (v) => _then(v as SubmitPressed));

  @override
  SubmitPressed get _value => super._value as SubmitPressed;

  @override
  $Res call({
    Object? feedback = freezed,
  }) {
    return _then(SubmitPressed(
      feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as List<JobBidFeedback>,
    ));
  }
}

/// @nodoc

class _$SubmitPressed implements SubmitPressed {
  _$SubmitPressed(this.feedback);

  @override
  final List<JobBidFeedback> feedback;

  @override
  String toString() {
    return 'CompleteJobEvent.submitPressed(feedback: $feedback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubmitPressed &&
            const DeepCollectionEquality().equals(other.feedback, feedback));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(feedback));

  @JsonKey(ignore: true)
  @override
  $SubmitPressedCopyWith<SubmitPressed> get copyWith =>
      _$SubmitPressedCopyWithImpl<SubmitPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<JobBid> bids) bidsOnJobFetched,
    required TResult Function(List<JobBidFeedback> feedback) submitPressed,
  }) {
    return submitPressed(feedback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<JobBid> bids)? bidsOnJobFetched,
    TResult Function(List<JobBidFeedback> feedback)? submitPressed,
  }) {
    return submitPressed?.call(feedback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<JobBid> bids)? bidsOnJobFetched,
    TResult Function(List<JobBidFeedback> feedback)? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(feedback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BidsOnJobFetched value) bidsOnJobFetched,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return submitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BidsOnJobFetched value)? bidsOnJobFetched,
    TResult Function(SubmitPressed value)? submitPressed,
  }) {
    return submitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BidsOnJobFetched value)? bidsOnJobFetched,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(this);
    }
    return orElse();
  }
}

abstract class SubmitPressed implements CompleteJobEvent {
  factory SubmitPressed(List<JobBidFeedback> feedback) = _$SubmitPressed;

  List<JobBidFeedback> get feedback;
  @JsonKey(ignore: true)
  $SubmitPressedCopyWith<SubmitPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CompleteJobStateTearOff {
  const _$CompleteJobStateTearOff();

  _CompleteJobState call(
      {required Job job,
      required Option<KtList<JobBid>> allBidsOnJobOption,
      required List<JobBidFeedback> feedback,
      required bool submissionInProgress,
      required Option<Either<TWServerError, Unit>> resultOption}) {
    return _CompleteJobState(
      job: job,
      allBidsOnJobOption: allBidsOnJobOption,
      feedback: feedback,
      submissionInProgress: submissionInProgress,
      resultOption: resultOption,
    );
  }
}

/// @nodoc
const $CompleteJobState = _$CompleteJobStateTearOff();

/// @nodoc
mixin _$CompleteJobState {
  Job get job => throw _privateConstructorUsedError;
  Option<KtList<JobBid>> get allBidsOnJobOption =>
      throw _privateConstructorUsedError;
  List<JobBidFeedback> get feedback => throw _privateConstructorUsedError;
  bool get submissionInProgress => throw _privateConstructorUsedError;
  Option<Either<TWServerError, Unit>> get resultOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompleteJobStateCopyWith<CompleteJobState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteJobStateCopyWith<$Res> {
  factory $CompleteJobStateCopyWith(
          CompleteJobState value, $Res Function(CompleteJobState) then) =
      _$CompleteJobStateCopyWithImpl<$Res>;
  $Res call(
      {Job job,
      Option<KtList<JobBid>> allBidsOnJobOption,
      List<JobBidFeedback> feedback,
      bool submissionInProgress,
      Option<Either<TWServerError, Unit>> resultOption});

  $JobCopyWith<$Res> get job;
}

/// @nodoc
class _$CompleteJobStateCopyWithImpl<$Res>
    implements $CompleteJobStateCopyWith<$Res> {
  _$CompleteJobStateCopyWithImpl(this._value, this._then);

  final CompleteJobState _value;
  // ignore: unused_field
  final $Res Function(CompleteJobState) _then;

  @override
  $Res call({
    Object? job = freezed,
    Object? allBidsOnJobOption = freezed,
    Object? feedback = freezed,
    Object? submissionInProgress = freezed,
    Object? resultOption = freezed,
  }) {
    return _then(_value.copyWith(
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
      allBidsOnJobOption: allBidsOnJobOption == freezed
          ? _value.allBidsOnJobOption
          : allBidsOnJobOption // ignore: cast_nullable_to_non_nullable
              as Option<KtList<JobBid>>,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as List<JobBidFeedback>,
      submissionInProgress: submissionInProgress == freezed
          ? _value.submissionInProgress
          : submissionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TWServerError, Unit>>,
    ));
  }

  @override
  $JobCopyWith<$Res> get job {
    return $JobCopyWith<$Res>(_value.job, (value) {
      return _then(_value.copyWith(job: value));
    });
  }
}

/// @nodoc
abstract class _$CompleteJobStateCopyWith<$Res>
    implements $CompleteJobStateCopyWith<$Res> {
  factory _$CompleteJobStateCopyWith(
          _CompleteJobState value, $Res Function(_CompleteJobState) then) =
      __$CompleteJobStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Job job,
      Option<KtList<JobBid>> allBidsOnJobOption,
      List<JobBidFeedback> feedback,
      bool submissionInProgress,
      Option<Either<TWServerError, Unit>> resultOption});

  @override
  $JobCopyWith<$Res> get job;
}

/// @nodoc
class __$CompleteJobStateCopyWithImpl<$Res>
    extends _$CompleteJobStateCopyWithImpl<$Res>
    implements _$CompleteJobStateCopyWith<$Res> {
  __$CompleteJobStateCopyWithImpl(
      _CompleteJobState _value, $Res Function(_CompleteJobState) _then)
      : super(_value, (v) => _then(v as _CompleteJobState));

  @override
  _CompleteJobState get _value => super._value as _CompleteJobState;

  @override
  $Res call({
    Object? job = freezed,
    Object? allBidsOnJobOption = freezed,
    Object? feedback = freezed,
    Object? submissionInProgress = freezed,
    Object? resultOption = freezed,
  }) {
    return _then(_CompleteJobState(
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
      allBidsOnJobOption: allBidsOnJobOption == freezed
          ? _value.allBidsOnJobOption
          : allBidsOnJobOption // ignore: cast_nullable_to_non_nullable
              as Option<KtList<JobBid>>,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as List<JobBidFeedback>,
      submissionInProgress: submissionInProgress == freezed
          ? _value.submissionInProgress
          : submissionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TWServerError, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CompleteJobState extends _CompleteJobState {
  _$_CompleteJobState(
      {required this.job,
      required this.allBidsOnJobOption,
      required this.feedback,
      required this.submissionInProgress,
      required this.resultOption})
      : super._();

  @override
  final Job job;
  @override
  final Option<KtList<JobBid>> allBidsOnJobOption;
  @override
  final List<JobBidFeedback> feedback;
  @override
  final bool submissionInProgress;
  @override
  final Option<Either<TWServerError, Unit>> resultOption;

  @override
  String toString() {
    return 'CompleteJobState(job: $job, allBidsOnJobOption: $allBidsOnJobOption, feedback: $feedback, submissionInProgress: $submissionInProgress, resultOption: $resultOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompleteJobState &&
            const DeepCollectionEquality().equals(other.job, job) &&
            const DeepCollectionEquality()
                .equals(other.allBidsOnJobOption, allBidsOnJobOption) &&
            const DeepCollectionEquality().equals(other.feedback, feedback) &&
            const DeepCollectionEquality()
                .equals(other.submissionInProgress, submissionInProgress) &&
            const DeepCollectionEquality()
                .equals(other.resultOption, resultOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(job),
      const DeepCollectionEquality().hash(allBidsOnJobOption),
      const DeepCollectionEquality().hash(feedback),
      const DeepCollectionEquality().hash(submissionInProgress),
      const DeepCollectionEquality().hash(resultOption));

  @JsonKey(ignore: true)
  @override
  _$CompleteJobStateCopyWith<_CompleteJobState> get copyWith =>
      __$CompleteJobStateCopyWithImpl<_CompleteJobState>(this, _$identity);
}

abstract class _CompleteJobState extends CompleteJobState {
  factory _CompleteJobState(
          {required Job job,
          required Option<KtList<JobBid>> allBidsOnJobOption,
          required List<JobBidFeedback> feedback,
          required bool submissionInProgress,
          required Option<Either<TWServerError, Unit>> resultOption}) =
      _$_CompleteJobState;
  _CompleteJobState._() : super._();

  @override
  Job get job;
  @override
  Option<KtList<JobBid>> get allBidsOnJobOption;
  @override
  List<JobBidFeedback> get feedback;
  @override
  bool get submissionInProgress;
  @override
  Option<Either<TWServerError, Unit>> get resultOption;
  @override
  @JsonKey(ignore: true)
  _$CompleteJobStateCopyWith<_CompleteJobState> get copyWith =>
      throw _privateConstructorUsedError;
}
