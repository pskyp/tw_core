// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tenders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TendersEventTearOff {
  const _$TendersEventTearOff();

  TendersStreamUpdated tendersStreamUpdated(List<Tender> tenders) {
    return TendersStreamUpdated(
      tenders,
    );
  }

  TenderBidsStreamUpdated tenderBidsStreamUpdated(List<TenderBid> tenderBids) {
    return TenderBidsStreamUpdated(
      tenderBids,
    );
  }

  SupplementsStreamUpdated supplementsStreamUpdated(
      List<Supplement> supplements) {
    return SupplementsStreamUpdated(
      supplements,
    );
  }
}

/// @nodoc
const $TendersEvent = _$TendersEventTearOff();

/// @nodoc
mixin _$TendersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tender> tenders) tendersStreamUpdated,
    required TResult Function(List<TenderBid> tenderBids)
        tenderBidsStreamUpdated,
    required TResult Function(List<Supplement> supplements)
        supplementsStreamUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tender> tenders)? tendersStreamUpdated,
    TResult Function(List<TenderBid> tenderBids)? tenderBidsStreamUpdated,
    TResult Function(List<Supplement> supplements)? supplementsStreamUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TendersStreamUpdated value) tendersStreamUpdated,
    required TResult Function(TenderBidsStreamUpdated value)
        tenderBidsStreamUpdated,
    required TResult Function(SupplementsStreamUpdated value)
        supplementsStreamUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TendersStreamUpdated value)? tendersStreamUpdated,
    TResult Function(TenderBidsStreamUpdated value)? tenderBidsStreamUpdated,
    TResult Function(SupplementsStreamUpdated value)? supplementsStreamUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TendersEventCopyWith<$Res> {
  factory $TendersEventCopyWith(
          TendersEvent value, $Res Function(TendersEvent) then) =
      _$TendersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TendersEventCopyWithImpl<$Res> implements $TendersEventCopyWith<$Res> {
  _$TendersEventCopyWithImpl(this._value, this._then);

  final TendersEvent _value;
  // ignore: unused_field
  final $Res Function(TendersEvent) _then;
}

/// @nodoc
abstract class $TendersStreamUpdatedCopyWith<$Res> {
  factory $TendersStreamUpdatedCopyWith(TendersStreamUpdated value,
          $Res Function(TendersStreamUpdated) then) =
      _$TendersStreamUpdatedCopyWithImpl<$Res>;
  $Res call({List<Tender> tenders});
}

/// @nodoc
class _$TendersStreamUpdatedCopyWithImpl<$Res>
    extends _$TendersEventCopyWithImpl<$Res>
    implements $TendersStreamUpdatedCopyWith<$Res> {
  _$TendersStreamUpdatedCopyWithImpl(
      TendersStreamUpdated _value, $Res Function(TendersStreamUpdated) _then)
      : super(_value, (v) => _then(v as TendersStreamUpdated));

  @override
  TendersStreamUpdated get _value => super._value as TendersStreamUpdated;

  @override
  $Res call({
    Object? tenders = freezed,
  }) {
    return _then(TendersStreamUpdated(
      tenders == freezed
          ? _value.tenders
          : tenders // ignore: cast_nullable_to_non_nullable
              as List<Tender>,
    ));
  }
}

/// @nodoc

class _$TendersStreamUpdated implements TendersStreamUpdated {
  const _$TendersStreamUpdated(this.tenders);

  @override
  final List<Tender> tenders;

  @override
  String toString() {
    return 'TendersEvent.tendersStreamUpdated(tenders: $tenders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TendersStreamUpdated &&
            (identical(other.tenders, tenders) ||
                const DeepCollectionEquality().equals(other.tenders, tenders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tenders);

  @JsonKey(ignore: true)
  @override
  $TendersStreamUpdatedCopyWith<TendersStreamUpdated> get copyWith =>
      _$TendersStreamUpdatedCopyWithImpl<TendersStreamUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tender> tenders) tendersStreamUpdated,
    required TResult Function(List<TenderBid> tenderBids)
        tenderBidsStreamUpdated,
    required TResult Function(List<Supplement> supplements)
        supplementsStreamUpdated,
  }) {
    return tendersStreamUpdated(tenders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tender> tenders)? tendersStreamUpdated,
    TResult Function(List<TenderBid> tenderBids)? tenderBidsStreamUpdated,
    TResult Function(List<Supplement> supplements)? supplementsStreamUpdated,
    required TResult orElse(),
  }) {
    if (tendersStreamUpdated != null) {
      return tendersStreamUpdated(tenders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TendersStreamUpdated value) tendersStreamUpdated,
    required TResult Function(TenderBidsStreamUpdated value)
        tenderBidsStreamUpdated,
    required TResult Function(SupplementsStreamUpdated value)
        supplementsStreamUpdated,
  }) {
    return tendersStreamUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TendersStreamUpdated value)? tendersStreamUpdated,
    TResult Function(TenderBidsStreamUpdated value)? tenderBidsStreamUpdated,
    TResult Function(SupplementsStreamUpdated value)? supplementsStreamUpdated,
    required TResult orElse(),
  }) {
    if (tendersStreamUpdated != null) {
      return tendersStreamUpdated(this);
    }
    return orElse();
  }
}

