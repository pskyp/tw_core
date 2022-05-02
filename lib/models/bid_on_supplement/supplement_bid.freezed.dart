// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'supplement_bid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupplementBid _$SupplementBidFromJson(Map<String, dynamic> json) {
  return _SupplementBid.fromJson(json);
}

/// @nodoc
class _$SupplementBidTearOff {
  const _$SupplementBidTearOff();

  _SupplementBid call(
      {required BidIdentifier bidIdentifier,
      required SupplementBidStatus supplementBidStatus,
      required TenderBidFeedback? feedback}) {
    return _SupplementBid(
      bidIdentifier: bidIdentifier,
      supplementBidStatus: supplementBidStatus,
      feedback: feedback,
    );
  }

  SupplementBid fromJson(Map<String, Object?> json) {
    return SupplementBid.fromJson(json);
  }
}

/// @nodoc
const $SupplementBid = _$SupplementBidTearOff();

/// @nodoc
mixin _$SupplementBid {
  BidIdentifier get bidIdentifier => throw _privateConstructorUsedError;
  SupplementBidStatus get supplementBidStatus =>
      throw _privateConstructorUsedError;
  TenderBidFeedback? get feedback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplementBidCopyWith<SupplementBid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplementBidCopyWith<$Res> {
  factory $SupplementBidCopyWith(
          SupplementBid value, $Res Function(SupplementBid) then) =
      _$SupplementBidCopyWithImpl<$Res>;
  $Res call(
      {BidIdentifier bidIdentifier,
      SupplementBidStatus supplementBidStatus,
      TenderBidFeedback? feedback});

  $BidIdentifierCopyWith<$Res> get bidIdentifier;
  $TenderBidFeedbackCopyWith<$Res>? get feedback;
}

/// @nodoc
class _$SupplementBidCopyWithImpl<$Res>
    implements $SupplementBidCopyWith<$Res> {
  _$SupplementBidCopyWithImpl(this._value, this._then);

  final SupplementBid _value;
  // ignore: unused_field
  final $Res Function(SupplementBid) _then;

  @override
  $Res call({
    Object? bidIdentifier = freezed,
    Object? supplementBidStatus = freezed,
    Object? feedback = freezed,
  }) {
    return _then(_value.copyWith(
      bidIdentifier: bidIdentifier == freezed
          ? _value.bidIdentifier
          : bidIdentifier // ignore: cast_nullable_to_non_nullable
              as BidIdentifier,
      supplementBidStatus: supplementBidStatus == freezed
          ? _value.supplementBidStatus
          : supplementBidStatus // ignore: cast_nullable_to_non_nullable
              as SupplementBidStatus,
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
abstract class _$SupplementBidCopyWith<$Res>
    implements $SupplementBidCopyWith<$Res> {
  factory _$SupplementBidCopyWith(
          _SupplementBid value, $Res Function(_SupplementBid) then) =
      __$SupplementBidCopyWithImpl<$Res>;
  @override
  $Res call(
      {BidIdentifier bidIdentifier,
      SupplementBidStatus supplementBidStatus,
      TenderBidFeedback? feedback});

  @override
  $BidIdentifierCopyWith<$Res> get bidIdentifier;
  @override
  $TenderBidFeedbackCopyWith<$Res>? get feedback;
}

/// @nodoc
class __$SupplementBidCopyWithImpl<$Res>
    extends _$SupplementBidCopyWithImpl<$Res>
    implements _$SupplementBidCopyWith<$Res> {
  __$SupplementBidCopyWithImpl(
      _SupplementBid _value, $Res Function(_SupplementBid) _then)
      : super(_value, (v) => _then(v as _SupplementBid));

  @override
  _SupplementBid get _value => super._value as _SupplementBid;

  @override
  $Res call({
    Object? bidIdentifier = freezed,
    Object? supplementBidStatus = freezed,
    Object? feedback = freezed,
  }) {
    return _then(_SupplementBid(
      bidIdentifier: bidIdentifier == freezed
          ? _value.bidIdentifier
          : bidIdentifier // ignore: cast_nullable_to_non_nullable
              as BidIdentifier,
      supplementBidStatus: supplementBidStatus == freezed
          ? _value.supplementBidStatus
          : supplementBidStatus // ignore: cast_nullable_to_non_nullable
              as SupplementBidStatus,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as TenderBidFeedback?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupplementBid implements _SupplementBid {
  const _$_SupplementBid(
      {required this.bidIdentifier,
      required this.supplementBidStatus,
      required this.feedback});

  factory _$_SupplementBid.fromJson(Map<String, dynamic> json) =>
      _$$_SupplementBidFromJson(json);

  @override
  final BidIdentifier bidIdentifier;
  @override
  final SupplementBidStatus supplementBidStatus;
  @override
  final TenderBidFeedback? feedback;

  @override
  String toString() {
    return 'SupplementBid(bidIdentifier: $bidIdentifier, supplementBidStatus: $supplementBidStatus, feedback: $feedback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SupplementBid &&
            const DeepCollectionEquality()
                .equals(other.bidIdentifier, bidIdentifier) &&
            const DeepCollectionEquality()
                .equals(other.supplementBidStatus, supplementBidStatus) &&
            const DeepCollectionEquality().equals(other.feedback, feedback));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bidIdentifier),
      const DeepCollectionEquality().hash(supplementBidStatus),
      const DeepCollectionEquality().hash(feedback));

  @JsonKey(ignore: true)
  @override
  _$SupplementBidCopyWith<_SupplementBid> get copyWith =>
      __$SupplementBidCopyWithImpl<_SupplementBid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupplementBidToJson(this);
  }
}

abstract class _SupplementBid implements SupplementBid {
  const factory _SupplementBid(
      {required BidIdentifier bidIdentifier,
      required SupplementBidStatus supplementBidStatus,
      required TenderBidFeedback? feedback}) = _$_SupplementBid;

  factory _SupplementBid.fromJson(Map<String, dynamic> json) =
      _$_SupplementBid.fromJson;

  @override
  BidIdentifier get bidIdentifier;
  @override
  SupplementBidStatus get supplementBidStatus;
  @override
  TenderBidFeedback? get feedback;
  @override
  @JsonKey(ignore: true)
  _$SupplementBidCopyWith<_SupplementBid> get copyWith =>
      throw _privateConstructorUsedError;
}
