// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
class _$JobTearOff {
  const _$JobTearOff();

  _Job call(
      {required WorkIdentifier workIdentifier,
      required DateTime createdOn,
      required String contractorId,
      required LocationModel location,
      required Trade trade,
      required JobStatus status,
      required int totalUnseenBids,
      required String developmentTitle,
      required String description,
      required double hourlyRate,
      required int applications,
      required int subbiesRequired,
      required int subbiesWorking,
      required DateTime endDate,
      required int hrsPerDay,
      required DateTime startDate,
      required List<String> requirements,
      required bool acceptingBids}) {
    return _Job(
      workIdentifier: workIdentifier,
      createdOn: createdOn,
      contractorId: contractorId,
      location: location,
      trade: trade,
      status: status,
      totalUnseenBids: totalUnseenBids,
      developmentTitle: developmentTitle,
      description: description,
      hourlyRate: hourlyRate,
      applications: applications,
      subbiesRequired: subbiesRequired,
      subbiesWorking: subbiesWorking,
      endDate: endDate,
      hrsPerDay: hrsPerDay,
      startDate: startDate,
      requirements: requirements,
      acceptingBids: acceptingBids,
    );
  }

  Job fromJson(Map<String, Object> json) {
    return Job.fromJson(json);
  }
}

/// @nodoc
const $Job = _$JobTearOff();

/// @nodoc
mixin _$Job {
  WorkIdentifier get workIdentifier => throw _privateConstructorUsedError;
  DateTime get createdOn => throw _privateConstructorUsedError;
  String get contractorId => throw _privateConstructorUsedError;
  LocationModel get location => throw _privateConstructorUsedError;
  Trade get trade => throw _privateConstructorUsedError;
  JobStatus get status => throw _privateConstructorUsedError;
  int get totalUnseenBids => throw _privateConstructorUsedError;
  String get developmentTitle => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get hourlyRate => throw _privateConstructorUsedError;
  int get applications => throw _privateConstructorUsedError;
  int get subbiesRequired => throw _privateConstructorUsedError;
  int get subbiesWorking => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  int get hrsPerDay => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  List<String> get requirements => throw _privateConstructorUsedError;
  bool get acceptingBids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res>;
  $Res call(
      {WorkIdentifier workIdentifier,
      DateTime createdOn,
      String contractorId,
      LocationModel location,
      Trade trade,
      JobStatus status,
      int totalUnseenBids,
      String developmentTitle,
      String description,
      double hourlyRate,
      int applications,
      int subbiesRequired,
      int subbiesWorking,
      DateTime endDate,
      int hrsPerDay,
      DateTime startDate,
      List<String> requirements,
      bool acceptingBids});

  $WorkIdentifierCopyWith<$Res> get workIdentifier;
}