abstract class TendersStreamUpdated implements TendersEvent {
  const factory TendersStreamUpdated(List<Tender> tenders) =
      _$TendersStreamUpdated;

  List<Tender> get tenders => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TendersStreamUpdatedCopyWith<TendersStreamUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenderBidsStreamUpdatedCopyWith<$Res> {
  factory $TenderBidsStreamUpdatedCopyWith(TenderBidsStreamUpdated value,
          $Res Function(TenderBidsStreamUpdated) then) =
      _$TenderBidsStreamUpdatedCopyWithImpl<$Res>;
  $Res call({List<TenderBid> tenderBids});
}

/// @nodoc
class _$TenderBidsStreamUpdatedCopyWithImpl<$Res>
    extends _$TendersEventCopyWithImpl<$Res>
    implements $TenderBidsStreamUpdatedCopyWith<$Res> {
  _$TenderBidsStreamUpdatedCopyWithImpl(TenderBidsStreamUpdated _value,
      $Res Function(TenderBidsStreamUpdated) _then)
      : super(_value, (v) => _then(v as TenderBidsStreamUpdated));

  @override
  TenderBidsStreamUpdated get _value => super._value as TenderBidsStreamUpdated;

  @override
  $Res call({
    Object? tenderBids = freezed,
  }) {
    return _then(TenderBidsStreamUpdated(
      tenderBids == freezed
          ? _value.tenderBids
          : tenderBids // ignore: cast_nullable_to_non_nullable
              as List<TenderBid>,
    ));
  }
}

/// @nodoc

class _$TenderBidsStreamUpdated implements TenderBidsStreamUpdated {
  const _$TenderBidsStreamUpdated(this.tenderBids);

  @override
  final List<TenderBid> tenderBids;

  @override
  String toString() {
    return 'TendersEvent.tenderBidsStreamUpdated(tenderBids: $tenderBids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TenderBidsStreamUpdated &&
            (identical(other.tenderBids, tenderBids) ||
                const DeepCollectionEquality()
                    .equals(other.tenderBids, tenderBids)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tenderBids);

  @JsonKey(ignore: true)
  @override
  $TenderBidsStreamUpdatedCopyWith<TenderBidsStreamUpdated> get copyWith =>
      _$TenderBidsStreamUpdatedCopyWithImpl<TenderBidsStreamUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tender> tenders) tendersStreamUpdated,
    required TResult Function(List<TenderBid> tenderBids)
        tenderBidsStreamUpdated,
    required TResult Function(List<Supplement> supplements)
        supplementsStreamUpdated,
  }) {
    return tenderBidsStreamUpdated(tenderBids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tender> tenders)? tendersStreamUpdated,
    TResult Function(List<TenderBid> tenderBids)? tenderBidsStreamUpdated,
    TResult Function(List<Supplement> supplements)? supplementsStreamUpdated,
    required TResult orElse(),
  }) {
    if (tenderBidsStreamUpdated != null) {
      return tenderBidsStreamUpdated(tenderBids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TendersStreamUpdated value) tendersStreamUpdated,
    required TResult Function(TenderBidsStreamUpdated value)
        tenderBidsStreamUpdated,
    required TResult Function(SupplementsStreamUpdated value)
        supplementsStreamUpdated,
  }) {
    return tenderBidsStreamUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TendersStreamUpdated value)? tendersStreamUpdated,
    TResult Function(TenderBidsStreamUpdated value)? tenderBidsStreamUpdated,
    TResult Function(SupplementsStreamUpdated value)? supplementsStreamUpdated,
    required TResult orElse(),
  }) {
    if (tenderBidsStreamUpdated != null) {
      return tenderBidsStreamUpdated(this);
    }
    return orElse();
  }
}

abstract class TenderBidsStreamUpdated implements TendersEvent {
  const factory TenderBidsStreamUpdated(List<TenderBid> tenderBids) =
      _$TenderBidsStreamUpdated;

