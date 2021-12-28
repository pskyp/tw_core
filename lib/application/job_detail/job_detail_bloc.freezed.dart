// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'job_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JobDetailEventTearOff {
  const _$JobDetailEventTearOff();

  StreamInvoicesUpdated streamInvoicesUpdated(List<Invoice> invoices) {
    return StreamInvoicesUpdated(
      invoices,
    );
  }

  StreamJobUpdated streamJobUpdated(Job job) {
    return StreamJobUpdated(
      job,
    );
  }

  BidsStreamUpdated bidsStreamUpdated(List<JobBid> bids) {
    return BidsStreamUpdated(
      bids,
    );
  }
}

/// @nodoc
const $JobDetailEvent = _$JobDetailEventTearOff();

/// @nodoc
mixin _$JobDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Invoice> invoices) streamInvoicesUpdated,
    required TResult Function(Job job) streamJobUpdated,
    required TResult Function(List<JobBid> bids) bidsStreamUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Invoice> invoices)? streamInvoicesUpdated,
    TResult Function(Job job)? streamJobUpdated,
    TResult Function(List<JobBid> bids)? bidsStreamUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Invoice> invoices)? streamInvoicesUpdated,
    TResult Function(Job job)? streamJobUpdated,
    TResult Function(List<JobBid> bids)? bidsStreamUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamInvoicesUpdated value)
        streamInvoicesUpdated,
    required TResult Function(StreamJobUpdated value) streamJobUpdated,
    required TResult Function(BidsStreamUpdated value) bidsStreamUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StreamInvoicesUpdated value)? streamInvoicesUpdated,
    TResult Function(StreamJobUpdated value)? streamJobUpdated,
    TResult Function(BidsStreamUpdated value)? bidsStreamUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamInvoicesUpdated value)? streamInvoicesUpdated,
    TResult Function(StreamJobUpdated value)? streamJobUpdated,
    TResult Function(BidsStreamUpdated value)? bidsStreamUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobDetailEventCopyWith<$Res> {
  factory $JobDetailEventCopyWith(
          JobDetailEvent value, $Res Function(JobDetailEvent) then) =
      _$JobDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$JobDetailEventCopyWithImpl<$Res>
    implements $JobDetailEventCopyWith<$Res> {
  _$JobDetailEventCopyWithImpl(this._value, this._then);

  final JobDetailEvent _value;
  // ignore: unused_field
  final $Res Function(JobDetailEvent) _then;
}

/// @nodoc
abstract class $StreamInvoicesUpdatedCopyWith<$Res> {
  factory $StreamInvoicesUpdatedCopyWith(StreamInvoicesUpdated value,
          $Res Function(StreamInvoicesUpdated) then) =
      _$StreamInvoicesUpdatedCopyWithImpl<$Res>;
  $Res call({List<Invoice> invoices});
}

/// @nodoc
class _$StreamInvoicesUpdatedCopyWithImpl<$Res>
    extends _$JobDetailEventCopyWithImpl<$Res>
    implements $StreamInvoicesUpdatedCopyWith<$Res> {
  _$StreamInvoicesUpdatedCopyWithImpl(
      StreamInvoicesUpdated _value, $Res Function(StreamInvoicesUpdated) _then)
      : super(_value, (v) => _then(v as StreamInvoicesUpdated));

  @override
  StreamInvoicesUpdated get _value => super._value as StreamInvoicesUpdated;

  @override
  $Res call({
    Object? invoices = freezed,
  }) {
    return _then(StreamInvoicesUpdated(
      invoices == freezed
          ? _value.invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as List<Invoice>,
    ));
  }
}

/// @nodoc

class _$StreamInvoicesUpdated implements StreamInvoicesUpdated {
  const _$StreamInvoicesUpdated(this.invoices);

  @override
  final List<Invoice> invoices;

  @override
  String toString() {
    return 'JobDetailEvent.streamInvoicesUpdated(invoices: $invoices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StreamInvoicesUpdated &&
            const DeepCollectionEquality().equals(other.invoices, invoices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(invoices));

  @JsonKey(ignore: true)
  @override
  $StreamInvoicesUpdatedCopyWith<StreamInvoicesUpdated> get copyWith =>
      _$StreamInvoicesUpdatedCopyWithImpl<StreamInvoicesUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Invoice> invoices) streamInvoicesUpdated,
    required TResult Function(Job job) streamJobUpdated,
    required TResult Function(List<JobBid> bids) bidsStreamUpdated,
  }) {
    return streamInvoicesUpdated(invoices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Invoice> invoices)? streamInvoicesUpdated,
    TResult Function(Job job)? streamJobUpdated,
    TResult Function(List<JobBid> bids)? bidsStreamUpdated,
  }) {
    return streamInvoicesUpdated?.call(invoices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Invoice> invoices)? streamInvoicesUpdated,
    TResult Function(Job job)? streamJobUpdated,
    TResult Function(List<JobBid> bids)? bidsStreamUpdated,
    required TResult orElse(),
  }) {
    if (streamInvoicesUpdated != null) {
      return streamInvoicesUpdated(invoices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamInvoicesUpdated value)
        streamInvoicesUpdated,
    required TResult Function(StreamJobUpdated value) streamJobUpdated,
    required TResult Function(BidsStreamUpdated value) bidsStreamUpdated,
  }) {
    return streamInvoicesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StreamInvoicesUpdated value)? streamInvoicesUpdated,
    TResult Function(StreamJobUpdated value)? streamJobUpdated,
    TResult Function(BidsStreamUpdated value)? bidsStreamUpdated,
  }) {
    return streamInvoicesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamInvoicesUpdated value)? streamInvoicesUpdated,
    TResult Function(StreamJobUpdated value)? streamJobUpdated,
    TResult Function(BidsStreamUpdated value)? bidsStreamUpdated,
    required TResult orElse(),
  }) {
    if (streamInvoicesUpdated != null) {
      return streamInvoicesUpdated(this);
    }
    return orElse();
  }
}

