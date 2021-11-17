// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'job_bid_feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobBidFeedback _$JobBidFeedbackFromJson(Map<String, dynamic> json) {
  return _JobBidFeedback.fromJson(json);
}

/// @nodoc
class _$JobBidFeedbackTearOff {
  const _$JobBidFeedbackTearOff();

  _JobBidFeedback call({required SubbieRating rating, required String bidId}) {
    return _JobBidFeedback(
      rating: rating,
      bidId: bidId,
    );
  }

  JobBidFeedback fromJson(Map<String, Object> json) {
    return JobBidFeedback.fromJson(json);
  }
}

/// @nodoc
const $JobBidFeedback = _$JobBidFeedbackTearOff();

/// @nodoc
mixin _$JobBidFeedback {
  SubbieRating get rating => throw _privateConstructorUsedError;
  String get bidId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobBidFeedbackCopyWith<JobBidFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobBidFeedbackCopyWith<$Res> {
  factory $JobBidFeedbackCopyWith(
          JobBidFeedback value, $Res Function(JobBidFeedback) then) =
      _$JobBidFeedbackCopyWithImpl<$Res>;
  $Res call({SubbieRating rating, String bidId});
}

/// @nodoc
class _$JobBidFeedbackCopyWithImpl<$Res>
    implements $JobBidFeedbackCopyWith<$Res> {
  _$JobBidFeedbackCopyWithImpl(this._value, this._then);

  final JobBidFeedback _value;
  // ignore: unused_field
  final $Res Function(JobBidFeedback) _then;

  @override
  $Res call({
    Object? rating = freezed,
    Object? bidId = freezed,
  }) {
    return _then(_value.copyWith(
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as SubbieRating,
      bidId: bidId == freezed
          ? _value.bidId
          : bidId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$JobBidFeedbackCopyWith<$Res>
    implements $JobBidFeedbackCopyWith<$Res> {
  factory _$JobBidFeedbackCopyWith(
          _JobBidFeedback value, $Res Function(_JobBidFeedback) then) =
      __$JobBidFeedbackCopyWithImpl<$Res>;
  @override
  $Res call({SubbieRating rating, String bidId});
}

/// @nodoc
class __$JobBidFeedbackCopyWithImpl<$Res>
    extends _$JobBidFeedbackCopyWithImpl<$Res>
    implements _$JobBidFeedbackCopyWith<$Res> {
  __$JobBidFeedbackCopyWithImpl(
      _JobBidFeedback _value, $Res Function(_JobBidFeedback) _then)
      : super(_value, (v) => _then(v as _JobBidFeedback));

  @override
  _JobBidFeedback get _value => super._value as _JobBidFeedback;

  @override
  $Res call({
    Object? rating = freezed,
    Object? bidId = freezed,
  }) {
    return _then(_JobBidFeedback(
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as SubbieRating,
      bidId: bidId == freezed
          ? _value.bidId
          : bidId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobBidFeedback implements _JobBidFeedback {
  _$_JobBidFeedback({required this.rating, required this.bidId});

  factory _$_JobBidFeedback.fromJson(Map<String, dynamic> json) =>
      _$$_JobBidFeedbackFromJson(json);

  @override
  final SubbieRating rating;
  @override
  final String bidId;

  @override
  String toString() {
    return 'JobBidFeedback(rating: $rating, bidId: $bidId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobBidFeedback &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.bidId, bidId) ||
                const DeepCollectionEquality().equals(other.bidId, bidId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(bidId);

  @JsonKey(ignore: true)
  @override
  _$JobBidFeedbackCopyWith<_JobBidFeedback> get copyWith =>
      __$JobBidFeedbackCopyWithImpl<_JobBidFeedback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobBidFeedbackToJson(this);
  }
}

abstract class _JobBidFeedback implements JobBidFeedback {
  factory _JobBidFeedback(
      {required SubbieRating rating,
      required String bidId}) = _$_JobBidFeedback;

  factory _JobBidFeedback.fromJson(Map<String, dynamic> json) =
      _$_JobBidFeedback.fromJson;

  @override
  SubbieRating get rating => throw _privateConstructorUsedError;
  @override
  String get bidId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JobBidFeedbackCopyWith<_JobBidFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}
