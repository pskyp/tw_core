// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subbie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subbie _$SubbieFromJson(Map<String, dynamic> json) {
  return _Subbie.fromJson(json);
}

/// @nodoc
class _$SubbieTearOff {
  const _$SubbieTearOff();

  _Subbie call(
      {required TWUser basicProfile,
      required int totalJobs,
      required bool subscribed,
      required int searchRadius,
      required bool cscsVerified,
      required DateTime cscsValidTo,
      required List<dynamic> cscsQualifications,
      required DateTime subscriptionToggledOn,
      required List<Trade> selectedTrades,
      required UserBankDetails? userBankDetails,
      required double totalServiceQuality,
      required double totalProfessionalism,
      required double totalTimeManagement,
      @JsonKey(fromJson: employeeDetailsFromJson, toJson: employeeDetailsToJson)
          required Either<SoleTraderDetails, LimitedCompanyDetails>?
              invoicingDetails}) {
    return _Subbie(
      basicProfile: basicProfile,
      totalJobs: totalJobs,
      subscribed: subscribed,
      searchRadius: searchRadius,
      cscsVerified: cscsVerified,
      cscsValidTo: cscsValidTo,
      cscsQualifications: cscsQualifications,
      subscriptionToggledOn: subscriptionToggledOn,
      selectedTrades: selectedTrades,
      userBankDetails: userBankDetails,
      totalServiceQuality: totalServiceQuality,
      totalProfessionalism: totalProfessionalism,
      totalTimeManagement: totalTimeManagement,
      invoicingDetails: invoicingDetails,
    );
  }

  Subbie fromJson(Map<String, Object?> json) {
    return Subbie.fromJson(json);
  }
}

/// @nodoc
const $Subbie = _$SubbieTearOff();

