// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contractor_company_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContractorCompanyDetails _$ContractorCompanyDetailsFromJson(
    Map<String, dynamic> json) {
  return _ContractorCompanyDetails.fromJson(json);
}

/// @nodoc
class _$ContractorCompanyDetailsTearOff {
  const _$ContractorCompanyDetailsTearOff();

  _ContractorCompanyDetails call(
      {required String companyName,
      required String companyNumber,
      required String vatNumber,
      required LocationModel registeredAddress,
      required LocationModel companyAddress}) {
    return _ContractorCompanyDetails(
      companyName: companyName,
      companyNumber: companyNumber,
      vatNumber: vatNumber,
      registeredAddress: registeredAddress,
      companyAddress: companyAddress,
    );
  }

  ContractorCompanyDetails fromJson(Map<String, Object> json) {
    return ContractorCompanyDetails.fromJson(json);
  }
}

/// @nodoc
const $ContractorCompanyDetails = _$ContractorCompanyDetailsTearOff();

/// @nodoc
mixin _$ContractorCompanyDetails {
  String get companyName => throw _privateConstructorUsedError;
  String get companyNumber => throw _privateConstructorUsedError;
  String get vatNumber => throw _privateConstructorUsedError;
  LocationModel get registeredAddress => throw _privateConstructorUsedError;
  LocationModel get companyAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractorCompanyDetailsCopyWith<ContractorCompanyDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractorCompanyDetailsCopyWith<$Res> {
  factory $ContractorCompanyDetailsCopyWith(ContractorCompanyDetails value,
          $Res Function(ContractorCompanyDetails) then) =
      _$ContractorCompanyDetailsCopyWithImpl<$Res>;
  $Res call(
      {String companyName,
      String companyNumber,
      String vatNumber,
      LocationModel registeredAddress,
      LocationModel companyAddress});
}

/// @nodoc
class _$ContractorCompanyDetailsCopyWithImpl<$Res>
    implements $ContractorCompanyDetailsCopyWith<$Res> {
  _$ContractorCompanyDetailsCopyWithImpl(this._value, this._then);

  final ContractorCompanyDetails _value;
  // ignore: unused_field
  final $Res Function(ContractorCompanyDetails) _then;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? companyNumber = freezed,
    Object? vatNumber = freezed,
    Object? registeredAddress = freezed,
    Object? companyAddress = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companyNumber: companyNumber == freezed
          ? _value.companyNumber
          : companyNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as String,
      registeredAddress: registeredAddress == freezed
          ? _value.registeredAddress
          : registeredAddress // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      companyAddress: companyAddress == freezed
          ? _value.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc
abstract class _$ContractorCompanyDetailsCopyWith<$Res>
    implements $ContractorCompanyDetailsCopyWith<$Res> {
  factory _$ContractorCompanyDetailsCopyWith(_ContractorCompanyDetails value,
          $Res Function(_ContractorCompanyDetails) then) =
      __$ContractorCompanyDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String companyName,
      String companyNumber,
      String vatNumber,
      LocationModel registeredAddress,
      LocationModel companyAddress});
}

/// @nodoc
class __$ContractorCompanyDetailsCopyWithImpl<$Res>
    extends _$ContractorCompanyDetailsCopyWithImpl<$Res>
    implements _$ContractorCompanyDetailsCopyWith<$Res> {
  __$ContractorCompanyDetailsCopyWithImpl(_ContractorCompanyDetails _value,
      $Res Function(_ContractorCompanyDetails) _then)
      : super(_value, (v) => _then(v as _ContractorCompanyDetails));

  @override
  _ContractorCompanyDetails get _value =>
      super._value as _ContractorCompanyDetails;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? companyNumber = freezed,
    Object? vatNumber = freezed,
    Object? registeredAddress = freezed,
    Object? companyAddress = freezed,
  }) {
    return _then(_ContractorCompanyDetails(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companyNumber: companyNumber == freezed
          ? _value.companyNumber
          : companyNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as String,
      registeredAddress: registeredAddress == freezed
          ? _value.registeredAddress
          : registeredAddress // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      companyAddress: companyAddress == freezed
          ? _value.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContractorCompanyDetails implements _ContractorCompanyDetails {
  _$_ContractorCompanyDetails(
      {required this.companyName,
      required this.companyNumber,
      required this.vatNumber,
      required this.registeredAddress,
      required this.companyAddress});

  factory _$_ContractorCompanyDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ContractorCompanyDetailsFromJson(json);

  @override
  final String companyName;
  @override
  final String companyNumber;
  @override
  final String vatNumber;
  @override
  final LocationModel registeredAddress;
  @override
  final LocationModel companyAddress;

  @override
  String toString() {
    return 'ContractorCompanyDetails(companyName: $companyName, companyNumber: $companyNumber, vatNumber: $vatNumber, registeredAddress: $registeredAddress, companyAddress: $companyAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContractorCompanyDetails &&
            (identical(other.companyName, companyName) ||
                const DeepCollectionEquality()
                    .equals(other.companyName, companyName)) &&
            (identical(other.companyNumber, companyNumber) ||
                const DeepCollectionEquality()
                    .equals(other.companyNumber, companyNumber)) &&
            (identical(other.vatNumber, vatNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vatNumber, vatNumber)) &&
            (identical(other.registeredAddress, registeredAddress) ||
                const DeepCollectionEquality()
                    .equals(other.registeredAddress, registeredAddress)) &&
            (identical(other.companyAddress, companyAddress) ||
                const DeepCollectionEquality()
                    .equals(other.companyAddress, companyAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(companyNumber) ^
      const DeepCollectionEquality().hash(vatNumber) ^
      const DeepCollectionEquality().hash(registeredAddress) ^
      const DeepCollectionEquality().hash(companyAddress);

  @JsonKey(ignore: true)
  @override
  _$ContractorCompanyDetailsCopyWith<_ContractorCompanyDetails> get copyWith =>
      __$ContractorCompanyDetailsCopyWithImpl<_ContractorCompanyDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContractorCompanyDetailsToJson(this);
  }
}

abstract class _ContractorCompanyDetails implements ContractorCompanyDetails {
  factory _ContractorCompanyDetails(
      {required String companyName,
      required String companyNumber,
      required String vatNumber,
      required LocationModel registeredAddress,
      required LocationModel companyAddress}) = _$_ContractorCompanyDetails;

  factory _ContractorCompanyDetails.fromJson(Map<String, dynamic> json) =
      _$_ContractorCompanyDetails.fromJson;

  @override
  String get companyName => throw _privateConstructorUsedError;
  @override
  String get companyNumber => throw _privateConstructorUsedError;
  @override
  String get vatNumber => throw _privateConstructorUsedError;
  @override
  LocationModel get registeredAddress => throw _privateConstructorUsedError;
  @override
  LocationModel get companyAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContractorCompanyDetailsCopyWith<_ContractorCompanyDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