  List<TenderBid> get tenderBids => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenderBidsStreamUpdatedCopyWith<TenderBidsStreamUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplementsStreamUpdatedCopyWith<$Res> {
  factory $SupplementsStreamUpdatedCopyWith(SupplementsStreamUpdated value,
          $Res Function(SupplementsStreamUpdated) then) =
      _$SupplementsStreamUpdatedCopyWithImpl<$Res>;
  $Res call({List<Supplement> supplements});
}

/// @nodoc
class _$SupplementsStreamUpdatedCopyWithImpl<$Res>
    extends _$TendersEventCopyWithImpl<$Res>
    implements $SupplementsStreamUpdatedCopyWith<$Res> {
  _$SupplementsStreamUpdatedCopyWithImpl(SupplementsStreamUpdated _value,
      $Res Function(SupplementsStreamUpdated) _then)
      : super(_value, (v) => _then(v as SupplementsStreamUpdated));

  @override
  SupplementsStreamUpdated get _value =>
      super._value as SupplementsStreamUpdated;

  @override
  $Res call({
    Object? supplements = freezed,
  }) {
    return _then(SupplementsStreamUpdated(
      supplements == freezed
          ? _value.supplements
          : supplements // ignore: cast_nullable_to_non_nullable
              as List<Supplement>,
    ));
  }
}

/// @nodoc

class _$SupplementsStreamUpdated implements SupplementsStreamUpdated {
  const _$SupplementsStreamUpdated(this.supplements);

  @override
  final List<Supplement> supplements;

  @override
  String toString() {
    return 'TendersEvent.supplementsStreamUpdated(supplements: $supplements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SupplementsStreamUpdated &&
            (identical(other.supplements, supplements) ||
                const DeepCollectionEquality()
                    .equals(other.supplements, supplements)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(supplements);

  @JsonKey(ignore: true)
  @override
  $SupplementsStreamUpdatedCopyWith<SupplementsStreamUpdated> get copyWith =>
      _$SupplementsStreamUpdatedCopyWithImpl<SupplementsStreamUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tender> tenders) tendersStreamUpdated,
    required TResult Function(List<TenderBid> tenderBids)
        tenderBidsStreamUpdated,
    required TResult Function(List<Supplement> supplements)
        supplementsStreamUpdated,
  }) {
    return supplementsStreamUpdated(supplements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tender> tenders)? tendersStreamUpdated,
    TResult Function(List<TenderBid> tenderBids)? tenderBidsStreamUpdated,
    TResult Function(List<Supplement> supplements)? supplementsStreamUpdated,
    required TResult orElse(),
  }) {
    if (supplementsStreamUpdated != null) {
      return supplementsStreamUpdated(supplements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TendersStreamUpdated value) tendersStreamUpdated,
    required TResult Function(TenderBidsStreamUpdated value)
        tenderBidsStreamUpdated,
    required TResult Function(SupplementsStreamUpdated value)
        supplementsStreamUpdated,
  }) {
    return supplementsStreamUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TendersStreamUpdated value)? tendersStreamUpdated,
    TResult Function(TenderBidsStreamUpdated value)? tenderBidsStreamUpdated,
    TResult Function(SupplementsStreamUpdated value)? supplementsStreamUpdated,
    required TResult orElse(),
  }) {
    if (supplementsStreamUpdated != null) {
      return supplementsStreamUpdated(this);
    }
    return orElse();
  }
}

abstract class SupplementsStreamUpdated implements TendersEvent {
  const factory SupplementsStreamUpdated(List<Supplement> supplements) =
      _$SupplementsStreamUpdated;

