// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tender_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tender _$TenderFromJson(Map<String, dynamic> json) {
  return _Tender.fromJson(json);
}

/// @nodoc
class _$TenderTearOff {
  const _$TenderTearOff();

  _Tender call(
      {required WorkIdentifier workIdentifier,
      required DateTime createdOn,
      required String developerId,
      required TenderStatus tenderStatus,
      required String? inviteEmailOne,
      required String? inviteEmailTwo,
      required Trade trade,
      required String requirements,
      required String instructions,
      required LocationModel location,
      required DateTime startDate,
      required DateTime applicationDeadLine,
      required DateTime queriesDate,
      required DateTime submissionDate,
      required DateTime feedbackDate,
      required DateTime awardDate,
      required DateTime endDate,
      required TenderTimeLineStatus tenderTimeLineStatus,
      required bool feedbackByDeveloper,
      required bool feedbackByContractor,
      required List<TenderFeedback>? feedback}) {
    return _Tender(
      workIdentifier: workIdentifier,
      createdOn: createdOn,
      developerId: developerId,
      tenderStatus: tenderStatus,
      inviteEmailOne: inviteEmailOne,
      inviteEmailTwo: inviteEmailTwo,
      trade: trade,
      requirements: requirements,
      instructions: instructions,
      location: location,
      startDate: startDate,
      applicationDeadLine: applicationDeadLine,
      queriesDate: queriesDate,
      submissionDate: submissionDate,
      feedbackDate: feedbackDate,
      awardDate: awardDate,
      endDate: endDate,
      tenderTimeLineStatus: tenderTimeLineStatus,
      feedbackByDeveloper: feedbackByDeveloper,
      feedbackByContractor: feedbackByContractor,
      feedback: feedback,
    );
  }

  Tender fromJson(Map<String, Object?> json) {
    return Tender.fromJson(json);
  }
}

/// @nodoc
const $Tender = _$TenderTearOff();

