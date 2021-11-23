// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contractor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Contractor _$ContractorFromJson(Map<String, dynamic> json) {
  return _Contractor.fromJson(json);
}

/// @nodoc
class _$ContractorTearOff {
  const _$ContractorTearOff();

  _Contractor call(
      {required TWUser basicProfile,
      required List<String> savedJobRequirements,
      required int totalJobs,
      required int totalRatings,
      required double totalCommunication,
      required double totalEnvironment,
      required double totalReliability,
      required bool subscribed,
      required DateTime subscriptionToggledOn,
      required ContractorCompanyDetails? companyDetails,
      UserBio? userBio,
      TWDocument? portfolioDocument}) {
    return _Contractor(
      basicProfile: basicProfile,
      savedJobRequirements: savedJobRequirements,
      totalJobs: totalJobs,
      totalRatings: totalRatings,
      totalCommunication: totalCommunication,
      totalEnvironment: totalEnvironment,
      totalReliability: totalReliability,
      subscribed: subscribed,
      subscriptionToggledOn: subscriptionToggledOn,
      companyDetails: companyDetails,
      userBio: userBio,
      portfolioDocument: portfolioDocument,
    );
  }

  Contractor fromJson(Map<String, Object> json) {
    return Contractor.fromJson(json);
  }
}

/// @nodoc
const $Contractor = _$ContractorTearOff();