abstract class StreamInvoicesUpdated implements JobDetailEvent {
  const factory StreamInvoicesUpdated(List<Invoice> invoices) =
      _$StreamInvoicesUpdated;

  List<Invoice> get invoices;
  @JsonKey(ignore: true)
  $StreamInvoicesUpdatedCopyWith<StreamInvoicesUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamJobUpdatedCopyWith<$Res> {
  factory $StreamJobUpdatedCopyWith(
          StreamJobUpdated value, $Res Function(StreamJobUpdated) then) =
      _$StreamJobUpdatedCopyWithImpl<$Res>;
  $Res call({Job job});

  $JobCopyWith<$Res> get job;
}

/// @nodoc
class _$StreamJobUpdatedCopyWithImpl<$Res>
    extends _$JobDetailEventCopyWithImpl<$Res>
    implements $StreamJobUpdatedCopyWith<$Res> {
  _$StreamJobUpdatedCopyWithImpl(
      StreamJobUpdated _value, $Res Function(StreamJobUpdated) _then)
      : super(_value, (v) => _then(v as StreamJobUpdated));

  @override
  StreamJobUpdated get _value => super._value as StreamJobUpdated;

  @override
  $Res call({
    Object? job = freezed,
  }) {
    return _then(StreamJobUpdated(
      job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
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

class _$StreamJobUpdated implements StreamJobUpdated {
  const _$StreamJobUpdated(this.job);

  @override
  final Job job;

  @override
  String toString() {
    return 'JobDetailEvent.streamJobUpdated(job: $job)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StreamJobUpdated &&
            const DeepCollectionEquality().equals(other.job, job));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(job));

  @JsonKey(ignore: true)
  @override
  $StreamJobUpdatedCopyWith<StreamJobUpdated> get copyWith =>
      _$StreamJobUpdatedCopyWithImpl<StreamJobUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Invoice> invoices) streamInvoicesUpdated,
    required TResult Function(Job job) streamJobUpdated,
    required TResult Function(List<JobBid> bids) bidsStreamUpdated,
  }) {
    return streamJobUpdated(job);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Invoice> invoices)? streamInvoicesUpdated,
    TResult Function(Job job)? streamJobUpdated,
    TResult Function(List<JobBid> bids)? bidsStreamUpdated,
  }) {
    return streamJobUpdated?.call(job);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Invoice> invoices)? streamInvoicesUpdated,
    TResult Function(Job job)? streamJobUpdated,
    TResult Function(List<JobBid> bids)? bidsStreamUpdated,
    required TResult orElse(),
  }) {
    if (streamJobUpdated != null) {
      return streamJobUpdated(job);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamInvoicesUpdated value)
        streamInvoicesUpdated,
    required TResult Function(StreamJobUpdated value) streamJobUpdated,
    required TResult Function(BidsStreamUpdated value) bidsStreamUpdated,
  }) {
    return streamJobUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StreamInvoicesUpdated value)? streamInvoicesUpdated,
    TResult Function(StreamJobUpdated value)? streamJobUpdated,
    TResult Function(BidsStreamUpdated value)? bidsStreamUpdated,
  }) {
    return streamJobUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamInvoicesUpdated value)? streamInvoicesUpdated,
    TResult Function(StreamJobUpdated value)? streamJobUpdated,
    TResult Function(BidsStreamUpdated value)? bidsStreamUpdated,
    required TResult orElse(),
  }) {
    if (streamJobUpdated != null) {
      return streamJobUpdated(this);
    }
    return orElse();
  }
}

