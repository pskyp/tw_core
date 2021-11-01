// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'supplement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Supplement _$SupplementFromJson(Map<String, dynamic> json) {
  return _Supplement.fromJson(json);
}

/// @nodoc
class _$SupplementTearOff {
  const _$SupplementTearOff();

  _Supplement call(
      {required WorkIdentifier workIdentifier,
      required String developerId,
      required SupplementStatus status,
      required Developer developer,
      required String title,
      required String description,
      required double hourlyRate,
      required int hrsPerDay,
      required DateTime startDate,
      required DateTime endDate,
      required DateTime createdOn,
      required int applications,
      required int subbiesWorking,
      required int subbiesRequired,
      required String requirements,
      required Trade trade,
      required bool acceptingBids,
      required int totalUnseenBids,
      required LocationModel location}) {
    return _Supplement(
      workIdentifier: workIdentifier,
      developerId: developerId,
      status: status,
      developer: developer,
      title: title,
      description: description,
      hourlyRate: hourlyRate,
      hrsPerDay: hrsPerDay,
      startDate: startDate,
      endDate: endDate,
      createdOn: createdOn,
      applications: applications,
      subbiesWorking: subbiesWorking,
      subbiesRequired: subbiesRequired,
      requirements: requirements,
      trade: trade,
      acceptingBids: acceptingBids,
      totalUnseenBids: totalUnseenBids,
      location: location,
    );
  }

  Supplement fromJson(Map<String, Object> json) {
    return Supplement.fromJson(json);
  }
}

/// @nodoc
const $Supplement = _$SupplementTearOff();

