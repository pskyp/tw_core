// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tender_bid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TenderBid _$TenderBidFromJson(Map<String, dynamic> json) {
  return _TenderBid.fromJson(json);
}

/// @nodoc
class _$TenderBidTearOff {
  const _$TenderBidTearOff();

  _TenderBid call(
      {required BidIdentifier bidIdentifier,
      required TenderBidStatus tenderBidStatus,
      required TenderBidFeedback? feedback}) {
    return _TenderBid(
      bidIdentifier: bidIdentifier,
      tenderBidStatus: tenderBidStatus,
      feedback: feedback,
    );
  }

  TenderBid fromJson(Map<String, Object> json) {
    return TenderBid.fromJson(json);
  }
}

/// @nodoc
const $TenderBid = _$TenderBidTearOff();

/// @nodoc
mixin _$TenderBid {
  BidIdentifier get bidIdentifier => throw _privateConstructorUsedError;
  TenderBidStatus get tenderBidStatus => throw _privateConstructorUsedError;
  TenderBidFeedback? get feedback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenderBidCopyWith<TenderBid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenderBidCopyWith<$Res> {
  factory $TenderBidCopyWith(TenderBid value, $Res Function(TenderBid) then) =
      _$TenderBidCopyWithImpl<$Res>;
  $Res call(
      {BidIdentifier bidIdentifier,
      TenderBidStatus tenderBidStatus,
      TenderBidFeedback? feedback});

  $BidIdentifierCopyWith<$Res> get bidIdentifier;
  $TenderBidFeedbackCopyWith<$Res>? get feedback;
}

/// @nodoc
class _$TenderBidCopyWithImpl<$Res> implements $TenderBidCopyWith<$Res> {
  _$TenderBidCopyWithImpl(this._value, this._then);

  final TenderBid _value;
  // ignore: unused_field
  final $Res Function(TenderBid) _then;

  @override
  $Res call({
    Object? bidIdentifier = freezed,
    Object? tenderBidStatus = freezed,
    Object? feedback = freezed,
  }) {
    return _then(_value.copyWith(
      bidIdentifier: bidIdentifier == freezed
          ? _value.bidIdentifier
          : bidIdentifier // ignore: cast_nullable_to_non_nullable
              as BidIdentifier,
      tenderBidStatus: tenderBidStatus == freezed
          ? _value.tenderBidStatus
          : tenderBidStatus // ignore: cast_nullable_to_non_nullable
              as TenderBidStatus,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as TenderBidFeedback?,
    ));
  }

  @override
  $BidIdentifierCopyWith<$Res> get bidIdentifier {
    return $BidIdentifierCopyWith<$Res>(_value.bidIdentifier, (value) {
      return _then(_value.copyWith(bidIdentifier: value));
    });
  }

  @override
  $TenderBidFeedbackCopyWith<$Res>? get feedback {
    if (_value.feedback == null) {
      return null;
    }

    return $TenderBidFeedbackCopyWith<$Res>(_value.feedback!, (value) {
      return _then(_value.copyWith(feedback: value));
    });
  }
}

/// @nodoc
abstract class _$TenderBidCopyWith<$Res> implements $TenderBidCopyWith<$Res> {
  factory _$TenderBidCopyWith(
          _TenderBid value, $Res Function(_TenderBid) then) =
      __$TenderBidCopyWithImpl<$Res>;
  @override
  $Res call(
      {BidIdentifier bidIdentifier,
      TenderBidStatus tenderBidStatus,
      TenderBidFeedback? feedback});

  @override
  $BidIdentifierCopyWith<$Res> get bidIdentifier;
  @override
  $TenderBidFeedbackCopyWith<$Res>? get feedback;
}

/// @nodoc
class __$TenderBidCopyWithImpl<$Res> extends _$TenderBidCopyWithImpl<$Res>
    implements _$TenderBidCopyWith<$Res> {
  __$TenderBidCopyWithImpl(_TenderBid _value, $Res Function(_TenderBid) _then)
      : super(_value, (v) => _then(v as _TenderBid));

  @override
  _TenderBid get _value => super._value as _TenderBid;

  @override
  $Res call({
    Object? bidIdentifier = freezed,
    Object? tenderBidStatus = freezed,
    Object? feedback = freezed,
  }) {
    return _then(_TenderBid(
      bidIdentifier: bidIdentifier == freezed
          ? _value.bidIdentifier
          : bidIdentifier // ignore: cast_nullable_to_non_nullable
              as BidIdentifier,
      tenderBidStatus: tenderBidStatus == freezed
          ? _value.tenderBidStatus
          : tenderBidStatus // ignore: cast_nullable_to_non_nullable
              as TenderBidStatus,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as TenderBidFeedback?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TenderBid implements _TenderBid {
  const _$_TenderBid(
      {required this.bidIdentifier,
      required this.tenderBidStatus,
      required this.feedback});

  factory _$_TenderBid.fromJson(Map<String, dynamic> json) =>
      _$$_TenderBidFromJson(json);

  @override
  final BidIdentifier bidIdentifier;
  @override
  final TenderBidStatus tenderBidStatus;
  @override
  final TenderBidFeedback? feedback;

  @override
  String toString() {
    return 'TenderBid(bidIdentifier: $bidIdentifier, tenderBidStatus: $tenderBidStatus, feedback: $feedback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TenderBid &&
            (identical(other.bidIdentifier, bidIdentifier) ||
                const DeepCollectionEquality()
                    .equals(other.bidIdentifier, bidIdentifier)) &&
            (identical(other.tenderBidStatus, tenderBidStatus) ||
                const DeepCollectionEquality()
                    .equals(other.tenderBidStatus, tenderBidStatus)) &&
            (identical(other.feedback, feedback) ||
                const DeepCollectionEquality()
                    .equals(other.feedback, feedback)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bidIdentifier) ^
      const DeepCollectionEquality().hash(tenderBidStatus) ^
      const DeepCollectionEquality().hash(feedback);

  @JsonKey(ignore: true)
  @override
  _$TenderBidCopyWith<_TenderBid> get copyWith =>
      __$TenderBidCopyWithImpl<_TenderBid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TenderBidToJson(this);
  }
}

abstract class _TenderBid implements TenderBid {
  const factory _TenderBid(
      {required BidIdentifier bidIdentifier,
      required TenderBidStatus tenderBidStatus,
      required TenderBidFeedback? feedback}) = _$_TenderBid;

  factory _TenderBid.fromJson(Map<String, dynamic> json) =
      _$_TenderBid.fromJson;

  @override
  BidIdentifier get bidIdentifier => throw _privateConstructorUsedError;
  @override
  TenderBidStatus get tenderBidStatus => throw _privateConstructorUsedError;
  @override
  TenderBidFeedback? get feedback => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TenderBidCopyWith<_TenderBid> get copyWith =>
      throw _privateConstructorUsedError;
}