abstract class StreamJobUpdated implements JobDetailEvent {
  const factory StreamJobUpdated(Job job) = _$StreamJobUpdated;

  Job get job;
  @JsonKey(ignore: true)
  $StreamJobUpdatedCopyWith<StreamJobUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidsStreamUpdatedCopyWith<$Res> {
  factory $BidsStreamUpdatedCopyWith(
          BidsStreamUpdated value, $Res Function(BidsStreamUpdated) then) =
      _$BidsStreamUpdatedCopyWithImpl<$Res>;
  $Res call({List<JobBid> bids});
}

/// @nodoc
class _$BidsStreamUpdatedCopyWithImpl<$Res>
    extends _$JobDetailEventCopyWithImpl<$Res>
    implements $BidsStreamUpdatedCopyWith<$Res> {
  _$BidsStreamUpdatedCopyWithImpl(
      BidsStreamUpdated _value, $Res Function(BidsStreamUpdated) _then)
      : super(_value, (v) => _then(v as BidsStreamUpdated));

  @override
  BidsStreamUpdated get _value => super._value as BidsStreamUpdated;

  @override
  $Res call({
    Object? bids = freezed,
  }) {
    return _then(BidsStreamUpdated(
      bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<JobBid>,
    ));
  }
}

/// @nodoc

class _$BidsStreamUpdated implements BidsStreamUpdated {
  const _$BidsStreamUpdated(this.bids);

  @override
  final List<JobBid> bids;

  @override
  String toString() {
    return 'JobDetailEvent.bidsStreamUpdated(bids: $bids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BidsStreamUpdated &&
            const DeepCollectionEquality().equals(other.bids, bids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bids));

  @JsonKey(ignore: true)
  @override
  $BidsStreamUpdatedCopyWith<BidsStreamUpdated> get copyWith =>
      _$BidsStreamUpdatedCopyWithImpl<BidsStreamUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Invoice> invoices) streamInvoicesUpdated,
    required TResult Function(Job job) streamJobUpdated,
    required TResult Function(List<JobBid> bids) bidsStreamUpdated,
  }) {
    return bidsStreamUpdated(bids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Invoice> invoices)? streamInvoicesUpdated,
    TResult Function(Job job)? streamJobUpdated,
    TResult Function(List<JobBid> bids)? bidsStreamUpdated,
  }) {
    return bidsStreamUpdated?.call(bids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Invoice> invoices)? streamInvoicesUpdated,
    TResult Function(Job job)? streamJobUpdated,
    TResult Function(List<JobBid> bids)? bidsStreamUpdated,
    required TResult orElse(),
  }) {
    if (bidsStreamUpdated != null) {
      return bidsStreamUpdated(bids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreamInvoicesUpdated value)
        streamInvoicesUpdated,
    required TResult Function(StreamJobUpdated value) streamJobUpdated,
    required TResult Function(BidsStreamUpdated value) bidsStreamUpdated,
  }) {
    return bidsStreamUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StreamInvoicesUpdated value)? streamInvoicesUpdated,
    TResult Function(StreamJobUpdated value)? streamJobUpdated,
    TResult Function(BidsStreamUpdated value)? bidsStreamUpdated,
  }) {
    return bidsStreamUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreamInvoicesUpdated value)? streamInvoicesUpdated,
    TResult Function(StreamJobUpdated value)? streamJobUpdated,
    TResult Function(BidsStreamUpdated value)? bidsStreamUpdated,
    required TResult orElse(),
  }) {
    if (bidsStreamUpdated != null) {
      return bidsStreamUpdated(this);
    }
    return orElse();
  }
}

abstract class BidsStreamUpdated implements JobDetailEvent {
  const factory BidsStreamUpdated(List<JobBid> bids) = _$BidsStreamUpdated;