/// @nodoc
mixin _$Contractor {
  TWUser get basicProfile => throw _privateConstructorUsedError;
  List<String> get savedJobRequirements => throw _privateConstructorUsedError;
  int get totalJobs => throw _privateConstructorUsedError;
  int get totalRatings => throw _privateConstructorUsedError;
  double get totalCommunication => throw _privateConstructorUsedError;
  double get totalEnvironment => throw _privateConstructorUsedError;
  double get totalReliability => throw _privateConstructorUsedError;
  bool get subscribed => throw _privateConstructorUsedError;
  DateTime get subscriptionToggledOn => throw _privateConstructorUsedError;
  ContractorCompanyDetails? get companyDetails =>
      throw _privateConstructorUsedError;
  UserBio? get userBio => throw _privateConstructorUsedError;
  TWDocument? get portfolioDocument => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractorCopyWith<Contractor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractorCopyWith<$Res> {
  factory $ContractorCopyWith(
          Contractor value, $Res Function(Contractor) then) =
      _$ContractorCopyWithImpl<$Res>;
  $Res call(
      {TWUser basicProfile,
      List<String> savedJobRequirements,
      int totalJobs,
      int totalRatings,
      double totalCommunication,
      double totalEnvironment,
      double totalReliability,
      bool subscribed,
      DateTime subscriptionToggledOn,
      ContractorCompanyDetails? companyDetails,
      UserBio? userBio,
      TWDocument? portfolioDocument});

  $ContractorCompanyDetailsCopyWith<$Res>? get companyDetails;
  $UserBioCopyWith<$Res>? get userBio;
  $TWDocumentCopyWith<$Res>? get portfolioDocument;
}

/// @nodoc
class _$ContractorCopyWithImpl<$Res> implements $ContractorCopyWith<$Res> {
  _$ContractorCopyWithImpl(this._value, this._then);

  final Contractor _value;
  // ignore: unused_field
  final $Res Function(Contractor) _then;

  @override
  $Res call({
    Object? basicProfile = freezed,
    Object? savedJobRequirements = freezed,
    Object? totalJobs = freezed,
    Object? totalRatings = freezed,
    Object? totalCommunication = freezed,
    Object? totalEnvironment = freezed,
    Object? totalReliability = freezed,
    Object? subscribed = freezed,
    Object? subscriptionToggledOn = freezed,
    Object? companyDetails = freezed,
    Object? userBio = freezed,
    Object? portfolioDocument = freezed,
  }) {
    return _then(_value.copyWith(
      basicProfile: basicProfile == freezed
          ? _value.basicProfile
          : basicProfile // ignore: cast_nullable_to_non_nullable
              as TWUser,
      savedJobRequirements: savedJobRequirements == freezed
          ? _value.savedJobRequirements
          : savedJobRequirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      totalJobs: totalJobs == freezed
          ? _value.totalJobs
          : totalJobs // ignore: cast_nullable_to_non_nullable
              as int,
      totalRatings: totalRatings == freezed
          ? _value.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as int,
      totalCommunication: totalCommunication == freezed
          ? _value.totalCommunication
          : totalCommunication // ignore: cast_nullable_to_non_nullable
              as double,
      totalEnvironment: totalEnvironment == freezed
          ? _value.totalEnvironment
          : totalEnvironment // ignore: cast_nullable_to_non_nullable
              as double,
      totalReliability: totalReliability == freezed
          ? _value.totalReliability
          : totalReliability // ignore: cast_nullable_to_non_nullable
              as double,
      subscribed: subscribed == freezed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriptionToggledOn: subscriptionToggledOn == freezed
          ? _value.subscriptionToggledOn
          : subscriptionToggledOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      companyDetails: companyDetails == freezed
          ? _value.companyDetails
          : companyDetails // ignore: cast_nullable_to_non_nullable
              as ContractorCompanyDetails?,
      userBio: userBio == freezed
          ? _value.userBio
          : userBio // ignore: cast_nullable_to_non_nullable
              as UserBio?,
      portfolioDocument: portfolioDocument == freezed
          ? _value.portfolioDocument
          : portfolioDocument // ignore: cast_nullable_to_non_nullable
              as TWDocument?,
    ));
  }

  @override
  $ContractorCompanyDetailsCopyWith<$Res>? get companyDetails {
    if (_value.companyDetails == null) {
      return null;
    }

    return $ContractorCompanyDetailsCopyWith<$Res>(_value.companyDetails!,
        (value) {
      return _then(_value.copyWith(companyDetails: value));
    });
  }

  @override
  $UserBioCopyWith<$Res>? get userBio {
    if (_value.userBio == null) {
      return null;
    }

    return $UserBioCopyWith<$Res>(_value.userBio!, (value) {
      return _then(_value.copyWith(userBio: value));
    });
  }

  @override
  $TWDocumentCopyWith<$Res>? get portfolioDocument {
    if (_value.portfolioDocument == null) {
      return null;
    }

    return $TWDocumentCopyWith<$Res>(_value.portfolioDocument!, (value) {
      return _then(_value.copyWith(portfolioDocument: value));
    });
  }
}

/// @nodoc
abstract class _$ContractorCopyWith<$Res> implements $ContractorCopyWith<$Res> {
  factory _$ContractorCopyWith(
          _Contractor value, $Res Function(_Contractor) then) =
      __$ContractorCopyWithImpl<$Res>;
  @override
  $Res call(
      {TWUser basicProfile,
      List<String> savedJobRequirements,
      int totalJobs,
      int totalRatings,
      double totalCommunication,
      double totalEnvironment,
      double totalReliability,
      bool subscribed,
      DateTime subscriptionToggledOn,
      ContractorCompanyDetails? companyDetails,
      UserBio? userBio,
      TWDocument? portfolioDocument});

  @override
  $ContractorCompanyDetailsCopyWith<$Res>? get companyDetails;
  @override
  $UserBioCopyWith<$Res>? get userBio;
  @override
  $TWDocumentCopyWith<$Res>? get portfolioDocument;
}

/// @nodoc
class __$ContractorCopyWithImpl<$Res> extends _$ContractorCopyWithImpl<$Res>
    implements _$ContractorCopyWith<$Res> {
  __$ContractorCopyWithImpl(
      _Contractor _value, $Res Function(_Contractor) _then)
      : super(_value, (v) => _then(v as _Contractor));

  @override
  _Contractor get _value => super._value as _Contractor;

  @override
  $Res call({
    Object? basicProfile = freezed,
    Object? savedJobRequirements = freezed,
    Object? totalJobs = freezed,
    Object? totalRatings = freezed,
    Object? totalCommunication = freezed,
    Object? totalEnvironment = freezed,
    Object? totalReliability = freezed,
    Object? subscribed = freezed,
    Object? subscriptionToggledOn = freezed,
    Object? companyDetails = freezed,
    Object? userBio = freezed,
    Object? portfolioDocument = freezed,
  }) {
    return _then(_Contractor(
      basicProfile: basicProfile == freezed
          ? _value.basicProfile
          : basicProfile // ignore: cast_nullable_to_non_nullable
              as TWUser,
      savedJobRequirements: savedJobRequirements == freezed
          ? _value.savedJobRequirements
          : savedJobRequirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      totalJobs: totalJobs == freezed
          ? _value.totalJobs
          : totalJobs // ignore: cast_nullable_to_non_nullable
              as int,
      totalRatings: totalRatings == freezed
          ? _value.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as int,
      totalCommunication: totalCommunication == freezed
          ? _value.totalCommunication
          : totalCommunication // ignore: cast_nullable_to_non_nullable
              as double,
      totalEnvironment: totalEnvironment == freezed
          ? _value.totalEnvironment
          : totalEnvironment // ignore: cast_nullable_to_non_nullable
              as double,
      totalReliability: totalReliability == freezed
          ? _value.totalReliability
          : totalReliability // ignore: cast_nullable_to_non_nullable
              as double,
      subscribed: subscribed == freezed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriptionToggledOn: subscriptionToggledOn == freezed
          ? _value.subscriptionToggledOn
          : subscriptionToggledOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      companyDetails: companyDetails == freezed
          ? _value.companyDetails
          : companyDetails // ignore: cast_nullable_to_non_nullable
              as ContractorCompanyDetails?,
      userBio: userBio == freezed
          ? _value.userBio
          : userBio // ignore: cast_nullable_to_non_nullable
              as UserBio?,
      portfolioDocument: portfolioDocument == freezed
          ? _value.portfolioDocument
          : portfolioDocument // ignore: cast_nullable_to_non_nullable
              as TWDocument?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Contractor extends _Contractor {
  const _$_Contractor(
      {required this.basicProfile,
      required this.savedJobRequirements,
      required this.totalJobs,
      required this.totalRatings,
      required this.totalCommunication,
      required this.totalEnvironment,
      required this.totalReliability,
      required this.subscribed,
      required this.subscriptionToggledOn,
      required this.companyDetails,
      this.userBio,
      this.portfolioDocument})
      : super._();

  factory _$_Contractor.fromJson(Map<String, dynamic> json) =>
      _$$_ContractorFromJson(json);

  @override
  final TWUser basicProfile;
  @override
  final List<String> savedJobRequirements;
  @override
  final int totalJobs;
  @override
  final int totalRatings;
  @override
  final double totalCommunication;
  @override
  final double totalEnvironment;
  @override
  final double totalReliability;
  @override
  final bool subscribed;
  @override
  final DateTime subscriptionToggledOn;
  @override
  final ContractorCompanyDetails? companyDetails;
  @override
  final UserBio? userBio;
  @override
  final TWDocument? portfolioDocument;

  @override
  String toString() {
    return 'Contractor(basicProfile: $basicProfile, savedJobRequirements: $savedJobRequirements, totalJobs: $totalJobs, totalRatings: $totalRatings, totalCommunication: $totalCommunication, totalEnvironment: $totalEnvironment, totalReliability: $totalReliability, subscribed: $subscribed, subscriptionToggledOn: $subscriptionToggledOn, companyDetails: $companyDetails, userBio: $userBio, portfolioDocument: $portfolioDocument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Contractor &&
            (identical(other.basicProfile, basicProfile) ||
                const DeepCollectionEquality()
                    .equals(other.basicProfile, basicProfile)) &&
            (identical(other.savedJobRequirements, savedJobRequirements) ||
                const DeepCollectionEquality().equals(
                    other.savedJobRequirements, savedJobRequirements)) &&
            (identical(other.totalJobs, totalJobs) ||
                const DeepCollectionEquality()
                    .equals(other.totalJobs, totalJobs)) &&
            (identical(other.totalRatings, totalRatings) ||
                const DeepCollectionEquality()
                    .equals(other.totalRatings, totalRatings)) &&
            (identical(other.totalCommunication, totalCommunication) ||
                const DeepCollectionEquality()
                    .equals(other.totalCommunication, totalCommunication)) &&
            (identical(other.totalEnvironment, totalEnvironment) ||
                const DeepCollectionEquality()
                    .equals(other.totalEnvironment, totalEnvironment)) &&
            (identical(other.totalReliability, totalReliability) ||
                const DeepCollectionEquality()
                    .equals(other.totalReliability, totalReliability)) &&
            (identical(other.subscribed, subscribed) ||
                const DeepCollectionEquality()
                    .equals(other.subscribed, subscribed)) &&
            (identical(other.subscriptionToggledOn, subscriptionToggledOn) ||
                const DeepCollectionEquality().equals(
                    other.subscriptionToggledOn, subscriptionToggledOn)) &&
            (identical(other.companyDetails, companyDetails) ||
                const DeepCollectionEquality()
                    .equals(other.companyDetails, companyDetails)) &&
            (identical(other.userBio, userBio) ||
                const DeepCollectionEquality()
                    .equals(other.userBio, userBio)) &&
            (identical(other.portfolioDocument, portfolioDocument) ||
                const DeepCollectionEquality()
                    .equals(other.portfolioDocument, portfolioDocument)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(basicProfile) ^
      const DeepCollectionEquality().hash(savedJobRequirements) ^
      const DeepCollectionEquality().hash(totalJobs) ^
      const DeepCollectionEquality().hash(totalRatings) ^
      const DeepCollectionEquality().hash(totalCommunication) ^
      const DeepCollectionEquality().hash(totalEnvironment) ^
      const DeepCollectionEquality().hash(totalReliability) ^
      const DeepCollectionEquality().hash(subscribed) ^
      const DeepCollectionEquality().hash(subscriptionToggledOn) ^
      const DeepCollectionEquality().hash(companyDetails) ^
      const DeepCollectionEquality().hash(userBio) ^
      const DeepCollectionEquality().hash(portfolioDocument);

  @JsonKey(ignore: true)
  @override
  _$ContractorCopyWith<_Contractor> get copyWith =>
      __$ContractorCopyWithImpl<_Contractor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContractorToJson(this);
  }
}

abstract class _Contractor extends Contractor {
  const factory _Contractor(
      {required TWUser basicProfile,
      required List<String> savedJobRequirements,
      required int totalJobs,
      required int totalRatings,
      required double totalCommunication,
      required double totalEnvironment,
      required double totalReliability,
      required bool subscribed,
      required DateTime subscriptionToggledOn,
      required ContractorCompanyDetails? companyDetails,
      UserBio? userBio,
      TWDocument? portfolioDocument}) = _$_Contractor;
  const _Contractor._() : super._();

  factory _Contractor.fromJson(Map<String, dynamic> json) =
      _$_Contractor.fromJson;

  @override
  TWUser get basicProfile => throw _privateConstructorUsedError;
  @override
  List<String> get savedJobRequirements => throw _privateConstructorUsedError;
  @override
  int get totalJobs => throw _privateConstructorUsedError;
  @override
  int get totalRatings => throw _privateConstructorUsedError;
  @override
  double get totalCommunication => throw _privateConstructorUsedError;
  @override
  double get totalEnvironment => throw _privateConstructorUsedError;
  @override
  double get totalReliability => throw _privateConstructorUsedError;
  @override
  bool get subscribed => throw _privateConstructorUsedError;
  @override
  DateTime get subscriptionToggledOn => throw _privateConstructorUsedError;
  @override
  ContractorCompanyDetails? get companyDetails =>
      throw _privateConstructorUsedError;
  @override
  UserBio? get userBio => throw _privateConstructorUsedError;
  @override
  TWDocument? get portfolioDocument => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContractorCopyWith<_Contractor> get copyWith =>
      throw _privateConstructorUsedError;
}
