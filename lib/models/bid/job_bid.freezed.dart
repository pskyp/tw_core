// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'job_bid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobBid _$JobBidFromJson(Map<String, dynamic> json) {
  return _JobBid.fromJson(json);
}

/// @nodoc
class _$JobBidTearOff {
  const _$JobBidTearOff();

  _JobBid call(
      {required BidIdentifier bidIdentifier,
      required JobBidStatuses jobBidStatus,
      required JobBidFeedback? feedback,
      required bool feedbackProvidedToContractor,
      required bool feedbackSkipped}) {
    return _JobBid(
      bidIdentifier: bidIdentifier,
      jobBidStatus: jobBidStatus,
      feedback: feedback,
      feedbackProvidedToContractor: feedbackProvidedToContractor,
      feedbackSkipped: feedbackSkipped,
    );
  }

  JobBid fromJson(Map<String, Object?> json) {
    return JobBid.fromJson(json);
  }
}

/// @nodoc
const $JobBid = _$JobBidTearOff();

/// @nodoc
mixin _$JobBid {
  BidIdentifier get bidIdentifier => throw _privateConstructorUsedError;
  JobBidStatuses get jobBidStatus => throw _privateConstructorUsedError;
  JobBidFeedback? get feedback => throw _privateConstructorUsedError;
  bool get feedbackProvidedToContractor => throw _privateConstructorUsedError;
  bool get feedbackSkipped => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobBidCopyWith<JobBid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobBidCopyWith<$Res> {
  factory $JobBidCopyWith(JobBid value, $Res Function(JobBid) then) =
      _$JobBidCopyWithImpl<$Res>;
  $Res call(
      {BidIdentifier bidIdentifier,
      JobBidStatuses jobBidStatus,
      JobBidFeedback? feedback,
      bool feedbackProvidedToContractor,
      bool feedbackSkipped});

  $BidIdentifierCopyWith<$Res> get bidIdentifier;
  $JobBidFeedbackCopyWith<$Res>? get feedback;
}

/// @nodoc
class _$JobBidCopyWithImpl<$Res> implements $JobBidCopyWith<$Res> {
  _$JobBidCopyWithImpl(this._value, this._then);

  final JobBid _value;
  // ignore: unused_field
  final $Res Function(JobBid) _then;

  @override
  $Res call({
    Object? bidIdentifier = freezed,
    Object? jobBidStatus = freezed,
    Object? feedback = freezed,
    Object? feedbackProvidedToContractor = freezed,
    Object? feedbackSkipped = freezed,
  }) {
    return _then(_value.copyWith(
      bidIdentifier: bidIdentifier == freezed
          ? _value.bidIdentifier
          : bidIdentifier // ignore: cast_nullable_to_non_nullable
              as BidIdentifier,
      jobBidStatus: jobBidStatus == freezed
          ? _value.jobBidStatus
          : jobBidStatus // ignore: cast_nullable_to_non_nullable
              as JobBidStatuses,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as JobBidFeedback?,
      feedbackProvidedToContractor: feedbackProvidedToContractor == freezed
          ? _value.feedbackProvidedToContractor
          : feedbackProvidedToContractor // ignore: cast_nullable_to_non_nullable
              as bool,
      feedbackSkipped: feedbackSkipped == freezed
          ? _value.feedbackSkipped
          : feedbackSkipped // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $BidIdentifierCopyWith<$Res> get bidIdentifier {
    return $BidIdentifierCopyWith<$Res>(_value.bidIdentifier, (value) {
      return _then(_value.copyWith(bidIdentifier: value));
    });
  }

  @override
  $JobBidFeedbackCopyWith<$Res>? get feedback {
    if (_value.feedback == null) {
      return null;
    }

    return $JobBidFeedbackCopyWith<$Res>(_value.feedback!, (value) {
      return _then(_value.copyWith(feedback: value));
    });
  }
}

/// @nodoc
abstract class _$JobBidCopyWith<$Res> implements $JobBidCopyWith<$Res> {
  factory _$JobBidCopyWith(_JobBid value, $Res Function(_JobBid) then) =
      __$JobBidCopyWithImpl<$Res>;
  @override
  $Res call(
      {BidIdentifier bidIdentifier,
      JobBidStatuses jobBidStatus,
      JobBidFeedback? feedback,
      bool feedbackProvidedToContractor,
      bool feedbackSkipped});

  @override
  $BidIdentifierCopyWith<$Res> get bidIdentifier;
  @override
  $JobBidFeedbackCopyWith<$Res>? get feedback;
}

/// @nodoc
class __$JobBidCopyWithImpl<$Res> extends _$JobBidCopyWithImpl<$Res>
    implements _$JobBidCopyWith<$Res> {
  __$JobBidCopyWithImpl(_JobBid _value, $Res Function(_JobBid) _then)
      : super(_value, (v) => _then(v as _JobBid));

  @override
  _JobBid get _value => super._value as _JobBid;

  @override
  $Res call({
    Object? bidIdentifier = freezed,
    Object? jobBidStatus = freezed,
    Object? feedback = freezed,
    Object? feedbackProvidedToContractor = freezed,
    Object? feedbackSkipped = freezed,
  }) {
    return _then(_JobBid(
      bidIdentifier: bidIdentifier == freezed
          ? _value.bidIdentifier
          : bidIdentifier // ignore: cast_nullable_to_non_nullable
              as BidIdentifier,
      jobBidStatus: jobBidStatus == freezed
          ? _value.jobBidStatus
          : jobBidStatus // ignore: cast_nullable_to_non_nullable
              as JobBidStatuses,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as JobBidFeedback?,
      feedbackProvidedToContractor: feedbackProvidedToContractor == freezed
          ? _value.feedbackProvidedToContractor
          : feedbackProvidedToContractor // ignore: cast_nullable_to_non_nullable
              as bool,
      feedbackSkipped: feedbackSkipped == freezed
          ? _value.feedbackSkipped
          : feedbackSkipped // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobBid implements _JobBid {
  const _$_JobBid(
      {required this.bidIdentifier,
      required this.jobBidStatus,
      required this.feedback,
      required this.feedbackProvidedToContractor,
      required this.feedbackSkipped});

  factory _$_JobBid.fromJson(Map<String, dynamic> json) =>
      _$$_JobBidFromJson(json);

  @override
  final BidIdentifier bidIdentifier;
  @override
  final JobBidStatuses jobBidStatus;
  @override
  final JobBidFeedback? feedback;
  @override
  final bool feedbackProvidedToContractor;
  @override
  final bool feedbackSkipped;

  @override
  String toString() {
    return 'JobBid(bidIdentifier: $bidIdentifier, jobBidStatus: $jobBidStatus, feedback: $feedback, feedbackProvidedToContractor: $feedbackProvidedToContractor, feedbackSkipped: $feedbackSkipped)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JobBid &&
            const DeepCollectionEquality()
                .equals(other.bidIdentifier, bidIdentifier) &&
            const DeepCollectionEquality()
                .equals(other.jobBidStatus, jobBidStatus) &&
            const DeepCollectionEquality().equals(other.feedback, feedback) &&
            const DeepCollectionEquality().equals(
                other.feedbackProvidedToContractor,
                feedbackProvidedToContractor) &&
            const DeepCollectionEquality()
                .equals(other.feedbackSkipped, feedbackSkipped));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bidIdentifier),
      const DeepCollectionEquality().hash(jobBidStatus),
      const DeepCollectionEquality().hash(feedback),
      const DeepCollectionEquality().hash(feedbackProvidedToContractor),
      const DeepCollectionEquality().hash(feedbackSkipped));

  @JsonKey(ignore: true)
  @override
  _$JobBidCopyWith<_JobBid> get copyWith =>
      __$JobBidCopyWithImpl<_JobBid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobBidToJson(this);
  }
}

abstract class _JobBid implements JobBid {
  const factory _JobBid(
      {required BidIdentifier bidIdentifier,
      required JobBidStatuses jobBidStatus,
      required JobBidFeedback? feedback,
      required bool feedbackProvidedToContractor,
      required bool feedbackSkipped}) = _$_JobBid;

  factory _JobBid.fromJson(Map<String, dynamic> json) = _$_JobBid.fromJson;

  @override
  BidIdentifier get bidIdentifier;
  @override
  JobBidStatuses get jobBidStatus;
  @override
  JobBidFeedback? get feedback;
  @override
  bool get feedbackProvidedToContractor;
  @override
  bool get feedbackSkipped;
  @override
  @JsonKey(ignore: true)
  _$JobBidCopyWith<_JobBid> get copyWith => throw _privateConstructorUsedError;
}