  List<Supplement> get supplements => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplementsStreamUpdatedCopyWith<SupplementsStreamUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TendersStateTearOff {
  const _$TendersStateTearOff();

  _TendersState call(
      {required Option<List<Tender>> allTenders,
      required Option<List<TenderBid>> allTenderBids,
      required Option<List<Supplement>> allSupplements}) {
    return _TendersState(
      allTenders: allTenders,
      allTenderBids: allTenderBids,
      allSupplements: allSupplements,
    );
  }
}

/// @nodoc
const $TendersState = _$TendersStateTearOff();

/// @nodoc
mixin _$TendersState {
  Option<List<Tender>> get allTenders => throw _privateConstructorUsedError;
  Option<List<TenderBid>> get allTenderBids =>
      throw _privateConstructorUsedError;
  Option<List<Supplement>> get allSupplements =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TendersStateCopyWith<TendersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TendersStateCopyWith<$Res> {
  factory $TendersStateCopyWith(
          TendersState value, $Res Function(TendersState) then) =
      _$TendersStateCopyWithImpl<$Res>;
  $Res call(
      {Option<List<Tender>> allTenders,
      Option<List<TenderBid>> allTenderBids,
      Option<List<Supplement>> allSupplements});
}

/// @nodoc
class _$TendersStateCopyWithImpl<$Res> implements $TendersStateCopyWith<$Res> {
  _$TendersStateCopyWithImpl(this._value, this._then);

  final TendersState _value;
  // ignore: unused_field
  final $Res Function(TendersState) _then;

  @override
  $Res call({
    Object? allTenders = freezed,
    Object? allTenderBids = freezed,
    Object? allSupplements = freezed,
  }) {
    return _then(_value.copyWith(
      allTenders: allTenders == freezed
          ? _value.allTenders
          : allTenders // ignore: cast_nullable_to_non_nullable
              as Option<List<Tender>>,
      allTenderBids: allTenderBids == freezed
          ? _value.allTenderBids
          : allTenderBids // ignore: cast_nullable_to_non_nullable
              as Option<List<TenderBid>>,
      allSupplements: allSupplements == freezed
          ? _value.allSupplements
          : allSupplements // ignore: cast_nullable_to_non_nullable
              as Option<List<Supplement>>,
    ));
  }
}

/// @nodoc
abstract class _$TendersStateCopyWith<$Res>
    implements $TendersStateCopyWith<$Res> {
  factory _$TendersStateCopyWith(
          _TendersState value, $Res Function(_TendersState) then) =
      __$TendersStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<List<Tender>> allTenders,
      Option<List<TenderBid>> allTenderBids,
      Option<List<Supplement>> allSupplements});
}

/// @nodoc
class __$TendersStateCopyWithImpl<$Res> extends _$TendersStateCopyWithImpl<$Res>
    implements _$TendersStateCopyWith<$Res> {
  __$TendersStateCopyWithImpl(
      _TendersState _value, $Res Function(_TendersState) _then)
      : super(_value, (v) => _then(v as _TendersState));

  @override
  _TendersState get _value => super._value as _TendersState;

  @override
  $Res call({
    Object? allTenders = freezed,
    Object? allTenderBids = freezed,
    Object? allSupplements = freezed,
  }) {
    return _then(_TendersState(
      allTenders: allTenders == freezed
          ? _value.allTenders
          : allTenders // ignore: cast_nullable_to_non_nullable
              as Option<List<Tender>>,
      allTenderBids: allTenderBids == freezed
          ? _value.allTenderBids
          : allTenderBids // ignore: cast_nullable_to_non_nullable
              as Option<List<TenderBid>>,
      allSupplements: allSupplements == freezed
          ? _value.allSupplements
          : allSupplements // ignore: cast_nullable_to_non_nullable
              as Option<List<Supplement>>,
    ));
  }
}

/// @nodoc

class _$_TendersState extends _TendersState {
  const _$_TendersState(
      {required this.allTenders,
      required this.allTenderBids,
      required this.allSupplements})
      : super._();

  @override
  final Option<List<Tender>> allTenders;
  @override
  final Option<List<TenderBid>> allTenderBids;
  @override
  final Option<List<Supplement>> allSupplements;

  @override
  String toString() {
    return 'TendersState(allTenders: $allTenders, allTenderBids: $allTenderBids, allSupplements: $allSupplements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TendersState &&
            (identical(other.allTenders, allTenders) ||
                const DeepCollectionEquality()
                    .equals(other.allTenders, allTenders)) &&
            (identical(other.allTenderBids, allTenderBids) ||
                const DeepCollectionEquality()
                    .equals(other.allTenderBids, allTenderBids)) &&
            (identical(other.allSupplements, allSupplements) ||
                const DeepCollectionEquality()
                    .equals(other.allSupplements, allSupplements)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(allTenders) ^
      const DeepCollectionEquality().hash(allTenderBids) ^
      const DeepCollectionEquality().hash(allSupplements);

  @JsonKey(ignore: true)
  @override
  _$TendersStateCopyWith<_TendersState> get copyWith =>
      __$TendersStateCopyWithImpl<_TendersState>(this, _$identity);
}

abstract class _TendersState extends TendersState {
  const factory _TendersState(
      {required Option<List<Tender>> allTenders,
      required Option<List<TenderBid>> allTenderBids,
      required Option<List<Supplement>> allSupplements}) = _$_TendersState;
  const _TendersState._() : super._();

  @override
  Option<List<Tender>> get allTenders => throw _privateConstructorUsedError;
  @override
  Option<List<TenderBid>> get allTenderBids =>
      throw _privateConstructorUsedError;
  @override
  Option<List<Supplement>> get allSupplements =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TendersStateCopyWith<_TendersState> get copyWith =>
      throw _privateConstructorUsedError;
}
