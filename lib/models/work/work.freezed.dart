// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BidIdentifier _$BidIdentifierFromJson(Map<String, dynamic> json) {
  return _BidIdentifier.fromJson(json);
}

/// @nodoc
class _$BidIdentifierTearOff {
  const _$BidIdentifierTearOff();

  _BidIdentifier call(
      {required String bidId,
      required WorkIdentifier workIdentifier,
      required TWUser bidder,
      required DateTime appliedOn,
      required BidType bidType}) {
    return _BidIdentifier(
      bidId: bidId,
      workIdentifier: workIdentifier,
      bidder: bidder,
      appliedOn: appliedOn,
      bidType: bidType,
    );
  }

  BidIdentifier fromJson(Map<String, Object?> json) {
    return BidIdentifier.fromJson(json);
  }
}

/// @nodoc
const $BidIdentifier = _$BidIdentifierTearOff();

/// @nodoc
mixin _$BidIdentifier {
  String get bidId => throw _privateConstructorUsedError;
  WorkIdentifier get workIdentifier => throw _privateConstructorUsedError;
  TWUser get bidder => throw _privateConstructorUsedError;
  DateTime get appliedOn => throw _privateConstructorUsedError;
  BidType get bidType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BidIdentifierCopyWith<BidIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidIdentifierCopyWith<$Res> {
  factory $BidIdentifierCopyWith(
          BidIdentifier value, $Res Function(BidIdentifier) then) =
      _$BidIdentifierCopyWithImpl<$Res>;
  $Res call(
      {String bidId,
      WorkIdentifier workIdentifier,
      TWUser bidder,
      DateTime appliedOn,
      BidType bidType});

  $WorkIdentifierCopyWith<$Res> get workIdentifier;
}

/// @nodoc
class _$BidIdentifierCopyWithImpl<$Res>
    implements $BidIdentifierCopyWith<$Res> {
  _$BidIdentifierCopyWithImpl(this._value, this._then);

  final BidIdentifier _value;
  // ignore: unused_field
  final $Res Function(BidIdentifier) _then;

  @override
  $Res call({
    Object? bidId = freezed,
    Object? workIdentifier = freezed,
    Object? bidder = freezed,
    Object? appliedOn = freezed,
    Object? bidType = freezed,
  }) {
    return _then(_value.copyWith(
      bidId: bidId == freezed
          ? _value.bidId
          : bidId // ignore: cast_nullable_to_non_nullable
              as String,
      workIdentifier: workIdentifier == freezed
          ? _value.workIdentifier
          : workIdentifier // ignore: cast_nullable_to_non_nullable
              as WorkIdentifier,
      bidder: bidder == freezed
          ? _value.bidder
          : bidder // ignore: cast_nullable_to_non_nullable
              as TWUser,
      appliedOn: appliedOn == freezed
          ? _value.appliedOn
          : appliedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bidType: bidType == freezed
          ? _value.bidType
          : bidType // ignore: cast_nullable_to_non_nullable
              as BidType,
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
abstract class _$BidIdentifierCopyWith<$Res>
    implements $BidIdentifierCopyWith<$Res> {
  factory _$BidIdentifierCopyWith(
          _BidIdentifier value, $Res Function(_BidIdentifier) then) =
      __$BidIdentifierCopyWithImpl<$Res>;
  @override
  $Res call(
      {String bidId,
      WorkIdentifier workIdentifier,
      TWUser bidder,
      DateTime appliedOn,
      BidType bidType});

  @override
  $WorkIdentifierCopyWith<$Res> get workIdentifier;
}

/// @nodoc
class __$BidIdentifierCopyWithImpl<$Res>
    extends _$BidIdentifierCopyWithImpl<$Res>
    implements _$BidIdentifierCopyWith<$Res> {
  __$BidIdentifierCopyWithImpl(
      _BidIdentifier _value, $Res Function(_BidIdentifier) _then)
      : super(_value, (v) => _then(v as _BidIdentifier));

  @override
  _BidIdentifier get _value => super._value as _BidIdentifier;

  @override
  $Res call({
    Object? bidId = freezed,
    Object? workIdentifier = freezed,
    Object? bidder = freezed,
    Object? appliedOn = freezed,
    Object? bidType = freezed,
  }) {
    return _then(_BidIdentifier(
      bidId: bidId == freezed
          ? _value.bidId
          : bidId // ignore: cast_nullable_to_non_nullable
              as String,
      workIdentifier: workIdentifier == freezed
          ? _value.workIdentifier
          : workIdentifier // ignore: cast_nullable_to_non_nullable
              as WorkIdentifier,
      bidder: bidder == freezed
          ? _value.bidder
          : bidder // ignore: cast_nullable_to_non_nullable
              as TWUser,
      appliedOn: appliedOn == freezed
          ? _value.appliedOn
          : appliedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bidType: bidType == freezed
          ? _value.bidType
          : bidType // ignore: cast_nullable_to_non_nullable
              as BidType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BidIdentifier implements _BidIdentifier {
  const _$_BidIdentifier(
      {required this.bidId,
      required this.workIdentifier,
      required this.bidder,
      required this.appliedOn,
      required this.bidType});

  factory _$_BidIdentifier.fromJson(Map<String, dynamic> json) =>
      _$$_BidIdentifierFromJson(json);

  @override
  final String bidId;
  @override
  final WorkIdentifier workIdentifier;
  @override
  final TWUser bidder;
  @override
  final DateTime appliedOn;
  @override
  final BidType bidType;

  @override
  String toString() {
    return 'BidIdentifier(bidId: $bidId, workIdentifier: $workIdentifier, bidder: $bidder, appliedOn: $appliedOn, bidType: $bidType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BidIdentifier &&
            const DeepCollectionEquality().equals(other.bidId, bidId) &&
            const DeepCollectionEquality()
                .equals(other.workIdentifier, workIdentifier) &&
            const DeepCollectionEquality().equals(other.bidder, bidder) &&
            const DeepCollectionEquality().equals(other.appliedOn, appliedOn) &&
            const DeepCollectionEquality().equals(other.bidType, bidType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bidId),
      const DeepCollectionEquality().hash(workIdentifier),
      const DeepCollectionEquality().hash(bidder),
      const DeepCollectionEquality().hash(appliedOn),
      const DeepCollectionEquality().hash(bidType));

  @JsonKey(ignore: true)
  @override
  _$BidIdentifierCopyWith<_BidIdentifier> get copyWith =>
      __$BidIdentifierCopyWithImpl<_BidIdentifier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BidIdentifierToJson(this);
  }
}

abstract class _BidIdentifier implements BidIdentifier {
  const factory _BidIdentifier(
      {required String bidId,
      required WorkIdentifier workIdentifier,
      required TWUser bidder,
      required DateTime appliedOn,
      required BidType bidType}) = _$_BidIdentifier;

  factory _BidIdentifier.fromJson(Map<String, dynamic> json) =
      _$_BidIdentifier.fromJson;

  @override
  String get bidId;
  @override
  WorkIdentifier get workIdentifier;
  @override
  TWUser get bidder;
  @override
  DateTime get appliedOn;
  @override
  BidType get bidType;
  @override
  @JsonKey(ignore: true)
  _$BidIdentifierCopyWith<_BidIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkIdentifier _$WorkIdentifierFromJson(Map<String, dynamic> json) {
  return _WorkIdentifier.fromJson(json);
}

/// @nodoc
class _$WorkIdentifierTearOff {
  const _$WorkIdentifierTearOff();

  _WorkIdentifier call(
      {required DevelopmentIdentifier developmentIdentifier,
      required String workId,
      required String title,
      required TWUser employer,
      required WorkType type}) {
    return _WorkIdentifier(
      developmentIdentifier: developmentIdentifier,
      workId: workId,
      title: title,
      employer: employer,
      type: type,
    );
  }

  WorkIdentifier fromJson(Map<String, Object?> json) {
    return WorkIdentifier.fromJson(json);
  }
}

/// @nodoc
const $WorkIdentifier = _$WorkIdentifierTearOff();

/// @nodoc
mixin _$WorkIdentifier {
  DevelopmentIdentifier get developmentIdentifier =>
      throw _privateConstructorUsedError;
  String get workId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  TWUser get employer => throw _privateConstructorUsedError;
  WorkType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkIdentifierCopyWith<WorkIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkIdentifierCopyWith<$Res> {
  factory $WorkIdentifierCopyWith(
          WorkIdentifier value, $Res Function(WorkIdentifier) then) =
      _$WorkIdentifierCopyWithImpl<$Res>;
  $Res call(
      {DevelopmentIdentifier developmentIdentifier,
      String workId,
      String title,
      TWUser employer,
      WorkType type});

  $DevelopmentIdentifierCopyWith<$Res> get developmentIdentifier;
}

/// @nodoc
class _$WorkIdentifierCopyWithImpl<$Res>
    implements $WorkIdentifierCopyWith<$Res> {
  _$WorkIdentifierCopyWithImpl(this._value, this._then);

  final WorkIdentifier _value;
  // ignore: unused_field
  final $Res Function(WorkIdentifier) _then;

  @override
  $Res call({
    Object? developmentIdentifier = freezed,
    Object? workId = freezed,
    Object? title = freezed,
    Object? employer = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      developmentIdentifier: developmentIdentifier == freezed
          ? _value.developmentIdentifier
          : developmentIdentifier // ignore: cast_nullable_to_non_nullable
              as DevelopmentIdentifier,
      workId: workId == freezed
          ? _value.workId
          : workId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      employer: employer == freezed
          ? _value.employer
          : employer // ignore: cast_nullable_to_non_nullable
              as TWUser,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorkType,
    ));
  }

  @override
  $DevelopmentIdentifierCopyWith<$Res> get developmentIdentifier {
    return $DevelopmentIdentifierCopyWith<$Res>(_value.developmentIdentifier,
        (value) {
      return _then(_value.copyWith(developmentIdentifier: value));
    });
  }
}

/// @nodoc
abstract class _$WorkIdentifierCopyWith<$Res>
    implements $WorkIdentifierCopyWith<$Res> {
  factory _$WorkIdentifierCopyWith(
          _WorkIdentifier value, $Res Function(_WorkIdentifier) then) =
      __$WorkIdentifierCopyWithImpl<$Res>;
  @override
  $Res call(
      {DevelopmentIdentifier developmentIdentifier,
      String workId,
      String title,
      TWUser employer,
      WorkType type});

  @override
  $DevelopmentIdentifierCopyWith<$Res> get developmentIdentifier;
}

/// @nodoc
class __$WorkIdentifierCopyWithImpl<$Res>
    extends _$WorkIdentifierCopyWithImpl<$Res>
    implements _$WorkIdentifierCopyWith<$Res> {
  __$WorkIdentifierCopyWithImpl(
      _WorkIdentifier _value, $Res Function(_WorkIdentifier) _then)
      : super(_value, (v) => _then(v as _WorkIdentifier));

  @override
  _WorkIdentifier get _value => super._value as _WorkIdentifier;

  @override
  $Res call({
    Object? developmentIdentifier = freezed,
    Object? workId = freezed,
    Object? title = freezed,
    Object? employer = freezed,
    Object? type = freezed,
  }) {
    return _then(_WorkIdentifier(
      developmentIdentifier: developmentIdentifier == freezed
          ? _value.developmentIdentifier
          : developmentIdentifier // ignore: cast_nullable_to_non_nullable
              as DevelopmentIdentifier,
      workId: workId == freezed
          ? _value.workId
          : workId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      employer: employer == freezed
          ? _value.employer
          : employer // ignore: cast_nullable_to_non_nullable
              as TWUser,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorkType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkIdentifier implements _WorkIdentifier {
  const _$_WorkIdentifier(
      {required this.developmentIdentifier,
      required this.workId,
      required this.title,
      required this.employer,
      required this.type});

  factory _$_WorkIdentifier.fromJson(Map<String, dynamic> json) =>
      _$$_WorkIdentifierFromJson(json);

  @override
  final DevelopmentIdentifier developmentIdentifier;
  @override
  final String workId;
  @override
  final String title;
  @override
  final TWUser employer;
  @override
  final WorkType type;

  @override
  String toString() {
    return 'WorkIdentifier(developmentIdentifier: $developmentIdentifier, workId: $workId, title: $title, employer: $employer, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkIdentifier &&
            const DeepCollectionEquality()
                .equals(other.developmentIdentifier, developmentIdentifier) &&
            const DeepCollectionEquality().equals(other.workId, workId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.employer, employer) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(developmentIdentifier),
      const DeepCollectionEquality().hash(workId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(employer),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$WorkIdentifierCopyWith<_WorkIdentifier> get copyWith =>
      __$WorkIdentifierCopyWithImpl<_WorkIdentifier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkIdentifierToJson(this);
  }
}

abstract class _WorkIdentifier implements WorkIdentifier {
  const factory _WorkIdentifier(
      {required DevelopmentIdentifier developmentIdentifier,
      required String workId,
      required String title,
      required TWUser employer,
      required WorkType type}) = _$_WorkIdentifier;

  factory _WorkIdentifier.fromJson(Map<String, dynamic> json) =
      _$_WorkIdentifier.fromJson;

  @override
  DevelopmentIdentifier get developmentIdentifier;
  @override
  String get workId;
  @override
  String get title;
  @override
  TWUser get employer;
  @override
  WorkType get type;
  @override
  @JsonKey(ignore: true)
  _$WorkIdentifierCopyWith<_WorkIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}