  List<JobBid> get bids;
  @JsonKey(ignore: true)
  $BidsStreamUpdatedCopyWith<BidsStreamUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$JobDetailStateTearOff {
  const _$JobDetailStateTearOff();

  _JobDetailState call(
      {required Option<List<Invoice>> invoicesOption,
      required Option<List<JobBid>> bidsOption,
      required Job job}) {
    return _JobDetailState(
      invoicesOption: invoicesOption,
      bidsOption: bidsOption,
      job: job,
    );
  }
}

/// @nodoc
const $JobDetailState = _$JobDetailStateTearOff();

/// @nodoc
mixin _$JobDetailState {
  Option<List<Invoice>> get invoicesOption =>
      throw _privateConstructorUsedError;
  Option<List<JobBid>> get bidsOption => throw _privateConstructorUsedError;
  Job get job => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobDetailStateCopyWith<JobDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobDetailStateCopyWith<$Res> {
  factory $JobDetailStateCopyWith(
          JobDetailState value, $Res Function(JobDetailState) then) =
      _$JobDetailStateCopyWithImpl<$Res>;
  $Res call(
      {Option<List<Invoice>> invoicesOption,
      Option<List<JobBid>> bidsOption,
      Job job});

  $JobCopyWith<$Res> get job;
}

/// @nodoc
class _$JobDetailStateCopyWithImpl<$Res>
    implements $JobDetailStateCopyWith<$Res> {
  _$JobDetailStateCopyWithImpl(this._value, this._then);

  final JobDetailState _value;
  // ignore: unused_field
  final $Res Function(JobDetailState) _then;

  @override
  $Res call({
    Object? invoicesOption = freezed,
    Object? bidsOption = freezed,
    Object? job = freezed,
  }) {
    return _then(_value.copyWith(
      invoicesOption: invoicesOption == freezed
          ? _value.invoicesOption
          : invoicesOption // ignore: cast_nullable_to_non_nullable
              as Option<List<Invoice>>,
      bidsOption: bidsOption == freezed
          ? _value.bidsOption
          : bidsOption // ignore: cast_nullable_to_non_nullable
              as Option<List<JobBid>>,
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
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
abstract class _$JobDetailStateCopyWith<$Res>
    implements $JobDetailStateCopyWith<$Res> {
  factory _$JobDetailStateCopyWith(
          _JobDetailState value, $Res Function(_JobDetailState) then) =
      __$JobDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<List<Invoice>> invoicesOption,
      Option<List<JobBid>> bidsOption,
      Job job});

  @override
  $JobCopyWith<$Res> get job;
}

/// @nodoc
class __$JobDetailStateCopyWithImpl<$Res>
    extends _$JobDetailStateCopyWithImpl<$Res>
    implements _$JobDetailStateCopyWith<$Res> {
  __$JobDetailStateCopyWithImpl(
      _JobDetailState _value, $Res Function(_JobDetailState) _then)
      : super(_value, (v) => _then(v as _JobDetailState));

  @override
  _JobDetailState get _value => super._value as _JobDetailState;

  @override
  $Res call({
    Object? invoicesOption = freezed,
    Object? bidsOption = freezed,
    Object? job = freezed,
  }) {
    return _then(_JobDetailState(
      invoicesOption: invoicesOption == freezed
          ? _value.invoicesOption
          : invoicesOption // ignore: cast_nullable_to_non_nullable
              as Option<List<Invoice>>,
      bidsOption: bidsOption == freezed
          ? _value.bidsOption
          : bidsOption // ignore: cast_nullable_to_non_nullable
              as Option<List<JobBid>>,
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
    ));
  }
}

/// @nodoc

class _$_JobDetailState implements _JobDetailState {
  const _$_JobDetailState(
      {required this.invoicesOption,
      required this.bidsOption,
      required this.job});

  @override
  final Option<List<Invoice>> invoicesOption;
  @override
  final Option<List<JobBid>> bidsOption;
  @override
  final Job job;

  @override
  String toString() {
    return 'JobDetailState(invoicesOption: $invoicesOption, bidsOption: $bidsOption, job: $job)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JobDetailState &&
            const DeepCollectionEquality()
                .equals(other.invoicesOption, invoicesOption) &&
            const DeepCollectionEquality()
                .equals(other.bidsOption, bidsOption) &&
            const DeepCollectionEquality().equals(other.job, job));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(invoicesOption),
      const DeepCollectionEquality().hash(bidsOption),
      const DeepCollectionEquality().hash(job));

  @JsonKey(ignore: true)
  @override
  _$JobDetailStateCopyWith<_JobDetailState> get copyWith =>
      __$JobDetailStateCopyWithImpl<_JobDetailState>(this, _$identity);
}

abstract class _JobDetailState implements JobDetailState {
  const factory _JobDetailState(
      {required Option<List<Invoice>> invoicesOption,
      required Option<List<JobBid>> bidsOption,
      required Job job}) = _$_JobDetailState;

  @override
  Option<List<Invoice>> get invoicesOption;
  @override
  Option<List<JobBid>> get bidsOption;
  @override
  Job get job;
  @override
  @JsonKey(ignore: true)
  _$JobDetailStateCopyWith<_JobDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
