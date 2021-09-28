// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'supplement_bid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SupplementBidTearOff {
  const _$SupplementBidTearOff();

  _SupplementBid call(
      {required TWUser bidder,
      required String bidId,
      required WorkIdentifier workIdentifier}) {
    return _SupplementBid(
      bidder: bidder,
      bidId: bidId,
      workIdentifier: workIdentifier,
    );
  }
}

/// @nodoc
const $SupplementBid = _$SupplementBidTearOff();

/// @nodoc
mixin _$SupplementBid {
  TWUser get bidder => throw _privateConstructorUsedError;
  String get bidId => throw _privateConstructorUsedError;
  WorkIdentifier get workIdentifier => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupplementBidCopyWith<SupplementBid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplementBidCopyWith<$Res> {
  factory $SupplementBidCopyWith(
          SupplementBid value, $Res Function(SupplementBid) then) =
      _$SupplementBidCopyWithImpl<$Res>;
  $Res call({TWUser bidder, String bidId, WorkIdentifier workIdentifier});

  $WorkIdentifierCopyWith<$Res> get workIdentifier;
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
    Object? bidder = freezed,
    Object? bidId = freezed,
    Object? workIdentifier = freezed,
  }) {
    return _then(_value.copyWith(
      bidder: bidder == freezed
          ? _value.bidder
          : bidder // ignore: cast_nullable_to_non_nullable
              as TWUser,
      bidId: bidId == freezed
          ? _value.bidId
          : bidId // ignore: cast_nullable_to_non_nullable
              as String,
      workIdentifier: workIdentifier == freezed
          ? _value.workIdentifier
          : workIdentifier // ignore: cast_nullable_to_non_nullable
              as WorkIdentifier,
    ));
  }

  @override
  $WorkIdentifierCopyWith<$Res> get workIdentifier {
    return $WorkIdentifierCopyWith<$Res>(_value.workIdentifier, (value) {
      return _then(_value.copyWith(workIdentifier: value));
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
  $Res call({TWUser bidder, String bidId, WorkIdentifier workIdentifier});

  @override
  $WorkIdentifierCopyWith<$Res> get workIdentifier;
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
    Object? bidder = freezed,
    Object? bidId = freezed,
    Object? workIdentifier = freezed,
  }) {
    return _then(_SupplementBid(
      bidder: bidder == freezed
          ? _value.bidder
          : bidder // ignore: cast_nullable_to_non_nullable
              as TWUser,
      bidId: bidId == freezed
          ? _value.bidId
          : bidId // ignore: cast_nullable_to_non_nullable
              as String,
      workIdentifier: workIdentifier == freezed
          ? _value.workIdentifier
          : workIdentifier // ignore: cast_nullable_to_non_nullable
              as WorkIdentifier,
    ));
  }
}

/// @nodoc

class _$_SupplementBid implements _SupplementBid {
  const _$_SupplementBid(
      {required this.bidder,
      required this.bidId,
      required this.workIdentifier});

  @override
  final TWUser bidder;
  @override
  final String bidId;
  @override
  final WorkIdentifier workIdentifier;

  @override
  String toString() {
    return 'SupplementBid(bidder: $bidder, bidId: $bidId, workIdentifier: $workIdentifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SupplementBid &&
            (identical(other.bidder, bidder) ||
                const DeepCollectionEquality().equals(other.bidder, bidder)) &&
            (identical(other.bidId, bidId) ||
                const DeepCollectionEquality().equals(other.bidId, bidId)) &&
            (identical(other.workIdentifier, workIdentifier) ||
                const DeepCollectionEquality()
                    .equals(other.workIdentifier, workIdentifier)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bidder) ^
      const DeepCollectionEquality().hash(bidId) ^
      const DeepCollectionEquality().hash(workIdentifier);

  @JsonKey(ignore: true)
  @override
  _$SupplementBidCopyWith<_SupplementBid> get copyWith =>
      __$SupplementBidCopyWithImpl<_SupplementBid>(this, _$identity);
}

abstract class _SupplementBid implements SupplementBid {
  const factory _SupplementBid(
      {required TWUser bidder,
      required String bidId,
      required WorkIdentifier workIdentifier}) = _$_SupplementBid;

