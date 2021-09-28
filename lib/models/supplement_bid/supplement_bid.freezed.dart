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
}

/// @nodoc
abstract class _$SupplementBidCopyWith<$Res>
    implements $SupplementBidCopyWith<$Res> {
  factory _$SupplementBidCopyWith(
          _SupplementBid value, $Res Function(_SupplementBid) then) =
      __$SupplementBidCopyWithImpl<$Res>;
  @override
  $Res call({TWUser bidder, String bidId, WorkIdentifier workIdentifier});
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
}

/// @nodoc
abstract class _$TenderBidCopyWith<$Res> implements $TenderBidCopyWith<$Res> {
  factory _$TenderBidCopyWith(
          _TenderBid value, $Res Function(_TenderBid) then) =
      __$TenderBidCopyWithImpl<$Res>;
  @override
  $Res call({TWUser bidder, String bidId, WorkIdentifier workIdentifier});
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

/// @nodoc
class _$TSupplementTearOff {
  const _$TSupplementTearOff();

  _TSupplement call(
      {required DateTime createdOn, required WorkIdentifier identifier}) {
    return _TSupplement(
      createdOn: createdOn,
      identifier: identifier,
    );
  }
}

/// @nodoc
const $TSupplement = _$TSupplementTearOff();

/// @nodoc
mixin _$TSupplement {
  DateTime get createdOn => throw _privateConstructorUsedError;
  WorkIdentifier get identifier => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TSupplementCopyWith<TSupplement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TSupplementCopyWith<$Res> {
  factory $TSupplementCopyWith(
          TSupplement value, $Res Function(TSupplement) then) =
      _$TSupplementCopyWithImpl<$Res>;
  $Res call({DateTime createdOn, WorkIdentifier identifier});
}

/// @nodoc
class _$TSupplementCopyWithImpl<$Res> implements $TSupplementCopyWith<$Res> {
  _$TSupplementCopyWithImpl(this._value, this._then);

  final TSupplement _value;
  // ignore: unused_field
  final $Res Function(TSupplement) _then;

  @override
  $Res call({
    Object? createdOn = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      createdOn: createdOn == freezed
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as WorkIdentifier,
    ));
  }
}

/// @nodoc
abstract class _$TSupplementCopyWith<$Res>
    implements $TSupplementCopyWith<$Res> {
  factory _$TSupplementCopyWith(
          _TSupplement value, $Res Function(_TSupplement) then) =
      __$TSupplementCopyWithImpl<$Res>;
  @override
  $Res call({DateTime createdOn, WorkIdentifier identifier});
}

/// @nodoc
class __$TSupplementCopyWithImpl<$Res> extends _$TSupplementCopyWithImpl<$Res>
    implements _$TSupplementCopyWith<$Res> {
  __$TSupplementCopyWithImpl(
      _TSupplement _value, $Res Function(_TSupplement) _then)
      : super(_value, (v) => _then(v as _TSupplement));

  @override
  _TSupplement get _value => super._value as _TSupplement;

  @override
  $Res call({
    Object? createdOn = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_TSupplement(
      createdOn: createdOn == freezed
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as WorkIdentifier,
    ));
  }
}

/// @nodoc

class _$_TSupplement implements _TSupplement {
  const _$_TSupplement({required this.createdOn, required this.identifier});

  @override
  final DateTime createdOn;
  @override
  final WorkIdentifier identifier;

  @override
  String toString() {
    return 'TSupplement(createdOn: $createdOn, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TSupplement &&
            (identical(other.createdOn, createdOn) ||
                const DeepCollectionEquality()
                    .equals(other.createdOn, createdOn)) &&
            (identical(other.identifier, identifier) ||
                const DeepCollectionEquality()
                    .equals(other.identifier, identifier)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createdOn) ^
      const DeepCollectionEquality().hash(identifier);

  @JsonKey(ignore: true)
  @override
  _$TSupplementCopyWith<_TSupplement> get copyWith =>
      __$TSupplementCopyWithImpl<_TSupplement>(this, _$identity);
}

abstract class _TSupplement implements TSupplement {
  const factory _TSupplement(
      {required DateTime createdOn,
      required WorkIdentifier identifier}) = _$_TSupplement;

  @override
  DateTime get createdOn => throw _privateConstructorUsedError;
  @override
  WorkIdentifier get identifier => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TSupplementCopyWith<_TSupplement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TTenderTearOff {
  const _$TTenderTearOff();

  _TTender call(
      {required DateTime createdOn, required WorkIdentifier identifier}) {
    return _TTender(
      createdOn: createdOn,
      identifier: identifier,
    );
  }
}

/// @nodoc
const $TTender = _$TTenderTearOff();

/// @nodoc
mixin _$TTender {
  DateTime get createdOn => throw _privateConstructorUsedError;
  WorkIdentifier get identifier => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TTenderCopyWith<TTender> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TTenderCopyWith<$Res> {
  factory $TTenderCopyWith(TTender value, $Res Function(TTender) then) =
      _$TTenderCopyWithImpl<$Res>;
  $Res call({DateTime createdOn, WorkIdentifier identifier});
}

/// @nodoc
class _$TTenderCopyWithImpl<$Res> implements $TTenderCopyWith<$Res> {
  _$TTenderCopyWithImpl(this._value, this._then);

  final TTender _value;
  // ignore: unused_field
  final $Res Function(TTender) _then;

  @override
  $Res call({
    Object? createdOn = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      createdOn: createdOn == freezed
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as WorkIdentifier,
    ));
  }
}

/// @nodoc
abstract class _$TTenderCopyWith<$Res> implements $TTenderCopyWith<$Res> {
  factory _$TTenderCopyWith(_TTender value, $Res Function(_TTender) then) =
      __$TTenderCopyWithImpl<$Res>;
  @override
  $Res call({DateTime createdOn, WorkIdentifier identifier});
}

/// @nodoc
class __$TTenderCopyWithImpl<$Res> extends _$TTenderCopyWithImpl<$Res>
    implements _$TTenderCopyWith<$Res> {
  __$TTenderCopyWithImpl(_TTender _value, $Res Function(_TTender) _then)
      : super(_value, (v) => _then(v as _TTender));

  @override
  _TTender get _value => super._value as _TTender;

  @override
  $Res call({
    Object? createdOn = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_TTender(
      createdOn: createdOn == freezed
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as WorkIdentifier,
    ));
  }
}

/// @nodoc

class _$_TTender implements _TTender {
  const _$_TTender({required this.createdOn, required this.identifier});

  @override
  final DateTime createdOn;
  @override
  final WorkIdentifier identifier;

  @override
  String toString() {
    return 'TTender(createdOn: $createdOn, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TTender &&
            (identical(other.createdOn, createdOn) ||
                const DeepCollectionEquality()
                    .equals(other.createdOn, createdOn)) &&
            (identical(other.identifier, identifier) ||
                const DeepCollectionEquality()
                    .equals(other.identifier, identifier)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createdOn) ^
      const DeepCollectionEquality().hash(identifier);

  @JsonKey(ignore: true)
  @override
  _$TTenderCopyWith<_TTender> get copyWith =>
      __$TTenderCopyWithImpl<_TTender>(this, _$identity);
}

abstract class _TTender implements TTender {
  const factory _TTender(
      {required DateTime createdOn,
      required WorkIdentifier identifier}) = _$_TTender;

  @override
  DateTime get createdOn => throw _privateConstructorUsedError;
  @override
  WorkIdentifier get identifier => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TTenderCopyWith<_TTender> get copyWith =>
      throw _privateConstructorUsedError;
}