/// @nodoc
mixin _$Subbie {
  TWUser get basicProfile => throw _privateConstructorUsedError;
  int get totalJobs => throw _privateConstructorUsedError;
  bool get subscribed => throw _privateConstructorUsedError;
  int get searchRadius => throw _privateConstructorUsedError;
  bool get cscsVerified => throw _privateConstructorUsedError;
  DateTime get cscsValidTo => throw _privateConstructorUsedError;
  List<dynamic> get cscsQualifications => throw _privateConstructorUsedError;
  DateTime get subscriptionToggledOn => throw _privateConstructorUsedError;
  List<Trade> get selectedTrades => throw _privateConstructorUsedError;
  UserBankDetails? get userBankDetails => throw _privateConstructorUsedError;
  double get totalServiceQuality => throw _privateConstructorUsedError;
  double get totalProfessionalism => throw _privateConstructorUsedError;
  double get totalTimeManagement => throw _privateConstructorUsedError;
  @JsonKey(fromJson: employeeDetailsFromJson, toJson: employeeDetailsToJson)
  Either<SoleTraderDetails, LimitedCompanyDetails>? get invoicingDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubbieCopyWith<Subbie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubbieCopyWith<$Res> {
  factory $SubbieCopyWith(Subbie value, $Res Function(Subbie) then) =
      _$SubbieCopyWithImpl<$Res>;
  $Res call(
      {TWUser basicProfile,
      int totalJobs,
      bool subscribed,
      int searchRadius,
      bool cscsVerified,
      DateTime cscsValidTo,
      List<dynamic> cscsQualifications,
      DateTime subscriptionToggledOn,
      List<Trade> selectedTrades,
      UserBankDetails? userBankDetails,
      double totalServiceQuality,
      double totalProfessionalism,
      double totalTimeManagement,
      @JsonKey(fromJson: employeeDetailsFromJson, toJson: employeeDetailsToJson)
          Either<SoleTraderDetails, LimitedCompanyDetails>? invoicingDetails});

  $UserBankDetailsCopyWith<$Res>? get userBankDetails;
}

/// @nodoc
class _$SubbieCopyWithImpl<$Res> implements $SubbieCopyWith<$Res> {
  _$SubbieCopyWithImpl(this._value, this._then);

  final Subbie _value;
  // ignore: unused_field
  final $Res Function(Subbie) _then;

  @override
  $Res call({
    Object? basicProfile = freezed,
    Object? totalJobs = freezed,
    Object? subscribed = freezed,
    Object? searchRadius = freezed,
    Object? cscsVerified = freezed,
    Object? cscsValidTo = freezed,
    Object? cscsQualifications = freezed,
    Object? subscriptionToggledOn = freezed,
    Object? selectedTrades = freezed,
    Object? userBankDetails = freezed,
    Object? totalServiceQuality = freezed,
    Object? totalProfessionalism = freezed,
    Object? totalTimeManagement = freezed,
    Object? invoicingDetails = freezed,
  }) {
    return _then(_value.copyWith(
      basicProfile: basicProfile == freezed
          ? _value.basicProfile
          : basicProfile // ignore: cast_nullable_to_non_nullable
              as TWUser,
      totalJobs: totalJobs == freezed
          ? _value.totalJobs
          : totalJobs // ignore: cast_nullable_to_non_nullable
              as int,
      subscribed: subscribed == freezed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      searchRadius: searchRadius == freezed
          ? _value.searchRadius
          : searchRadius // ignore: cast_nullable_to_non_nullable
              as int,
      cscsVerified: cscsVerified == freezed
          ? _value.cscsVerified
          : cscsVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      cscsValidTo: cscsValidTo == freezed
          ? _value.cscsValidTo
          : cscsValidTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cscsQualifications: cscsQualifications == freezed
          ? _value.cscsQualifications
          : cscsQualifications // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      subscriptionToggledOn: subscriptionToggledOn == freezed
          ? _value.subscriptionToggledOn
          : subscriptionToggledOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedTrades: selectedTrades == freezed
          ? _value.selectedTrades
          : selectedTrades // ignore: cast_nullable_to_non_nullable
              as List<Trade>,
      userBankDetails: userBankDetails == freezed
          ? _value.userBankDetails
          : userBankDetails // ignore: cast_nullable_to_non_nullable
              as UserBankDetails?,
      totalServiceQuality: totalServiceQuality == freezed
          ? _value.totalServiceQuality
          : totalServiceQuality // ignore: cast_nullable_to_non_nullable
              as double,
      totalProfessionalism: totalProfessionalism == freezed
          ? _value.totalProfessionalism
          : totalProfessionalism // ignore: cast_nullable_to_non_nullable
              as double,
      totalTimeManagement: totalTimeManagement == freezed
          ? _value.totalTimeManagement
          : totalTimeManagement // ignore: cast_nullable_to_non_nullable
              as double,
      invoicingDetails: invoicingDetails == freezed
          ? _value.invoicingDetails
          : invoicingDetails // ignore: cast_nullable_to_non_nullable
              as Either<SoleTraderDetails, LimitedCompanyDetails>?,
    ));
  }

  @override
  $UserBankDetailsCopyWith<$Res>? get userBankDetails {
    if (_value.userBankDetails == null) {
      return null;
    }

    return $UserBankDetailsCopyWith<$Res>(_value.userBankDetails!, (value) {
      return _then(_value.copyWith(userBankDetails: value));
    });
  }
}

/// @nodoc
abstract class _$SubbieCopyWith<$Res> implements $SubbieCopyWith<$Res> {
  factory _$SubbieCopyWith(_Subbie value, $Res Function(_Subbie) then) =
      __$SubbieCopyWithImpl<$Res>;
  @override
  $Res call(
      {TWUser basicProfile,
      int totalJobs,
      bool subscribed,
      int searchRadius,
      bool cscsVerified,
      DateTime cscsValidTo,
      List<dynamic> cscsQualifications,
      DateTime subscriptionToggledOn,
      List<Trade> selectedTrades,
      UserBankDetails? userBankDetails,
      double totalServiceQuality,
      double totalProfessionalism,
      double totalTimeManagement,
      @JsonKey(fromJson: employeeDetailsFromJson, toJson: employeeDetailsToJson)
          Either<SoleTraderDetails, LimitedCompanyDetails>? invoicingDetails});

  @override
  $UserBankDetailsCopyWith<$Res>? get userBankDetails;
}

/// @nodoc
class __$SubbieCopyWithImpl<$Res> extends _$SubbieCopyWithImpl<$Res>
    implements _$SubbieCopyWith<$Res> {
  __$SubbieCopyWithImpl(_Subbie _value, $Res Function(_Subbie) _then)
      : super(_value, (v) => _then(v as _Subbie));

  @override
  _Subbie get _value => super._value as _Subbie;

  @override
  $Res call({
    Object? basicProfile = freezed,
    Object? totalJobs = freezed,
    Object? subscribed = freezed,
    Object? searchRadius = freezed,
    Object? cscsVerified = freezed,
    Object? cscsValidTo = freezed,
    Object? cscsQualifications = freezed,
    Object? subscriptionToggledOn = freezed,
    Object? selectedTrades = freezed,
    Object? userBankDetails = freezed,
    Object? totalServiceQuality = freezed,
    Object? totalProfessionalism = freezed,
    Object? totalTimeManagement = freezed,
    Object? invoicingDetails = freezed,
  }) {
    return _then(_Subbie(
      basicProfile: basicProfile == freezed
          ? _value.basicProfile
          : basicProfile // ignore: cast_nullable_to_non_nullable
              as TWUser,
      totalJobs: totalJobs == freezed
          ? _value.totalJobs
          : totalJobs // ignore: cast_nullable_to_non_nullable
              as int,
      subscribed: subscribed == freezed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      searchRadius: searchRadius == freezed
          ? _value.searchRadius
          : searchRadius // ignore: cast_nullable_to_non_nullable
              as int,
      cscsVerified: cscsVerified == freezed
          ? _value.cscsVerified
          : cscsVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      cscsValidTo: cscsValidTo == freezed
          ? _value.cscsValidTo
          : cscsValidTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cscsQualifications: cscsQualifications == freezed
          ? _value.cscsQualifications
          : cscsQualifications // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      subscriptionToggledOn: subscriptionToggledOn == freezed
          ? _value.subscriptionToggledOn
          : subscriptionToggledOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedTrades: selectedTrades == freezed
          ? _value.selectedTrades
          : selectedTrades // ignore: cast_nullable_to_non_nullable
              as List<Trade>,
      userBankDetails: userBankDetails == freezed
          ? _value.userBankDetails
          : userBankDetails // ignore: cast_nullable_to_non_nullable
              as UserBankDetails?,
      totalServiceQuality: totalServiceQuality == freezed
          ? _value.totalServiceQuality
          : totalServiceQuality // ignore: cast_nullable_to_non_nullable
              as double,
      totalProfessionalism: totalProfessionalism == freezed
          ? _value.totalProfessionalism
          : totalProfessionalism // ignore: cast_nullable_to_non_nullable
              as double,
      totalTimeManagement: totalTimeManagement == freezed
          ? _value.totalTimeManagement
          : totalTimeManagement // ignore: cast_nullable_to_non_nullable
              as double,
      invoicingDetails: invoicingDetails == freezed
          ? _value.invoicingDetails
          : invoicingDetails // ignore: cast_nullable_to_non_nullable
              as Either<SoleTraderDetails, LimitedCompanyDetails>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subbie extends _Subbie {
  _$_Subbie(
      {required this.basicProfile,
      required this.totalJobs,
      required this.subscribed,
      required this.searchRadius,
      required this.cscsVerified,
      required this.cscsValidTo,
      required this.cscsQualifications,
      required this.subscriptionToggledOn,
      required this.selectedTrades,
      required this.userBankDetails,
      required this.totalServiceQuality,
      required this.totalProfessionalism,
      required this.totalTimeManagement,
      @JsonKey(fromJson: employeeDetailsFromJson, toJson: employeeDetailsToJson)
          required this.invoicingDetails})
      : super._();

  factory _$_Subbie.fromJson(Map<String, dynamic> json) =>
      _$$_SubbieFromJson(json);

  @override
  final TWUser basicProfile;
  @override
  final int totalJobs;
  @override
  final bool subscribed;
  @override
  final int searchRadius;
  @override
  final bool cscsVerified;
  @override
  final DateTime cscsValidTo;
  @override
  final List<dynamic> cscsQualifications;
  @override
  final DateTime subscriptionToggledOn;
  @override
  final List<Trade> selectedTrades;
  @override
  final UserBankDetails? userBankDetails;
  @override
  final double totalServiceQuality;
  @override
  final double totalProfessionalism;
  @override
  final double totalTimeManagement;
  @override
  @JsonKey(fromJson: employeeDetailsFromJson, toJson: employeeDetailsToJson)
  final Either<SoleTraderDetails, LimitedCompanyDetails>? invoicingDetails;

  @override
  String toString() {
    return 'Subbie(basicProfile: $basicProfile, totalJobs: $totalJobs, subscribed: $subscribed, searchRadius: $searchRadius, cscsVerified: $cscsVerified, cscsValidTo: $cscsValidTo, cscsQualifications: $cscsQualifications, subscriptionToggledOn: $subscriptionToggledOn, selectedTrades: $selectedTrades, userBankDetails: $userBankDetails, totalServiceQuality: $totalServiceQuality, totalProfessionalism: $totalProfessionalism, totalTimeManagement: $totalTimeManagement, invoicingDetails: $invoicingDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Subbie &&
            const DeepCollectionEquality()
                .equals(other.basicProfile, basicProfile) &&
            const DeepCollectionEquality().equals(other.totalJobs, totalJobs) &&
            const DeepCollectionEquality()
                .equals(other.subscribed, subscribed) &&
            const DeepCollectionEquality()
                .equals(other.searchRadius, searchRadius) &&
            const DeepCollectionEquality()
                .equals(other.cscsVerified, cscsVerified) &&
            const DeepCollectionEquality()
                .equals(other.cscsValidTo, cscsValidTo) &&
            const DeepCollectionEquality()
                .equals(other.cscsQualifications, cscsQualifications) &&
            const DeepCollectionEquality()
                .equals(other.subscriptionToggledOn, subscriptionToggledOn) &&
            const DeepCollectionEquality()
                .equals(other.selectedTrades, selectedTrades) &&
            const DeepCollectionEquality()
                .equals(other.userBankDetails, userBankDetails) &&
            const DeepCollectionEquality()
                .equals(other.totalServiceQuality, totalServiceQuality) &&
            const DeepCollectionEquality()
                .equals(other.totalProfessionalism, totalProfessionalism) &&
            const DeepCollectionEquality()
                .equals(other.totalTimeManagement, totalTimeManagement) &&
            const DeepCollectionEquality()
                .equals(other.invoicingDetails, invoicingDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(basicProfile),
      const DeepCollectionEquality().hash(totalJobs),
      const DeepCollectionEquality().hash(subscribed),
      const DeepCollectionEquality().hash(searchRadius),
      const DeepCollectionEquality().hash(cscsVerified),
      const DeepCollectionEquality().hash(cscsValidTo),
      const DeepCollectionEquality().hash(cscsQualifications),
      const DeepCollectionEquality().hash(subscriptionToggledOn),
      const DeepCollectionEquality().hash(selectedTrades),
      const DeepCollectionEquality().hash(userBankDetails),
      const DeepCollectionEquality().hash(totalServiceQuality),
      const DeepCollectionEquality().hash(totalProfessionalism),
      const DeepCollectionEquality().hash(totalTimeManagement),
      const DeepCollectionEquality().hash(invoicingDetails));

  @JsonKey(ignore: true)
  @override
  _$SubbieCopyWith<_Subbie> get copyWith =>
      __$SubbieCopyWithImpl<_Subbie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubbieToJson(this);
  }
}

abstract class _Subbie extends Subbie {
  factory _Subbie(
      {required TWUser basicProfile,
      required int totalJobs,
      required bool subscribed,
      required int searchRadius,
      required bool cscsVerified,
      required DateTime cscsValidTo,
      required List<dynamic> cscsQualifications,
      required DateTime subscriptionToggledOn,
      required List<Trade> selectedTrades,
      required UserBankDetails? userBankDetails,
      required double totalServiceQuality,
      required double totalProfessionalism,
      required double totalTimeManagement,
      @JsonKey(fromJson: employeeDetailsFromJson, toJson: employeeDetailsToJson)
          required Either<SoleTraderDetails, LimitedCompanyDetails>?
              invoicingDetails}) = _$_Subbie;
  _Subbie._() : super._();

  factory _Subbie.fromJson(Map<String, dynamic> json) = _$_Subbie.fromJson;

  @override
  TWUser get basicProfile;
  @override
  int get totalJobs;
  @override
  bool get subscribed;
  @override
  int get searchRadius;
  @override
  bool get cscsVerified;
  @override
  DateTime get cscsValidTo;
  @override
  List<dynamic> get cscsQualifications;
  @override
  DateTime get subscriptionToggledOn;
  @override
  List<Trade> get selectedTrades;
  @override
  UserBankDetails? get userBankDetails;
  @override
  double get totalServiceQuality;
  @override
  double get totalProfessionalism;
  @override
  double get totalTimeManagement;
  @override
  @JsonKey(fromJson: employeeDetailsFromJson, toJson: employeeDetailsToJson)
  Either<SoleTraderDetails, LimitedCompanyDetails>? get invoicingDetails;
  @override
  @JsonKey(ignore: true)
  _$SubbieCopyWith<_Subbie> get copyWith => throw _privateConstructorUsedError;
}
