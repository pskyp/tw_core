// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SoleTraderDetails _$SoleTraderDetailsFromJson(Map<String, dynamic> json) {
  return _SoleTraderDetails.fromJson(json);
}

/// @nodoc
class _$SoleTraderDetailsTearOff {
  const _$SoleTraderDetailsTearOff();

  _SoleTraderDetails call(
      {required String individualName,
      required String? businessName,
      required String correspondenceAddress}) {
    return _SoleTraderDetails(
      individualName: individualName,
      businessName: businessName,
      correspondenceAddress: correspondenceAddress,
    );
  }

  SoleTraderDetails fromJson(Map<String, Object?> json) {
    return SoleTraderDetails.fromJson(json);
  }
}

/// @nodoc
const $SoleTraderDetails = _$SoleTraderDetailsTearOff();

/// @nodoc
mixin _$SoleTraderDetails {
  String get individualName => throw _privateConstructorUsedError;
  String? get businessName => throw _privateConstructorUsedError;
  String get correspondenceAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoleTraderDetailsCopyWith<SoleTraderDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoleTraderDetailsCopyWith<$Res> {
  factory $SoleTraderDetailsCopyWith(
          SoleTraderDetails value, $Res Function(SoleTraderDetails) then) =
      _$SoleTraderDetailsCopyWithImpl<$Res>;
  $Res call(
      {String individualName,
      String? businessName,
      String correspondenceAddress});
}

/// @nodoc
class _$SoleTraderDetailsCopyWithImpl<$Res>
    implements $SoleTraderDetailsCopyWith<$Res> {
  _$SoleTraderDetailsCopyWithImpl(this._value, this._then);

  final SoleTraderDetails _value;
  // ignore: unused_field
  final $Res Function(SoleTraderDetails) _then;

  @override
  $Res call({
    Object? individualName = freezed,
    Object? businessName = freezed,
    Object? correspondenceAddress = freezed,
  }) {
    return _then(_value.copyWith(
      individualName: individualName == freezed
          ? _value.individualName
          : individualName // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      correspondenceAddress: correspondenceAddress == freezed
          ? _value.correspondenceAddress
          : correspondenceAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SoleTraderDetailsCopyWith<$Res>
    implements $SoleTraderDetailsCopyWith<$Res> {
  factory _$SoleTraderDetailsCopyWith(
          _SoleTraderDetails value, $Res Function(_SoleTraderDetails) then) =
      __$SoleTraderDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String individualName,
      String? businessName,
      String correspondenceAddress});
}

/// @nodoc
class __$SoleTraderDetailsCopyWithImpl<$Res>
    extends _$SoleTraderDetailsCopyWithImpl<$Res>
    implements _$SoleTraderDetailsCopyWith<$Res> {
  __$SoleTraderDetailsCopyWithImpl(
      _SoleTraderDetails _value, $Res Function(_SoleTraderDetails) _then)
      : super(_value, (v) => _then(v as _SoleTraderDetails));

  @override
  _SoleTraderDetails get _value => super._value as _SoleTraderDetails;

  @override
  $Res call({
    Object? individualName = freezed,
    Object? businessName = freezed,
    Object? correspondenceAddress = freezed,
  }) {
    return _then(_SoleTraderDetails(
      individualName: individualName == freezed
          ? _value.individualName
          : individualName // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      correspondenceAddress: correspondenceAddress == freezed
          ? _value.correspondenceAddress
          : correspondenceAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SoleTraderDetails implements _SoleTraderDetails {
  _$_SoleTraderDetails(
      {required this.individualName,
      required this.businessName,
      required this.correspondenceAddress});

  factory _$_SoleTraderDetails.fromJson(Map<String, dynamic> json) =>
      _$$_SoleTraderDetailsFromJson(json);

  @override
  final String individualName;
  @override
  final String? businessName;
  @override
  final String correspondenceAddress;

  @override
  String toString() {
    return 'SoleTraderDetails(individualName: $individualName, businessName: $businessName, correspondenceAddress: $correspondenceAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SoleTraderDetails &&
            const DeepCollectionEquality()
                .equals(other.individualName, individualName) &&
            const DeepCollectionEquality()
                .equals(other.businessName, businessName) &&
            const DeepCollectionEquality()
                .equals(other.correspondenceAddress, correspondenceAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(individualName),
      const DeepCollectionEquality().hash(businessName),
      const DeepCollectionEquality().hash(correspondenceAddress));

  @JsonKey(ignore: true)
  @override
  _$SoleTraderDetailsCopyWith<_SoleTraderDetails> get copyWith =>
      __$SoleTraderDetailsCopyWithImpl<_SoleTraderDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SoleTraderDetailsToJson(this);
  }
}

abstract class _SoleTraderDetails implements SoleTraderDetails {
  factory _SoleTraderDetails(
      {required String individualName,
      required String? businessName,
      required String correspondenceAddress}) = _$_SoleTraderDetails;

  factory _SoleTraderDetails.fromJson(Map<String, dynamic> json) =
      _$_SoleTraderDetails.fromJson;

  @override
  String get individualName;
  @override
  String? get businessName;
  @override
  String get correspondenceAddress;
  @override
  @JsonKey(ignore: true)
  _$SoleTraderDetailsCopyWith<_SoleTraderDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

LimitedCompanyDetails _$LimitedCompanyDetailsFromJson(
    Map<String, dynamic> json) {
  return _LimitedCompanyDetails.fromJson(json);
}

/// @nodoc
class _$LimitedCompanyDetailsTearOff {
  const _$LimitedCompanyDetailsTearOff();

  _LimitedCompanyDetails call(
      {required String companyName,
      required String location,
      required String companyNumber,
      required String? vatNumber,
      required LocationModel invoiceAddress,
      required LocationModel companyRegisteredAddress}) {
    return _LimitedCompanyDetails(
      companyName: companyName,
      location: location,
      companyNumber: companyNumber,
      vatNumber: vatNumber,
      invoiceAddress: invoiceAddress,
      companyRegisteredAddress: companyRegisteredAddress,
    );
  }

  LimitedCompanyDetails fromJson(Map<String, Object?> json) {
    return LimitedCompanyDetails.fromJson(json);
  }
}

/// @nodoc
const $LimitedCompanyDetails = _$LimitedCompanyDetailsTearOff();

/// @nodoc
mixin _$LimitedCompanyDetails {
  String get companyName => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get companyNumber => throw _privateConstructorUsedError;
  String? get vatNumber => throw _privateConstructorUsedError;
  LocationModel get invoiceAddress => throw _privateConstructorUsedError;
  LocationModel get companyRegisteredAddress =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LimitedCompanyDetailsCopyWith<LimitedCompanyDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LimitedCompanyDetailsCopyWith<$Res> {
  factory $LimitedCompanyDetailsCopyWith(LimitedCompanyDetails value,
          $Res Function(LimitedCompanyDetails) then) =
      _$LimitedCompanyDetailsCopyWithImpl<$Res>;
  $Res call(
      {String companyName,
      String location,
      String companyNumber,
      String? vatNumber,
      LocationModel invoiceAddress,
      LocationModel companyRegisteredAddress});
}

/// @nodoc
class _$LimitedCompanyDetailsCopyWithImpl<$Res>
    implements $LimitedCompanyDetailsCopyWith<$Res> {
  _$LimitedCompanyDetailsCopyWithImpl(this._value, this._then);

  final LimitedCompanyDetails _value;
  // ignore: unused_field
  final $Res Function(LimitedCompanyDetails) _then;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? location = freezed,
    Object? companyNumber = freezed,
    Object? vatNumber = freezed,
    Object? invoiceAddress = freezed,
    Object? companyRegisteredAddress = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      companyNumber: companyNumber == freezed
          ? _value.companyNumber
          : companyNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceAddress: invoiceAddress == freezed
          ? _value.invoiceAddress
          : invoiceAddress // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      companyRegisteredAddress: companyRegisteredAddress == freezed
          ? _value.companyRegisteredAddress
          : companyRegisteredAddress // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc
abstract class _$LimitedCompanyDetailsCopyWith<$Res>
    implements $LimitedCompanyDetailsCopyWith<$Res> {
  factory _$LimitedCompanyDetailsCopyWith(_LimitedCompanyDetails value,
          $Res Function(_LimitedCompanyDetails) then) =
      __$LimitedCompanyDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String companyName,
      String location,
      String companyNumber,
      String? vatNumber,
      LocationModel invoiceAddress,
      LocationModel companyRegisteredAddress});
}

/// @nodoc
class __$LimitedCompanyDetailsCopyWithImpl<$Res>
    extends _$LimitedCompanyDetailsCopyWithImpl<$Res>
    implements _$LimitedCompanyDetailsCopyWith<$Res> {
  __$LimitedCompanyDetailsCopyWithImpl(_LimitedCompanyDetails _value,
      $Res Function(_LimitedCompanyDetails) _then)
      : super(_value, (v) => _then(v as _LimitedCompanyDetails));

  @override
  _LimitedCompanyDetails get _value => super._value as _LimitedCompanyDetails;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? location = freezed,
    Object? companyNumber = freezed,
    Object? vatNumber = freezed,
    Object? invoiceAddress = freezed,
    Object? companyRegisteredAddress = freezed,
  }) {
    return _then(_LimitedCompanyDetails(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      companyNumber: companyNumber == freezed
          ? _value.companyNumber
          : companyNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceAddress: invoiceAddress == freezed
          ? _value.invoiceAddress
          : invoiceAddress // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      companyRegisteredAddress: companyRegisteredAddress == freezed
          ? _value.companyRegisteredAddress
          : companyRegisteredAddress // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LimitedCompanyDetails implements _LimitedCompanyDetails {
  _$_LimitedCompanyDetails(
      {required this.companyName,
      required this.location,
      required this.companyNumber,
      required this.vatNumber,
      required this.invoiceAddress,
      required this.companyRegisteredAddress});

  factory _$_LimitedCompanyDetails.fromJson(Map<String, dynamic> json) =>
      _$$_LimitedCompanyDetailsFromJson(json);

  @override
  final String companyName;
  @override
  final String location;
  @override
  final String companyNumber;
  @override
  final String? vatNumber;
  @override
  final LocationModel invoiceAddress;
  @override
  final LocationModel companyRegisteredAddress;

  @override
  String toString() {
    return 'LimitedCompanyDetails(companyName: $companyName, location: $location, companyNumber: $companyNumber, vatNumber: $vatNumber, invoiceAddress: $invoiceAddress, companyRegisteredAddress: $companyRegisteredAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LimitedCompanyDetails &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.companyNumber, companyNumber) &&
            const DeepCollectionEquality().equals(other.vatNumber, vatNumber) &&
            const DeepCollectionEquality()
                .equals(other.invoiceAddress, invoiceAddress) &&
            const DeepCollectionEquality().equals(
                other.companyRegisteredAddress, companyRegisteredAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(companyName),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(companyNumber),
      const DeepCollectionEquality().hash(vatNumber),
      const DeepCollectionEquality().hash(invoiceAddress),
      const DeepCollectionEquality().hash(companyRegisteredAddress));

  @JsonKey(ignore: true)
  @override
  _$LimitedCompanyDetailsCopyWith<_LimitedCompanyDetails> get copyWith =>
      __$LimitedCompanyDetailsCopyWithImpl<_LimitedCompanyDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LimitedCompanyDetailsToJson(this);
  }
}

abstract class _LimitedCompanyDetails implements LimitedCompanyDetails {
  factory _LimitedCompanyDetails(
          {required String companyName,
          required String location,
          required String companyNumber,
          required String? vatNumber,
          required LocationModel invoiceAddress,
          required LocationModel companyRegisteredAddress}) =
      _$_LimitedCompanyDetails;

  factory _LimitedCompanyDetails.fromJson(Map<String, dynamic> json) =
      _$_LimitedCompanyDetails.fromJson;

  @override
  String get companyName;
  @override
  String get location;
  @override
  String get companyNumber;
  @override
  String? get vatNumber;
  @override
  LocationModel get invoiceAddress;
  @override
  LocationModel get companyRegisteredAddress;
  @override
  @JsonKey(ignore: true)
  _$LimitedCompanyDetailsCopyWith<_LimitedCompanyDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
class _$InvoiceTearOff {
  const _$InvoiceTearOff();

  _Invoice call(
      {required BidIdentifier bidIdentifier,
      required DateTime paidOn,
      @JsonKey(name: 'employeeDetails', fromJson: employeeDetailsFromJson, toJson: employeeDetailsToJson)
          required Either<SoleTraderDetails, LimitedCompanyDetails>
              employeeDetails,
      required List<InvoiceItem> invoiceItems,
      required String invoiceID,
      required String invoiceReference,
      required String description,
      required DateTime invoiceDate,
      required int paymentTerm,
      required double amountPayable,
      required double netAmount,
      required double totalTax,
      required InvoiceStatus status}) {
    return _Invoice(
      bidIdentifier: bidIdentifier,
      paidOn: paidOn,
      employeeDetails: employeeDetails,
      invoiceItems: invoiceItems,
      invoiceID: invoiceID,
      invoiceReference: invoiceReference,
      description: description,
      invoiceDate: invoiceDate,
      paymentTerm: paymentTerm,
      amountPayable: amountPayable,
      netAmount: netAmount,
      totalTax: totalTax,
      status: status,
    );
  }

  Invoice fromJson(Map<String, Object?> json) {
    return Invoice.fromJson(json);
  }
}

/// @nodoc
const $Invoice = _$InvoiceTearOff();

/// @nodoc
mixin _$Invoice {
  BidIdentifier get bidIdentifier => throw _privateConstructorUsedError;
  DateTime get paidOn => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'employeeDetails',
      fromJson: employeeDetailsFromJson,
      toJson: employeeDetailsToJson)
  Either<SoleTraderDetails, LimitedCompanyDetails> get employeeDetails =>
      throw _privateConstructorUsedError;
  List<InvoiceItem> get invoiceItems => throw _privateConstructorUsedError;
  String get invoiceID => throw _privateConstructorUsedError;
  String get invoiceReference => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get invoiceDate => throw _privateConstructorUsedError;
  int get paymentTerm => throw _privateConstructorUsedError;
  double get amountPayable => throw _privateConstructorUsedError;
  double get netAmount => throw _privateConstructorUsedError;
  double get totalTax => throw _privateConstructorUsedError;
  InvoiceStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res>;
  $Res call(
      {BidIdentifier bidIdentifier,
      DateTime paidOn,
      @JsonKey(name: 'employeeDetails', fromJson: employeeDetailsFromJson, toJson: employeeDetailsToJson)
          Either<SoleTraderDetails, LimitedCompanyDetails> employeeDetails,
      List<InvoiceItem> invoiceItems,
      String invoiceID,
      String invoiceReference,
      String description,
      DateTime invoiceDate,
      int paymentTerm,
      double amountPayable,
      double netAmount,
      double totalTax,
      InvoiceStatus status});

  $BidIdentifierCopyWith<$Res> get bidIdentifier;
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res> implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  final Invoice _value;
  // ignore: unused_field
  final $Res Function(Invoice) _then;

  @override
  $Res call({
    Object? bidIdentifier = freezed,
    Object? paidOn = freezed,
    Object? employeeDetails = freezed,
    Object? invoiceItems = freezed,
    Object? invoiceID = freezed,
    Object? invoiceReference = freezed,
    Object? description = freezed,
    Object? invoiceDate = freezed,
    Object? paymentTerm = freezed,
    Object? amountPayable = freezed,
    Object? netAmount = freezed,
    Object? totalTax = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      bidIdentifier: bidIdentifier == freezed
          ? _value.bidIdentifier
          : bidIdentifier // ignore: cast_nullable_to_non_nullable
              as BidIdentifier,
      paidOn: paidOn == freezed
          ? _value.paidOn
          : paidOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      employeeDetails: employeeDetails == freezed
          ? _value.employeeDetails
          : employeeDetails // ignore: cast_nullable_to_non_nullable
              as Either<SoleTraderDetails, LimitedCompanyDetails>,
      invoiceItems: invoiceItems == freezed
          ? _value.invoiceItems
          : invoiceItems // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
      invoiceID: invoiceID == freezed
          ? _value.invoiceID
          : invoiceID // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceReference: invoiceReference == freezed
          ? _value.invoiceReference
          : invoiceReference // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDate: invoiceDate == freezed
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentTerm: paymentTerm == freezed
          ? _value.paymentTerm
          : paymentTerm // ignore: cast_nullable_to_non_nullable
              as int,
      amountPayable: amountPayable == freezed
          ? _value.amountPayable
          : amountPayable // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: netAmount == freezed
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalTax: totalTax == freezed
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as double,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatus,
    ));
  }

  @override
  $BidIdentifierCopyWith<$Res> get bidIdentifier {
    return $BidIdentifierCopyWith<$Res>(_value.bidIdentifier, (value) {
      return _then(_value.copyWith(bidIdentifier: value));
    });
  }
}

/// @nodoc
abstract class _$InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$InvoiceCopyWith(_Invoice value, $Res Function(_Invoice) then) =
      __$InvoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {BidIdentifier bidIdentifier,
      DateTime paidOn,
      @JsonKey(name: 'employeeDetails', fromJson: employeeDetailsFromJson, toJson: employeeDetailsToJson)
          Either<SoleTraderDetails, LimitedCompanyDetails> employeeDetails,
      List<InvoiceItem> invoiceItems,
      String invoiceID,
      String invoiceReference,
      String description,
      DateTime invoiceDate,
      int paymentTerm,
      double amountPayable,
      double netAmount,
      double totalTax,
      InvoiceStatus status});

  @override
  $BidIdentifierCopyWith<$Res> get bidIdentifier;
}

/// @nodoc
class __$InvoiceCopyWithImpl<$Res> extends _$InvoiceCopyWithImpl<$Res>
    implements _$InvoiceCopyWith<$Res> {
  __$InvoiceCopyWithImpl(_Invoice _value, $Res Function(_Invoice) _then)
      : super(_value, (v) => _then(v as _Invoice));

  @override
  _Invoice get _value => super._value as _Invoice;

  @override
  $Res call({
    Object? bidIdentifier = freezed,
    Object? paidOn = freezed,
    Object? employeeDetails = freezed,
    Object? invoiceItems = freezed,
    Object? invoiceID = freezed,
    Object? invoiceReference = freezed,
    Object? description = freezed,
    Object? invoiceDate = freezed,
    Object? paymentTerm = freezed,
    Object? amountPayable = freezed,
    Object? netAmount = freezed,
    Object? totalTax = freezed,
    Object? status = freezed,
  }) {
    return _then(_Invoice(
      bidIdentifier: bidIdentifier == freezed
          ? _value.bidIdentifier
          : bidIdentifier // ignore: cast_nullable_to_non_nullable
              as BidIdentifier,
      paidOn: paidOn == freezed
          ? _value.paidOn
          : paidOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      employeeDetails: employeeDetails == freezed
          ? _value.employeeDetails
          : employeeDetails // ignore: cast_nullable_to_non_nullable
              as Either<SoleTraderDetails, LimitedCompanyDetails>,
      invoiceItems: invoiceItems == freezed
          ? _value.invoiceItems
          : invoiceItems // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
      invoiceID: invoiceID == freezed
          ? _value.invoiceID
          : invoiceID // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceReference: invoiceReference == freezed
          ? _value.invoiceReference
          : invoiceReference // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDate: invoiceDate == freezed
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentTerm: paymentTerm == freezed
          ? _value.paymentTerm
          : paymentTerm // ignore: cast_nullable_to_non_nullable
              as int,
      amountPayable: amountPayable == freezed
          ? _value.amountPayable
          : amountPayable // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: netAmount == freezed
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalTax: totalTax == freezed
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as double,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Invoice implements _Invoice {
  const _$_Invoice(
      {required this.bidIdentifier,
      required this.paidOn,
      @JsonKey(name: 'employeeDetails', fromJson: employeeDetailsFromJson, toJson: employeeDetailsToJson)
          required this.employeeDetails,
      required this.invoiceItems,
      required this.invoiceID,
      required this.invoiceReference,
      required this.description,
      required this.invoiceDate,
      required this.paymentTerm,
      required this.amountPayable,
      required this.netAmount,
      required this.totalTax,
      required this.status});

  factory _$_Invoice.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceFromJson(json);

  @override
  final BidIdentifier bidIdentifier;
  @override
  final DateTime paidOn;
  @override
  @JsonKey(
      name: 'employeeDetails',
      fromJson: employeeDetailsFromJson,
      toJson: employeeDetailsToJson)
  final Either<SoleTraderDetails, LimitedCompanyDetails> employeeDetails;
  @override
  final List<InvoiceItem> invoiceItems;
  @override
  final String invoiceID;
  @override
  final String invoiceReference;
  @override
  final String description;
  @override
  final DateTime invoiceDate;
  @override
  final int paymentTerm;
  @override
  final double amountPayable;
  @override
  final double netAmount;
  @override
  final double totalTax;
  @override
  final InvoiceStatus status;

  @override
  String toString() {
    return 'Invoice(bidIdentifier: $bidIdentifier, paidOn: $paidOn, employeeDetails: $employeeDetails, invoiceItems: $invoiceItems, invoiceID: $invoiceID, invoiceReference: $invoiceReference, description: $description, invoiceDate: $invoiceDate, paymentTerm: $paymentTerm, amountPayable: $amountPayable, netAmount: $netAmount, totalTax: $totalTax, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Invoice &&
            const DeepCollectionEquality()
                .equals(other.bidIdentifier, bidIdentifier) &&
            const DeepCollectionEquality().equals(other.paidOn, paidOn) &&
            const DeepCollectionEquality()
                .equals(other.employeeDetails, employeeDetails) &&
            const DeepCollectionEquality()
                .equals(other.invoiceItems, invoiceItems) &&
            const DeepCollectionEquality().equals(other.invoiceID, invoiceID) &&
            const DeepCollectionEquality()
                .equals(other.invoiceReference, invoiceReference) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.invoiceDate, invoiceDate) &&
            const DeepCollectionEquality()
                .equals(other.paymentTerm, paymentTerm) &&
            const DeepCollectionEquality()
                .equals(other.amountPayable, amountPayable) &&
            const DeepCollectionEquality().equals(other.netAmount, netAmount) &&
            const DeepCollectionEquality().equals(other.totalTax, totalTax) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bidIdentifier),
      const DeepCollectionEquality().hash(paidOn),
      const DeepCollectionEquality().hash(employeeDetails),
      const DeepCollectionEquality().hash(invoiceItems),
      const DeepCollectionEquality().hash(invoiceID),
      const DeepCollectionEquality().hash(invoiceReference),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(invoiceDate),
      const DeepCollectionEquality().hash(paymentTerm),
      const DeepCollectionEquality().hash(amountPayable),
      const DeepCollectionEquality().hash(netAmount),
      const DeepCollectionEquality().hash(totalTax),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$InvoiceCopyWith<_Invoice> get copyWith =>
      __$InvoiceCopyWithImpl<_Invoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceToJson(this);
  }
}

abstract class _Invoice implements Invoice {
  const factory _Invoice(
      {required BidIdentifier bidIdentifier,
      required DateTime paidOn,
      @JsonKey(name: 'employeeDetails', fromJson: employeeDetailsFromJson, toJson: employeeDetailsToJson)
          required Either<SoleTraderDetails, LimitedCompanyDetails>
              employeeDetails,
      required List<InvoiceItem> invoiceItems,
      required String invoiceID,
      required String invoiceReference,
      required String description,
      required DateTime invoiceDate,
      required int paymentTerm,
      required double amountPayable,
      required double netAmount,
      required double totalTax,
      required InvoiceStatus status}) = _$_Invoice;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$_Invoice.fromJson;

  @override
  BidIdentifier get bidIdentifier;
  @override
  DateTime get paidOn;
  @override
  @JsonKey(
      name: 'employeeDetails',
      fromJson: employeeDetailsFromJson,
      toJson: employeeDetailsToJson)
  Either<SoleTraderDetails, LimitedCompanyDetails> get employeeDetails;
  @override
  List<InvoiceItem> get invoiceItems;
  @override
  String get invoiceID;
  @override
  String get invoiceReference;
  @override
  String get description;
  @override
  DateTime get invoiceDate;
  @override
  int get paymentTerm;
  @override
  double get amountPayable;
  @override
  double get netAmount;
  @override
  double get totalTax;
  @override
  InvoiceStatus get status;
  @override
  @JsonKey(ignore: true)
  _$InvoiceCopyWith<_Invoice> get copyWith =>
      throw _privateConstructorUsedError;
}