/// @nodoc
mixin _$Supplement {
  WorkIdentifier get workIdentifier => throw _privateConstructorUsedError;
  String get developerId => throw _privateConstructorUsedError;
  SupplementStatus get status => throw _privateConstructorUsedError;
  Developer get developer => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get hourlyRate => throw _privateConstructorUsedError;
  int get hrsPerDay => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  DateTime get createdOn => throw _privateConstructorUsedError;
  int get applications => throw _privateConstructorUsedError;
  int get subbiesWorking => throw _privateConstructorUsedError;
  int get subbiesRequired => throw _privateConstructorUsedError;
  String get requirements => throw _privateConstructorUsedError;
  Trade get trade => throw _privateConstructorUsedError;
  bool get acceptingBids => throw _privateConstructorUsedError;
  int get totalUnseenBids => throw _privateConstructorUsedError;
  LocationModel get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplementCopyWith<Supplement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplementCopyWith<$Res> {
  factory $SupplementCopyWith(
          Supplement value, $Res Function(Supplement) then) =
      _$SupplementCopyWithImpl<$Res>;
  $Res call(
      {WorkIdentifier workIdentifier,
      String developerId,
      SupplementStatus status,
      Developer developer,
      String title,
      String description,
      double hourlyRate,
      int hrsPerDay,
      DateTime startDate,
      DateTime endDate,
      DateTime createdOn,
      int applications,
      int subbiesWorking,
      int subbiesRequired,
      String requirements,
      Trade trade,
      bool acceptingBids,
      int totalUnseenBids,
      LocationModel location});

  $WorkIdentifierCopyWith<$Res> get workIdentifier;
}

/// @nodoc
class _$SupplementCopyWithImpl<$Res> implements $SupplementCopyWith<$Res> {
  _$SupplementCopyWithImpl(this._value, this._then);

  final Supplement _value;
  // ignore: unused_field
  final $Res Function(Supplement) _then;

  @override
  $Res call({
    Object? workIdentifier = freezed,
    Object? developerId = freezed,
    Object? status = freezed,
    Object? developer = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? hourlyRate = freezed,
    Object? hrsPerDay = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? createdOn = freezed,
    Object? applications = freezed,
    Object? subbiesWorking = freezed,
    Object? subbiesRequired = freezed,
    Object? requirements = freezed,
    Object? trade = freezed,
    Object? acceptingBids = freezed,
    Object? totalUnseenBids = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      workIdentifier: workIdentifier == freezed
          ? _value.workIdentifier
          : workIdentifier // ignore: cast_nullable_to_non_nullable
              as WorkIdentifier,
      developerId: developerId == freezed
          ? _value.developerId
          : developerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SupplementStatus,
      developer: developer == freezed
          ? _value.developer
          : developer // ignore: cast_nullable_to_non_nullable
              as Developer,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      hourlyRate: hourlyRate == freezed
          ? _value.hourlyRate
          : hourlyRate // ignore: cast_nullable_to_non_nullable
              as double,
      hrsPerDay: hrsPerDay == freezed
          ? _value.hrsPerDay
          : hrsPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdOn: createdOn == freezed
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      applications: applications == freezed
          ? _value.applications
          : applications // ignore: cast_nullable_to_non_nullable
              as int,
      subbiesWorking: subbiesWorking == freezed
          ? _value.subbiesWorking
          : subbiesWorking // ignore: cast_nullable_to_non_nullable
              as int,
      subbiesRequired: subbiesRequired == freezed
          ? _value.subbiesRequired
          : subbiesRequired // ignore: cast_nullable_to_non_nullable
              as int,
      requirements: requirements == freezed
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as String,
      trade: trade == freezed
          ? _value.trade
          : trade // ignore: cast_nullable_to_non_nullable
              as Trade,
      acceptingBids: acceptingBids == freezed
          ? _value.acceptingBids
          : acceptingBids // ignore: cast_nullable_to_non_nullable
              as bool,
      totalUnseenBids: totalUnseenBids == freezed
          ? _value.totalUnseenBids
          : totalUnseenBids // ignore: cast_nullable_to_non_nullable
              as int,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
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
abstract class _$SupplementCopyWith<$Res> implements $SupplementCopyWith<$Res> {
  factory _$SupplementCopyWith(
          _Supplement value, $Res Function(_Supplement) then) =
      __$SupplementCopyWithImpl<$Res>;
  @override
  $Res call(
      {WorkIdentifier workIdentifier,
      String developerId,
      SupplementStatus status,
      Developer developer,
      String title,
      String description,
      double hourlyRate,
      int hrsPerDay,
      DateTime startDate,
      DateTime endDate,
      DateTime createdOn,
      int applications,
      int subbiesWorking,
      int subbiesRequired,
      String requirements,
      Trade trade,
      bool acceptingBids,
      int totalUnseenBids,
      LocationModel location});

  @override
  $WorkIdentifierCopyWith<$Res> get workIdentifier;
}

/// @nodoc
class __$SupplementCopyWithImpl<$Res> extends _$SupplementCopyWithImpl<$Res>
    implements _$SupplementCopyWith<$Res> {
  __$SupplementCopyWithImpl(
      _Supplement _value, $Res Function(_Supplement) _then)
      : super(_value, (v) => _then(v as _Supplement));

  @override
  _Supplement get _value => super._value as _Supplement;

  @override
  $Res call({
    Object? workIdentifier = freezed,
    Object? developerId = freezed,
    Object? status = freezed,
    Object? developer = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? hourlyRate = freezed,
    Object? hrsPerDay = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? createdOn = freezed,
    Object? applications = freezed,
    Object? subbiesWorking = freezed,
    Object? subbiesRequired = freezed,
    Object? requirements = freezed,
    Object? trade = freezed,
    Object? acceptingBids = freezed,
    Object? totalUnseenBids = freezed,
    Object? location = freezed,
  }) {
    return _then(_Supplement(
      workIdentifier: workIdentifier == freezed
          ? _value.workIdentifier
          : workIdentifier // ignore: cast_nullable_to_non_nullable
              as WorkIdentifier,
      developerId: developerId == freezed
          ? _value.developerId
          : developerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SupplementStatus,
      developer: developer == freezed
          ? _value.developer
          : developer // ignore: cast_nullable_to_non_nullable
              as Developer,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      hourlyRate: hourlyRate == freezed
          ? _value.hourlyRate
          : hourlyRate // ignore: cast_nullable_to_non_nullable
              as double,
      hrsPerDay: hrsPerDay == freezed
          ? _value.hrsPerDay
          : hrsPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdOn: createdOn == freezed
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      applications: applications == freezed
          ? _value.applications
          : applications // ignore: cast_nullable_to_non_nullable
              as int,
      subbiesWorking: subbiesWorking == freezed
          ? _value.subbiesWorking
          : subbiesWorking // ignore: cast_nullable_to_non_nullable
              as int,
      subbiesRequired: subbiesRequired == freezed
          ? _value.subbiesRequired
          : subbiesRequired // ignore: cast_nullable_to_non_nullable
              as int,
      requirements: requirements == freezed
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as String,
      trade: trade == freezed
          ? _value.trade
          : trade // ignore: cast_nullable_to_non_nullable
              as Trade,
      acceptingBids: acceptingBids == freezed
          ? _value.acceptingBids
          : acceptingBids // ignore: cast_nullable_to_non_nullable
              as bool,
      totalUnseenBids: totalUnseenBids == freezed
          ? _value.totalUnseenBids
          : totalUnseenBids // ignore: cast_nullable_to_non_nullable
              as int,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Supplement implements _Supplement {
  const _$_Supplement(
      {required this.workIdentifier,
      required this.developerId,
      required this.status,
      required this.developer,
      required this.title,
      required this.description,
      required this.hourlyRate,
      required this.hrsPerDay,
      required this.startDate,
      required this.endDate,
      required this.createdOn,
      required this.applications,
      required this.subbiesWorking,
      required this.subbiesRequired,
      required this.requirements,
      required this.trade,
      required this.acceptingBids,
      required this.totalUnseenBids,
      required this.location});

  factory _$_Supplement.fromJson(Map<String, dynamic> json) =>
      _$$_SupplementFromJson(json);

  @override
  final WorkIdentifier workIdentifier;
  @override
  final String developerId;
  @override
  final SupplementStatus status;
  @override
  final Developer developer;
  @override
  final String title;
  @override
  final String description;
  @override
  final double hourlyRate;
  @override
  final int hrsPerDay;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final DateTime createdOn;
  @override
  final int applications;
  @override
  final int subbiesWorking;
  @override
  final int subbiesRequired;
  @override
  final String requirements;
  @override
  final Trade trade;
  @override
  final bool acceptingBids;
  @override
  final int totalUnseenBids;
  @override
  final LocationModel location;

  @override
  String toString() {
    return 'Supplement(workIdentifier: $workIdentifier, developerId: $developerId, status: $status, developer: $developer, title: $title, description: $description, hourlyRate: $hourlyRate, hrsPerDay: $hrsPerDay, startDate: $startDate, endDate: $endDate, createdOn: $createdOn, applications: $applications, subbiesWorking: $subbiesWorking, subbiesRequired: $subbiesRequired, requirements: $requirements, trade: $trade, acceptingBids: $acceptingBids, totalUnseenBids: $totalUnseenBids, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Supplement &&
            (identical(other.workIdentifier, workIdentifier) ||
                const DeepCollectionEquality()
                    .equals(other.workIdentifier, workIdentifier)) &&
            (identical(other.developerId, developerId) ||
                const DeepCollectionEquality()
                    .equals(other.developerId, developerId)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.developer, developer) ||
                const DeepCollectionEquality()
                    .equals(other.developer, developer)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.hourlyRate, hourlyRate) ||
                const DeepCollectionEquality()
                    .equals(other.hourlyRate, hourlyRate)) &&
            (identical(other.hrsPerDay, hrsPerDay) ||
                const DeepCollectionEquality()
                    .equals(other.hrsPerDay, hrsPerDay)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.createdOn, createdOn) ||
                const DeepCollectionEquality()
                    .equals(other.createdOn, createdOn)) &&
            (identical(other.applications, applications) ||
                const DeepCollectionEquality()
                    .equals(other.applications, applications)) &&
            (identical(other.subbiesWorking, subbiesWorking) ||
                const DeepCollectionEquality()
                    .equals(other.subbiesWorking, subbiesWorking)) &&
            (identical(other.subbiesRequired, subbiesRequired) ||
                const DeepCollectionEquality()
                    .equals(other.subbiesRequired, subbiesRequired)) &&
            (identical(other.requirements, requirements) ||
                const DeepCollectionEquality()
                    .equals(other.requirements, requirements)) &&
            (identical(other.trade, trade) ||
                const DeepCollectionEquality().equals(other.trade, trade)) &&
            (identical(other.acceptingBids, acceptingBids) ||
                const DeepCollectionEquality()
                    .equals(other.acceptingBids, acceptingBids)) &&
            (identical(other.totalUnseenBids, totalUnseenBids) ||
                const DeepCollectionEquality()
                    .equals(other.totalUnseenBids, totalUnseenBids)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workIdentifier) ^
      const DeepCollectionEquality().hash(developerId) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(developer) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(hourlyRate) ^
      const DeepCollectionEquality().hash(hrsPerDay) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(createdOn) ^
      const DeepCollectionEquality().hash(applications) ^
      const DeepCollectionEquality().hash(subbiesWorking) ^
      const DeepCollectionEquality().hash(subbiesRequired) ^
      const DeepCollectionEquality().hash(requirements) ^
      const DeepCollectionEquality().hash(trade) ^
      const DeepCollectionEquality().hash(acceptingBids) ^
      const DeepCollectionEquality().hash(totalUnseenBids) ^
      const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$SupplementCopyWith<_Supplement> get copyWith =>
      __$SupplementCopyWithImpl<_Supplement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupplementToJson(this);
  }
}

abstract class _Supplement implements Supplement {
  const factory _Supplement(
      {required WorkIdentifier workIdentifier,
      required String developerId,
      required SupplementStatus status,
      required Developer developer,
      required String title,
      required String description,
      required double hourlyRate,
      required int hrsPerDay,
      required DateTime startDate,
      required DateTime endDate,
      required DateTime createdOn,
      required int applications,
      required int subbiesWorking,
      required int subbiesRequired,
      required String requirements,
      required Trade trade,
      required bool acceptingBids,
      required int totalUnseenBids,
      required LocationModel location}) = _$_Supplement;

  factory _Supplement.fromJson(Map<String, dynamic> json) =
      _$_Supplement.fromJson;

  @override
  WorkIdentifier get workIdentifier => throw _privateConstructorUsedError;
  @override
  String get developerId => throw _privateConstructorUsedError;
  @override
  SupplementStatus get status => throw _privateConstructorUsedError;
  @override
  Developer get developer => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  double get hourlyRate => throw _privateConstructorUsedError;
  @override
  int get hrsPerDay => throw _privateConstructorUsedError;
  @override
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  DateTime get endDate => throw _privateConstructorUsedError;
  @override
  DateTime get createdOn => throw _privateConstructorUsedError;
  @override
  int get applications => throw _privateConstructorUsedError;
  @override
  int get subbiesWorking => throw _privateConstructorUsedError;
  @override
  int get subbiesRequired => throw _privateConstructorUsedError;
  @override
  String get requirements => throw _privateConstructorUsedError;
  @override
  Trade get trade => throw _privateConstructorUsedError;
  @override
  bool get acceptingBids => throw _privateConstructorUsedError;
  @override
  int get totalUnseenBids => throw _privateConstructorUsedError;
  @override
  LocationModel get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SupplementCopyWith<_Supplement> get copyWith =>
      throw _privateConstructorUsedError;
}
