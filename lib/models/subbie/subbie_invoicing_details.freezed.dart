// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subbie_invoicing_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubbieInvoicingDetails _$SubbieInvoicingDetailsFromJson(
    Map<String, dynamic> json) {
  return _SubbieInvoicingDetails.fromJson(json);
}

/// @nodoc
class _$SubbieInvoicingDetailsTearOff {
  const _$SubbieInvoicingDetailsTearOff();

  _SubbieInvoicingDetails call(
      {required String vatNumber,
      required String tradingName,
      required String companyNumber,
      required LocationModel registeredAddress,
      required LocationModel invoicingAddress}) {
    return _SubbieInvoicingDetails(
      vatNumber: vatNumber,
      tradingName: tradingName,
      companyNumber: companyNumber,
      registeredAddress: registeredAddress,
      invoicingAddress: invoicingAddress,
    );
  }

  SubbieInvoicingDetails fromJson(Map<String, Object> json) {
    return SubbieInvoicingDetails.fromJson(json);
  }
}

/// @nodoc
const $SubbieInvoicingDetails = _$SubbieInvoicingDetailsTearOff();

/// @nodoc
mixin _$SubbieInvoicingDetails {
  String get vatNumber => throw _privateConstructorUsedError;
  String get tradingName => throw _privateConstructorUsedError;
  String get companyNumber => throw _privateConstructorUsedError;
  LocationModel get registeredAddress => throw _privateConstructorUsedError;
  LocationModel get invoicingAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubbieInvoicingDetailsCopyWith<SubbieInvoicingDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubbieInvoicingDetailsCopyWith<$Res> {
  factory $SubbieInvoicingDetailsCopyWith(SubbieInvoicingDetails value,
          $Res Function(SubbieInvoicingDetails) then) =
      _$SubbieInvoicingDetailsCopyWithImpl<$Res>;
  $Res call(
      {String vatNumber,
      String tradingName,
      String companyNumber,
      LocationModel registeredAddress,
      LocationModel invoicingAddress});
}

/// @nodoc
class _$SubbieInvoicingDetailsCopyWithImpl<$Res>
    implements $SubbieInvoicingDetailsCopyWith<$Res> {
  _$SubbieInvoicingDetailsCopyWithImpl(this._value, this._then);

  final SubbieInvoicingDetails _value;
  // ignore: unused_field
  final $Res Function(SubbieInvoicingDetails) _then;

  @override
  $Res call({
    Object? vatNumber = freezed,
    Object? tradingName = freezed,
    Object? companyNumber = freezed,
    Object? registeredAddress = freezed,
    Object? invoicingAddress = freezed,
  }) {
    return _then(_value.copyWith(
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as String,
      tradingName: tradingName == freezed
          ? _value.tradingName
          : tradingName // ignore: cast_nullable_to_non_nullable
              as String,
      companyNumber: companyNumber == freezed
          ? _value.companyNumber
          : companyNumber // ignore: cast_nullable_to_non_nullable
              as String,
      registeredAddress: registeredAddress == freezed
          ? _value.registeredAddress
          : registeredAddress // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      invoicingAddress: invoicingAddress == freezed
          ? _value.invoicingAddress
          : invoicingAddress // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc
abstract class _$SubbieInvoicingDetailsCopyWith<$Res>
    implements $SubbieInvoicingDetailsCopyWith<$Res> {
  factory _$SubbieInvoicingDetailsCopyWith(_SubbieInvoicingDetails value,
          $Res Function(_SubbieInvoicingDetails) then) =
      __$SubbieInvoicingDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String vatNumber,
      String tradingName,
      String companyNumber,
      LocationModel registeredAddress,
      LocationModel invoicingAddress});
}

/// @nodoc
class __$SubbieInvoicingDetailsCopyWithImpl<$Res>
    extends _$SubbieInvoicingDetailsCopyWithImpl<$Res>
    implements _$SubbieInvoicingDetailsCopyWith<$Res> {
  __$SubbieInvoicingDetailsCopyWithImpl(_SubbieInvoicingDetails _value,
      $Res Function(_SubbieInvoicingDetails) _then)
      : super(_value, (v) => _then(v as _SubbieInvoicingDetails));

  @override
  _SubbieInvoicingDetails get _value => super._value as _SubbieInvoicingDetails;

  @override
  $Res call({
    Object? vatNumber = freezed,
    Object? tradingName = freezed,
    Object? companyNumber = freezed,
    Object? registeredAddress = freezed,
    Object? invoicingAddress = freezed,
  }) {
    return _then(_SubbieInvoicingDetails(
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as String,
      tradingName: tradingName == freezed
          ? _value.tradingName
          : tradingName // ignore: cast_nullable_to_non_nullable
              as String,
      companyNumber: companyNumber == freezed
          ? _value.companyNumber
          : companyNumber // ignore: cast_nullable_to_non_nullable
              as String,
      registeredAddress: registeredAddress == freezed
          ? _value.registeredAddress
          : registeredAddress // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      invoicingAddress: invoicingAddress == freezed
          ? _value.invoicingAddress
          : invoicingAddress // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubbieInvoicingDetails implements _SubbieInvoicingDetails {
  _$_SubbieInvoicingDetails(
      {required this.vatNumber,
      required this.tradingName,
      required this.companyNumber,
      required this.registeredAddress,
      required this.invoicingAddress});

  factory _$_SubbieInvoicingDetails.fromJson(Map<String, dynamic> json) =>
      _$$_SubbieInvoicingDetailsFromJson(json);

  @override
  final String vatNumber;
  @override
  final String tradingName;
  @override
  final String companyNumber;
  @override
  final LocationModel registeredAddress;
  @override
  final LocationModel invoicingAddress;

  @override
  String toString() {
    return 'SubbieInvoicingDetails(vatNumber: $vatNumber, tradingName: $tradingName, companyNumber: $companyNumber, registeredAddress: $registeredAddress, invoicingAddress: $invoicingAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubbieInvoicingDetails &&
            (identical(other.vatNumber, vatNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vatNumber, vatNumber)) &&
            (identical(other.tradingName, tradingName) ||
                const DeepCollectionEquality()
                    .equals(other.tradingName, tradingName)) &&
            (identical(other.companyNumber, companyNumber) ||
                const DeepCollectionEquality()
                    .equals(other.companyNumber, companyNumber)) &&
            (identical(other.registeredAddress, registeredAddress) ||
                const DeepCollectionEquality()
                    .equals(other.registeredAddress, registeredAddress)) &&
            (identical(other.invoicingAddress, invoicingAddress) ||
                const DeepCollectionEquality()
                    .equals(other.invoicingAddress, invoicingAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(vatNumber) ^
      const DeepCollectionEquality().hash(tradingName) ^
      const DeepCollectionEquality().hash(companyNumber) ^
      const DeepCollectionEquality().hash(registeredAddress) ^
      const DeepCollectionEquality().hash(invoicingAddress);

  @JsonKey(ignore: true)
  @override
  _$SubbieInvoicingDetailsCopyWith<_SubbieInvoicingDetails> get copyWith =>
      __$SubbieInvoicingDetailsCopyWithImpl<_SubbieInvoicingDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubbieInvoicingDetailsToJson(this);
  }
}

abstract class _SubbieInvoicingDetails implements SubbieInvoicingDetails {
  factory _SubbieInvoicingDetails(
      {required String vatNumber,
      required String tradingName,
      required String companyNumber,
      required LocationModel registeredAddress,
      required LocationModel invoicingAddress}) = _$_SubbieInvoicingDetails;

  factory _SubbieInvoicingDetails.fromJson(Map<String, dynamic> json) =
      _$_SubbieInvoicingDetails.fromJson;

  @override
  String get vatNumber => throw _privateConstructorUsedError;
  @override
  String get tradingName => throw _privateConstructorUsedError;
  @override
  String get companyNumber => throw _privateConstructorUsedError;
  @override
  LocationModel get registeredAddress => throw _privateConstructorUsedError;
  @override
  LocationModel get invoicingAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubbieInvoicingDetailsCopyWith<_SubbieInvoicingDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