/// @nodoc
class _$JobCopyWithImpl<$Res> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  final Job _value;
  // ignore: unused_field
  final $Res Function(Job) _then;

  @override
  $Res call({
    Object? workIdentifier = freezed,
    Object? createdOn = freezed,
    Object? contractorId = freezed,
    Object? location = freezed,
    Object? trade = freezed,
    Object? status = freezed,
    Object? totalUnseenBids = freezed,
    Object? developmentTitle = freezed,
    Object? description = freezed,
    Object? hourlyRate = freezed,
    Object? applications = freezed,
    Object? subbiesRequired = freezed,
    Object? subbiesWorking = freezed,
    Object? endDate = freezed,
    Object? hrsPerDay = freezed,
    Object? startDate = freezed,
    Object? requirements = freezed,
    Object? acceptingBids = freezed,
  }) {
    return _then(_value.copyWith(
      workIdentifier: workIdentifier == freezed
          ? _value.workIdentifier
          : workIdentifier // ignore: cast_nullable_to_non_nullable
              as WorkIdentifier,
      createdOn: createdOn == freezed
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contractorId: contractorId == freezed
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      trade: trade == freezed
          ? _value.trade
          : trade // ignore: cast_nullable_to_non_nullable
              as Trade,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobStatus,
      totalUnseenBids: totalUnseenBids == freezed
          ? _value.totalUnseenBids
          : totalUnseenBids // ignore: cast_nullable_to_non_nullable
              as int,
      developmentTitle: developmentTitle == freezed
          ? _value.developmentTitle
          : developmentTitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      hourlyRate: hourlyRate == freezed
          ? _value.hourlyRate
          : hourlyRate // ignore: cast_nullable_to_non_nullable
              as double,
      applications: applications == freezed
          ? _value.applications
          : applications // ignore: cast_nullable_to_non_nullable
              as int,
      subbiesRequired: subbiesRequired == freezed
          ? _value.subbiesRequired
          : subbiesRequired // ignore: cast_nullable_to_non_nullable
              as int,
      subbiesWorking: subbiesWorking == freezed
          ? _value.subbiesWorking
          : subbiesWorking // ignore: cast_nullable_to_non_nullable
              as int,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hrsPerDay: hrsPerDay == freezed
          ? _value.hrsPerDay
          : hrsPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requirements: requirements == freezed
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      acceptingBids: acceptingBids == freezed
          ? _value.acceptingBids
          : acceptingBids // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$JobCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$JobCopyWith(_Job value, $Res Function(_Job) then) =
      __$JobCopyWithImpl<$Res>;
  @override
  $Res call(
      {WorkIdentifier workIdentifier,
      DateTime createdOn,
      String contractorId,
      LocationModel location,
      Trade trade,
      JobStatus status,
      int totalUnseenBids,
      String developmentTitle,
      String description,
      double hourlyRate,
      int applications,
      int subbiesRequired,
      int subbiesWorking,
      DateTime endDate,
      int hrsPerDay,
      DateTime startDate,
      List<String> requirements,
      bool acceptingBids});

  @override
  $WorkIdentifierCopyWith<$Res> get workIdentifier;
}

/// @nodoc
class __$JobCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res>
    implements _$JobCopyWith<$Res> {
  __$JobCopyWithImpl(_Job _value, $Res Function(_Job) _then)
      : super(_value, (v) => _then(v as _Job));

  @override
  _Job get _value => super._value as _Job;

  @override
  $Res call({
    Object? workIdentifier = freezed,
    Object? createdOn = freezed,
    Object? contractorId = freezed,
    Object? location = freezed,
    Object? trade = freezed,
    Object? status = freezed,
    Object? totalUnseenBids = freezed,
    Object? developmentTitle = freezed,
    Object? description = freezed,
    Object? hourlyRate = freezed,
    Object? applications = freezed,
    Object? subbiesRequired = freezed,
    Object? subbiesWorking = freezed,
    Object? endDate = freezed,
    Object? hrsPerDay = freezed,
    Object? startDate = freezed,
    Object? requirements = freezed,
    Object? acceptingBids = freezed,
  }) {
    return _then(_Job(
      workIdentifier: workIdentifier == freezed
          ? _value.workIdentifier
          : workIdentifier // ignore: cast_nullable_to_non_nullable
              as WorkIdentifier,
      createdOn: createdOn == freezed
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contractorId: contractorId == freezed
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      trade: trade == freezed
          ? _value.trade
          : trade // ignore: cast_nullable_to_non_nullable
              as Trade,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobStatus,
      totalUnseenBids: totalUnseenBids == freezed
          ? _value.totalUnseenBids
          : totalUnseenBids // ignore: cast_nullable_to_non_nullable
              as int,
      developmentTitle: developmentTitle == freezed
          ? _value.developmentTitle
          : developmentTitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      hourlyRate: hourlyRate == freezed
          ? _value.hourlyRate
          : hourlyRate // ignore: cast_nullable_to_non_nullable
              as double,
      applications: applications == freezed
          ? _value.applications
          : applications // ignore: cast_nullable_to_non_nullable
              as int,
      subbiesRequired: subbiesRequired == freezed
          ? _value.subbiesRequired
          : subbiesRequired // ignore: cast_nullable_to_non_nullable
              as int,
      subbiesWorking: subbiesWorking == freezed
          ? _value.subbiesWorking
          : subbiesWorking // ignore: cast_nullable_to_non_nullable
              as int,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hrsPerDay: hrsPerDay == freezed
          ? _value.hrsPerDay
          : hrsPerDay // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requirements: requirements == freezed
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      acceptingBids: acceptingBids == freezed
          ? _value.acceptingBids
          : acceptingBids // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Job implements _Job {
  const _$_Job(
      {required this.workIdentifier,
      required this.createdOn,
      required this.contractorId,
      required this.location,
      required this.trade,
      required this.status,
      required this.totalUnseenBids,
      required this.developmentTitle,
      required this.description,
      required this.hourlyRate,
      required this.applications,
      required this.subbiesRequired,
      required this.subbiesWorking,
      required this.endDate,
      required this.hrsPerDay,
      required this.startDate,
      required this.requirements,
      required this.acceptingBids});

  factory _$_Job.fromJson(Map<String, dynamic> json) => _$$_JobFromJson(json);

  @override
  final WorkIdentifier workIdentifier;
  @override
  final DateTime createdOn;
  @override
  final String contractorId;
  @override
  final LocationModel location;
  @override
  final Trade trade;
  @override
  final JobStatus status;
  @override
  final int totalUnseenBids;
  @override
  final String developmentTitle;
  @override
  final String description;
  @override
  final double hourlyRate;
  @override
  final int applications;
  @override
  final int subbiesRequired;
  @override
  final int subbiesWorking;
  @override
  final DateTime endDate;
  @override
  final int hrsPerDay;
  @override
  final DateTime startDate;
  @override
  final List<String> requirements;
  @override
  final bool acceptingBids;

  @override
  String toString() {
    return 'Job(workIdentifier: $workIdentifier, createdOn: $createdOn, contractorId: $contractorId, location: $location, trade: $trade, status: $status, totalUnseenBids: $totalUnseenBids, developmentTitle: $developmentTitle, description: $description, hourlyRate: $hourlyRate, applications: $applications, subbiesRequired: $subbiesRequired, subbiesWorking: $subbiesWorking, endDate: $endDate, hrsPerDay: $hrsPerDay, startDate: $startDate, requirements: $requirements, acceptingBids: $acceptingBids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Job &&
            (identical(other.workIdentifier, workIdentifier) ||
                const DeepCollectionEquality()
                    .equals(other.workIdentifier, workIdentifier)) &&
            (identical(other.createdOn, createdOn) ||
                const DeepCollectionEquality()
                    .equals(other.createdOn, createdOn)) &&
            (identical(other.contractorId, contractorId) ||
                const DeepCollectionEquality()
                    .equals(other.contractorId, contractorId)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.trade, trade) ||
                const DeepCollectionEquality().equals(other.trade, trade)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.totalUnseenBids, totalUnseenBids) ||
                const DeepCollectionEquality()
                    .equals(other.totalUnseenBids, totalUnseenBids)) &&
            (identical(other.developmentTitle, developmentTitle) ||
                const DeepCollectionEquality()
                    .equals(other.developmentTitle, developmentTitle)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.hourlyRate, hourlyRate) ||
                const DeepCollectionEquality()
                    .equals(other.hourlyRate, hourlyRate)) &&
            (identical(other.applications, applications) ||
                const DeepCollectionEquality()
                    .equals(other.applications, applications)) &&
            (identical(other.subbiesRequired, subbiesRequired) ||
                const DeepCollectionEquality()
                    .equals(other.subbiesRequired, subbiesRequired)) &&
            (identical(other.subbiesWorking, subbiesWorking) ||
                const DeepCollectionEquality()
                    .equals(other.subbiesWorking, subbiesWorking)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.hrsPerDay, hrsPerDay) ||
                const DeepCollectionEquality()
                    .equals(other.hrsPerDay, hrsPerDay)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.requirements, requirements) ||
                const DeepCollectionEquality()
                    .equals(other.requirements, requirements)) &&
            (identical(other.acceptingBids, acceptingBids) ||
                const DeepCollectionEquality()
                    .equals(other.acceptingBids, acceptingBids)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workIdentifier) ^
      const DeepCollectionEquality().hash(createdOn) ^
      const DeepCollectionEquality().hash(contractorId) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(trade) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(totalUnseenBids) ^
      const DeepCollectionEquality().hash(developmentTitle) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(hourlyRate) ^
      const DeepCollectionEquality().hash(applications) ^
      const DeepCollectionEquality().hash(subbiesRequired) ^
      const DeepCollectionEquality().hash(subbiesWorking) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(hrsPerDay) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(requirements) ^
      const DeepCollectionEquality().hash(acceptingBids);

  @JsonKey(ignore: true)
  @override
  _$JobCopyWith<_Job> get copyWith =>
      __$JobCopyWithImpl<_Job>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobToJson(this);
  }
}