  @override
  TWUser get bidder => throw _privateConstructorUsedError;
  @override
  String get bidId => throw _privateConstructorUsedError;
  @override
  WorkIdentifier get workIdentifier => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SupplementBidCopyWith<_SupplementBid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TenderBidTearOff {
  const _$TenderBidTearOff();

  _TenderBid call(
      {required TWUser bidder,
      required String bidId,
      required WorkIdentifier workIdentifier}) {
    return _TenderBid(
      bidder: bidder,
      bidId: bidId,
      workIdentifier: workIdentifier,
    );
  }
}

/// @nodoc
const $TenderBid = _$TenderBidTearOff();

/// @nodoc
mixin _$TenderBid {
  TWUser get bidder => throw _privateConstructorUsedError;
  String get bidId => throw _privateConstructorUsedError;
  WorkIdentifier get workIdentifier => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TenderBidCopyWith<TenderBid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenderBidCopyWith<$Res> {
  factory $TenderBidCopyWith(TenderBid value, $Res Function(TenderBid) then) =
      _$TenderBidCopyWithImpl<$Res>;
  $Res call({TWUser bidder, String bidId, WorkIdentifier workIdentifier});

  $WorkIdentifierCopyWith<$Res> get workIdentifier;
}

/// @nodoc
class _$TenderBidCopyWithImpl<$Res> implements $TenderBidCopyWith<$Res> {
  _$TenderBidCopyWithImpl(this._value, this._then);

  final TenderBid _value;
  // ignore: unused_field
  final $Res Function(TenderBid) _then;

  @override
  $Res call({
    Object? bidder = freezed,
    Object? bidId = freezed,
    Object? workIdentifier = freezed,
  }) {
    return _then(_value.copyWith(
      bidder: bidder == freezed
          ? _value.bidder
          : bidder // ignore: cast_nullable_to_non_nullable
              as TWUser,
      bidId: bidId == freezed
          ? _value.bidId
          : bidId // ignore: cast_nullable_to_non_nullable
              as String,
      workIdentifier: workIdentifier == freezed
          ? _value.workIdentifier
          : workIdentifier // ignore: cast_nullable_to_non_nullable
              as WorkIdentifier,
    ));
  }

  @override
  $WorkIdentifierCopyWith<$Res> get workIdentifier {
    return $WorkIdentifierCopyWith<$Res>(_value.workIdentifier, (value) {
      return _then(_value.copyWith(workIdentifier: value));
    });
  }
}

/// @nodoc
abstract class _$TenderBidCopyWith<$Res> implements $TenderBidCopyWith<$Res> {
  factory _$TenderBidCopyWith(
          _TenderBid value, $Res Function(_TenderBid) then) =
      __$TenderBidCopyWithImpl<$Res>;
  @override
  $Res call({TWUser bidder, String bidId, WorkIdentifier workIdentifier});

  @override
  $WorkIdentifierCopyWith<$Res> get workIdentifier;
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
    Object? bidder = freezed,
    Object? bidId = freezed,
    Object? workIdentifier = freezed,
  }) {
    return _then(_TenderBid(
      bidder: bidder == freezed
          ? _value.bidder
          : bidder // ignore: cast_nullable_to_non_nullable
              as TWUser,
      bidId: bidId == freezed
          ? _value.bidId
          : bidId // ignore: cast_nullable_to_non_nullable
              as String,
      workIdentifier: workIdentifier == freezed
          ? _value.workIdentifier
          : workIdentifier // ignore: cast_nullable_to_non_nullable
              as WorkIdentifier,
    ));
  }
}

/// @nodoc

class _$_TenderBid implements _TenderBid {
  const _$_TenderBid(
      {required this.bidder,
      required this.bidId,
      required this.workIdentifier});

  @override
  final TWUser bidder;
  @override
  final String bidId;
  @override
  final WorkIdentifier workIdentifier;

  @override
  String toString() {
    return 'TenderBid(bidder: $bidder, bidId: $bidId, workIdentifier: $workIdentifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TenderBid &&
            (identical(other.bidder, bidder) ||
                const DeepCollectionEquality().equals(other.bidder, bidder)) &&
            (identical(other.bidId, bidId) ||
                const DeepCollectionEquality().equals(other.bidId, bidId)) &&
            (identical(other.workIdentifier, workIdentifier) ||
                const DeepCollectionEquality()
                    .equals(other.workIdentifier, workIdentifier)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bidder) ^
      const DeepCollectionEquality().hash(bidId) ^
      const DeepCollectionEquality().hash(workIdentifier);

  @JsonKey(ignore: true)
  @override
  _$TenderBidCopyWith<_TenderBid> get copyWith =>
      __$TenderBidCopyWithImpl<_TenderBid>(this, _$identity);
}

abstract class _TenderBid implements TenderBid {
  const factory _TenderBid(
      {required TWUser bidder,
      required String bidId,
      required WorkIdentifier workIdentifier}) = _$_TenderBid;

  @override
  TWUser get bidder => throw _privateConstructorUsedError;
  @override
  String get bidId => throw _privateConstructorUsedError;
  @override
  WorkIdentifier get workIdentifier => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TenderBidCopyWith<_TenderBid> get copyWith =>
      throw _privateConstructorUsedError;
}
