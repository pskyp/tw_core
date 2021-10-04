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
      required double? rating,
      required JobBidStatuses jobBidStatus}) {
    return _JobBid(
      bidIdentifier: bidIdentifier,
      rating: rating,
      jobBidStatus: jobBidStatus,
    );
  }

  JobBid fromJson(Map<String, Object> json) {
    return JobBid.fromJson(json);
  }
}

/// @nodoc
const $JobBid = _$JobBidTearOff();

/// @nodoc
mixin _$JobBid {
  BidIdentifier get bidIdentifier => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  JobBidStatuses get jobBidStatus => throw _privateConstructorUsedError;

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
      double? rating,
      JobBidStatuses jobBidStatus});

  $BidIdentifierCopyWith<$Res> get bidIdentifier;
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
    Object? rating = freezed,
    Object? jobBidStatus = freezed,
  }) {
    return _then(_value.copyWith(
      bidIdentifier: bidIdentifier == freezed
          ? _value.bidIdentifier
          : bidIdentifier // ignore: cast_nullable_to_non_nullable
              as BidIdentifier,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      jobBidStatus: jobBidStatus == freezed
          ? _value.jobBidStatus
          : jobBidStatus // ignore: cast_nullable_to_non_nullable
              as JobBidStatuses,
    ));
  }

  @override
  $BidIdentifierCopyWith<$Res> get bidIdentifier {
    return $BidIdentifierCopyWith<$Res>(_value.bidIdentifier, (value) {
      return _then(_value.copyWith(bidIdentifier: value));
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
      double? rating,
      JobBidStatuses jobBidStatus});

  @override
  $BidIdentifierCopyWith<$Res> get bidIdentifier;
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
    Object? rating = freezed,
    Object? jobBidStatus = freezed,
  }) {
    return _then(_JobBid(
      bidIdentifier: bidIdentifier == freezed
          ? _value.bidIdentifier
          : bidIdentifier // ignore: cast_nullable_to_non_nullable
              as BidIdentifier,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      jobBidStatus: jobBidStatus == freezed
          ? _value.jobBidStatus
          : jobBidStatus // ignore: cast_nullable_to_non_nullable
              as JobBidStatuses,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobBid implements _JobBid {
  const _$_JobBid(
      {required this.bidIdentifier,
      required this.rating,
      required this.jobBidStatus});

  factory _$_JobBid.fromJson(Map<String, dynamic> json) =>
      _$$_JobBidFromJson(json);

  @override
  final BidIdentifier bidIdentifier;
  @override
  final double? rating;
  @override
  final JobBidStatuses jobBidStatus;

  @override
  String toString() {
    return 'JobBid(bidIdentifier: $bidIdentifier, rating: $rating, jobBidStatus: $jobBidStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobBid &&
            (identical(other.bidIdentifier, bidIdentifier) ||
                const DeepCollectionEquality()
                    .equals(other.bidIdentifier, bidIdentifier)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.jobBidStatus, jobBidStatus) ||
                const DeepCollectionEquality()
                    .equals(other.jobBidStatus, jobBidStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bidIdentifier) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(jobBidStatus);

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
      required double? rating,
      required JobBidStatuses jobBidStatus}) = _$_JobBid;

  factory _JobBid.fromJson(Map<String, dynamic> json) = _$_JobBid.fromJson;

  @override
  BidIdentifier get bidIdentifier => throw _privateConstructorUsedError;
  @override
  double? get rating => throw _privateConstructorUsedError;
  @override
  JobBidStatuses get jobBidStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JobBidCopyWith<_JobBid> get copyWith => throw _privateConstructorUsedError;
}