abstract class _Job implements Job {
  const factory _Job(
      {required WorkIdentifier workIdentifier,
      required DateTime createdOn,
      required String contractorId,
      required LocationModel location,
      required Trade trade,
      required JobStatus status,
      required int totalUnseenBids,
      required String developmentTitle,
      required String description,
      required double hourlyRate,
      required int applications,
      required int subbiesRequired,
      required int subbiesWorking,
      required DateTime endDate,
      required int hrsPerDay,
      required DateTime startDate,
      required List<String> requirements,
      required bool acceptingBids}) = _$_Job;

  factory _Job.fromJson(Map<String, dynamic> json) = _$_Job.fromJson;

  @override
  WorkIdentifier get workIdentifier => throw _privateConstructorUsedError;
  @override
  DateTime get createdOn => throw _privateConstructorUsedError;
  @override
  String get contractorId => throw _privateConstructorUsedError;
  @override
  LocationModel get location => throw _privateConstructorUsedError;
  @override
  Trade get trade => throw _privateConstructorUsedError;
  @override
  JobStatus get status => throw _privateConstructorUsedError;
  @override
  int get totalUnseenBids => throw _privateConstructorUsedError;
  @override
  String get developmentTitle => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  double get hourlyRate => throw _privateConstructorUsedError;
  @override
  int get applications => throw _privateConstructorUsedError;
  @override
  int get subbiesRequired => throw _privateConstructorUsedError;
  @override
  int get subbiesWorking => throw _privateConstructorUsedError;
  @override
  DateTime get endDate => throw _privateConstructorUsedError;
  @override
  int get hrsPerDay => throw _privateConstructorUsedError;
  @override
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  List<String> get requirements => throw _privateConstructorUsedError;
  @override
  bool get acceptingBids => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JobCopyWith<_Job> get copyWith => throw _privateConstructorUsedError;
}