/// @nodoc
mixin _$Tender {
  WorkIdentifier get workIdentifier => throw _privateConstructorUsedError;
  DateTime get createdOn => throw _privateConstructorUsedError;
  String get developerId => throw _privateConstructorUsedError;
  TenderStatus get tenderStatus => throw _privateConstructorUsedError;
  String? get inviteEmailOne => throw _privateConstructorUsedError;
  String? get inviteEmailTwo => throw _privateConstructorUsedError;
  Trade get trade => throw _privateConstructorUsedError;
  String get requirements => throw _privateConstructorUsedError;
  String get instructions => throw _privateConstructorUsedError;
  LocationModel get location => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get applicationDeadLine => throw _privateConstructorUsedError;
  DateTime get queriesDate => throw _privateConstructorUsedError;
  DateTime get submissionDate => throw _privateConstructorUsedError;
  DateTime get feedbackDate => throw _privateConstructorUsedError;
  DateTime get awardDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  TenderTimeLineStatus get tenderTimeLineStatus =>
      throw _privateConstructorUsedError;
  bool get feedbackByDeveloper => throw _privateConstructorUsedError;
  bool get feedbackByContractor => throw _privateConstructorUsedError;
  List<TenderFeedback>? get feedback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenderCopyWith<Tender> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenderCopyWith<$Res> {
  factory $TenderCopyWith(Tender value, $Res Function(Tender) then) =
      _$TenderCopyWithImpl<$Res>;
  $Res call(
      {WorkIdentifier workIdentifier,
      DateTime createdOn,
      String developerId,
      TenderStatus tenderStatus,
      String? inviteEmailOne,
      String? inviteEmailTwo,
      Trade trade,
      String requirements,
      String instructions,
      LocationModel location,
      DateTime startDate,
      DateTime applicationDeadLine,
      DateTime queriesDate,
      DateTime submissionDate,
      DateTime feedbackDate,
      DateTime awardDate,
      DateTime endDate,
      TenderTimeLineStatus tenderTimeLineStatus,
      bool feedbackByDeveloper,
      bool feedbackByContractor,
      List<TenderFeedback>? feedback});

  $WorkIdentifierCopyWith<$Res> get workIdentifier;
}

/// @nodoc
class _$TenderCopyWithImpl<$Res> implements $TenderCopyWith<$Res> {
  _$TenderCopyWithImpl(this._value, this._then);

  final Tender _value;
  // ignore: unused_field
  final $Res Function(Tender) _then;

  @override
  $Res call({
    Object? workIdentifier = freezed,
    Object? createdOn = freezed,
    Object? developerId = freezed,
    Object? tenderStatus = freezed,
    Object? inviteEmailOne = freezed,
    Object? inviteEmailTwo = freezed,
    Object? trade = freezed,
    Object? requirements = freezed,
    Object? instructions = freezed,
    Object? location = freezed,
    Object? startDate = freezed,
    Object? applicationDeadLine = freezed,
    Object? queriesDate = freezed,
    Object? submissionDate = freezed,
    Object? feedbackDate = freezed,
    Object? awardDate = freezed,
    Object? endDate = freezed,
    Object? tenderTimeLineStatus = freezed,
    Object? feedbackByDeveloper = freezed,
    Object? feedbackByContractor = freezed,
    Object? feedback = freezed,
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
      developerId: developerId == freezed
          ? _value.developerId
          : developerId // ignore: cast_nullable_to_non_nullable
              as String,
      tenderStatus: tenderStatus == freezed
          ? _value.tenderStatus
          : tenderStatus // ignore: cast_nullable_to_non_nullable
              as TenderStatus,
      inviteEmailOne: inviteEmailOne == freezed
          ? _value.inviteEmailOne
          : inviteEmailOne // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteEmailTwo: inviteEmailTwo == freezed
          ? _value.inviteEmailTwo
          : inviteEmailTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      trade: trade == freezed
          ? _value.trade
          : trade // ignore: cast_nullable_to_non_nullable
              as Trade,
      requirements: requirements == freezed
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      applicationDeadLine: applicationDeadLine == freezed
          ? _value.applicationDeadLine
          : applicationDeadLine // ignore: cast_nullable_to_non_nullable
              as DateTime,
      queriesDate: queriesDate == freezed
          ? _value.queriesDate
          : queriesDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      submissionDate: submissionDate == freezed
          ? _value.submissionDate
          : submissionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      feedbackDate: feedbackDate == freezed
          ? _value.feedbackDate
          : feedbackDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      awardDate: awardDate == freezed
          ? _value.awardDate
          : awardDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tenderTimeLineStatus: tenderTimeLineStatus == freezed
          ? _value.tenderTimeLineStatus
          : tenderTimeLineStatus // ignore: cast_nullable_to_non_nullable
              as TenderTimeLineStatus,
      feedbackByDeveloper: feedbackByDeveloper == freezed
          ? _value.feedbackByDeveloper
          : feedbackByDeveloper // ignore: cast_nullable_to_non_nullable
              as bool,
      feedbackByContractor: feedbackByContractor == freezed
          ? _value.feedbackByContractor
          : feedbackByContractor // ignore: cast_nullable_to_non_nullable
              as bool,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as List<TenderFeedback>?,
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
abstract class _$TenderCopyWith<$Res> implements $TenderCopyWith<$Res> {
  factory _$TenderCopyWith(_Tender value, $Res Function(_Tender) then) =
      __$TenderCopyWithImpl<$Res>;
  @override
  $Res call(
      {WorkIdentifier workIdentifier,
      DateTime createdOn,
      String developerId,
      TenderStatus tenderStatus,
      String? inviteEmailOne,
      String? inviteEmailTwo,
      Trade trade,
      String requirements,
      String instructions,
      LocationModel location,
      DateTime startDate,
      DateTime applicationDeadLine,
      DateTime queriesDate,
      DateTime submissionDate,
      DateTime feedbackDate,
      DateTime awardDate,
      DateTime endDate,
      TenderTimeLineStatus tenderTimeLineStatus,
      bool feedbackByDeveloper,
      bool feedbackByContractor,
      List<TenderFeedback>? feedback});

  @override
  $WorkIdentifierCopyWith<$Res> get workIdentifier;
}

/// @nodoc
class __$TenderCopyWithImpl<$Res> extends _$TenderCopyWithImpl<$Res>
    implements _$TenderCopyWith<$Res> {
  __$TenderCopyWithImpl(_Tender _value, $Res Function(_Tender) _then)
      : super(_value, (v) => _then(v as _Tender));

  @override
  _Tender get _value => super._value as _Tender;

  @override
  $Res call({
    Object? workIdentifier = freezed,
    Object? createdOn = freezed,
    Object? developerId = freezed,
    Object? tenderStatus = freezed,
    Object? inviteEmailOne = freezed,
    Object? inviteEmailTwo = freezed,
    Object? trade = freezed,
    Object? requirements = freezed,
    Object? instructions = freezed,
    Object? location = freezed,
    Object? startDate = freezed,
    Object? applicationDeadLine = freezed,
    Object? queriesDate = freezed,
    Object? submissionDate = freezed,
    Object? feedbackDate = freezed,
    Object? awardDate = freezed,
    Object? endDate = freezed,
    Object? tenderTimeLineStatus = freezed,
    Object? feedbackByDeveloper = freezed,
    Object? feedbackByContractor = freezed,
    Object? feedback = freezed,
  }) {
    return _then(_Tender(
      workIdentifier: workIdentifier == freezed
          ? _value.workIdentifier
          : workIdentifier // ignore: cast_nullable_to_non_nullable
              as WorkIdentifier,
      createdOn: createdOn == freezed
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      developerId: developerId == freezed
          ? _value.developerId
          : developerId // ignore: cast_nullable_to_non_nullable
              as String,
      tenderStatus: tenderStatus == freezed
          ? _value.tenderStatus
          : tenderStatus // ignore: cast_nullable_to_non_nullable
              as TenderStatus,
      inviteEmailOne: inviteEmailOne == freezed
          ? _value.inviteEmailOne
          : inviteEmailOne // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteEmailTwo: inviteEmailTwo == freezed
          ? _value.inviteEmailTwo
          : inviteEmailTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      trade: trade == freezed
          ? _value.trade
          : trade // ignore: cast_nullable_to_non_nullable
              as Trade,
      requirements: requirements == freezed
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      applicationDeadLine: applicationDeadLine == freezed
          ? _value.applicationDeadLine
          : applicationDeadLine // ignore: cast_nullable_to_non_nullable
              as DateTime,
      queriesDate: queriesDate == freezed
          ? _value.queriesDate
          : queriesDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      submissionDate: submissionDate == freezed
          ? _value.submissionDate
          : submissionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      feedbackDate: feedbackDate == freezed
          ? _value.feedbackDate
          : feedbackDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      awardDate: awardDate == freezed
          ? _value.awardDate
          : awardDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tenderTimeLineStatus: tenderTimeLineStatus == freezed
          ? _value.tenderTimeLineStatus
          : tenderTimeLineStatus // ignore: cast_nullable_to_non_nullable
              as TenderTimeLineStatus,
      feedbackByDeveloper: feedbackByDeveloper == freezed
          ? _value.feedbackByDeveloper
          : feedbackByDeveloper // ignore: cast_nullable_to_non_nullable
              as bool,
      feedbackByContractor: feedbackByContractor == freezed
          ? _value.feedbackByContractor
          : feedbackByContractor // ignore: cast_nullable_to_non_nullable
              as bool,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as List<TenderFeedback>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tender extends _Tender {
  const _$_Tender(
      {required this.workIdentifier,
      required this.createdOn,
      required this.developerId,
      required this.tenderStatus,
      required this.inviteEmailOne,
      required this.inviteEmailTwo,
      required this.trade,
      required this.requirements,
      required this.instructions,
      required this.location,
      required this.startDate,
      required this.applicationDeadLine,
      required this.queriesDate,
      required this.submissionDate,
      required this.feedbackDate,
      required this.awardDate,
      required this.endDate,
      required this.tenderTimeLineStatus,
      required this.feedbackByDeveloper,
      required this.feedbackByContractor,
      required this.feedback})
      : super._();

  factory _$_Tender.fromJson(Map<String, dynamic> json) =>
      _$$_TenderFromJson(json);

  @override
  final WorkIdentifier workIdentifier;
  @override
  final DateTime createdOn;
  @override
  final String developerId;
  @override
  final TenderStatus tenderStatus;
  @override
  final String? inviteEmailOne;
  @override
  final String? inviteEmailTwo;
  @override
  final Trade trade;
  @override
  final String requirements;
  @override
  final String instructions;
  @override
  final LocationModel location;
  @override
  final DateTime startDate;
  @override
  final DateTime applicationDeadLine;
  @override
  final DateTime queriesDate;
  @override
  final DateTime submissionDate;
  @override
  final DateTime feedbackDate;
  @override
  final DateTime awardDate;
  @override
  final DateTime endDate;
  @override
  final TenderTimeLineStatus tenderTimeLineStatus;
  @override
  final bool feedbackByDeveloper;
  @override
  final bool feedbackByContractor;
  @override
  final List<TenderFeedback>? feedback;

  @override
  String toString() {
    return 'Tender(workIdentifier: $workIdentifier, createdOn: $createdOn, developerId: $developerId, tenderStatus: $tenderStatus, inviteEmailOne: $inviteEmailOne, inviteEmailTwo: $inviteEmailTwo, trade: $trade, requirements: $requirements, instructions: $instructions, location: $location, startDate: $startDate, applicationDeadLine: $applicationDeadLine, queriesDate: $queriesDate, submissionDate: $submissionDate, feedbackDate: $feedbackDate, awardDate: $awardDate, endDate: $endDate, tenderTimeLineStatus: $tenderTimeLineStatus, feedbackByDeveloper: $feedbackByDeveloper, feedbackByContractor: $feedbackByContractor, feedback: $feedback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tender &&
            const DeepCollectionEquality()
                .equals(other.workIdentifier, workIdentifier) &&
            const DeepCollectionEquality().equals(other.createdOn, createdOn) &&
            const DeepCollectionEquality()
                .equals(other.developerId, developerId) &&
            const DeepCollectionEquality()
                .equals(other.tenderStatus, tenderStatus) &&
            const DeepCollectionEquality()
                .equals(other.inviteEmailOne, inviteEmailOne) &&
            const DeepCollectionEquality()
                .equals(other.inviteEmailTwo, inviteEmailTwo) &&
            const DeepCollectionEquality().equals(other.trade, trade) &&
            const DeepCollectionEquality()
                .equals(other.requirements, requirements) &&
            const DeepCollectionEquality()
                .equals(other.instructions, instructions) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality()
                .equals(other.applicationDeadLine, applicationDeadLine) &&
            const DeepCollectionEquality()
                .equals(other.queriesDate, queriesDate) &&
            const DeepCollectionEquality()
                .equals(other.submissionDate, submissionDate) &&
            const DeepCollectionEquality()
                .equals(other.feedbackDate, feedbackDate) &&
            const DeepCollectionEquality().equals(other.awardDate, awardDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.tenderTimeLineStatus, tenderTimeLineStatus) &&
            const DeepCollectionEquality()
                .equals(other.feedbackByDeveloper, feedbackByDeveloper) &&
            const DeepCollectionEquality()
                .equals(other.feedbackByContractor, feedbackByContractor) &&
            const DeepCollectionEquality().equals(other.feedback, feedback));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(workIdentifier),
        const DeepCollectionEquality().hash(createdOn),
        const DeepCollectionEquality().hash(developerId),
        const DeepCollectionEquality().hash(tenderStatus),
        const DeepCollectionEquality().hash(inviteEmailOne),
        const DeepCollectionEquality().hash(inviteEmailTwo),
        const DeepCollectionEquality().hash(trade),
        const DeepCollectionEquality().hash(requirements),
        const DeepCollectionEquality().hash(instructions),
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(startDate),
        const DeepCollectionEquality().hash(applicationDeadLine),
        const DeepCollectionEquality().hash(queriesDate),
        const DeepCollectionEquality().hash(submissionDate),
        const DeepCollectionEquality().hash(feedbackDate),
        const DeepCollectionEquality().hash(awardDate),
        const DeepCollectionEquality().hash(endDate),
        const DeepCollectionEquality().hash(tenderTimeLineStatus),
        const DeepCollectionEquality().hash(feedbackByDeveloper),
        const DeepCollectionEquality().hash(feedbackByContractor),
        const DeepCollectionEquality().hash(feedback)
      ]);

  @JsonKey(ignore: true)
  @override
  _$TenderCopyWith<_Tender> get copyWith =>
      __$TenderCopyWithImpl<_Tender>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TenderToJson(this);
  }
}

abstract class _Tender extends Tender {
  const factory _Tender(
      {required WorkIdentifier workIdentifier,
      required DateTime createdOn,
      required String developerId,
      required TenderStatus tenderStatus,
      required String? inviteEmailOne,
      required String? inviteEmailTwo,
      required Trade trade,
      required String requirements,
      required String instructions,
      required LocationModel location,
      required DateTime startDate,
      required DateTime applicationDeadLine,
      required DateTime queriesDate,
      required DateTime submissionDate,
      required DateTime feedbackDate,
      required DateTime awardDate,
      required DateTime endDate,
      required TenderTimeLineStatus tenderTimeLineStatus,
      required bool feedbackByDeveloper,
      required bool feedbackByContractor,
      required List<TenderFeedback>? feedback}) = _$_Tender;
  const _Tender._() : super._();

  factory _Tender.fromJson(Map<String, dynamic> json) = _$_Tender.fromJson;

  @override
  WorkIdentifier get workIdentifier;
  @override
  DateTime get createdOn;
  @override
  String get developerId;
  @override
  TenderStatus get tenderStatus;
  @override
  String? get inviteEmailOne;
  @override
  String? get inviteEmailTwo;
  @override
  Trade get trade;
  @override
  String get requirements;
  @override
  String get instructions;
  @override
  LocationModel get location;
  @override
  DateTime get startDate;
  @override
  DateTime get applicationDeadLine;
  @override
  DateTime get queriesDate;
  @override
  DateTime get submissionDate;
  @override
  DateTime get feedbackDate;
  @override
  DateTime get awardDate;
  @override
  DateTime get endDate;
  @override
  TenderTimeLineStatus get tenderTimeLineStatus;
  @override
  bool get feedbackByDeveloper;
  @override
  bool get feedbackByContractor;
  @override
  List<TenderFeedback>? get feedback;
  @override
  @JsonKey(ignore: true)
  _$TenderCopyWith<_Tender> get copyWith => throw _privateConstructorUsedError;
}
