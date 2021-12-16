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

/// @nodoc
class _$IndividualInvoiceDetailsTearOff {
  const _$IndividualInvoiceDetailsTearOff();

  _IndividualInvoiceDetails call(
      {required String companyName,
      required String companyNumber,
      required String registeredAddress}) {
    return _IndividualInvoiceDetails(
      companyName: companyName,
      companyNumber: companyNumber,
      registeredAddress: registeredAddress,
    );
  }
}

/// @nodoc
const $IndividualInvoiceDetails = _$IndividualInvoiceDetailsTearOff();

/// @nodoc
mixin _$IndividualInvoiceDetails {
  String get companyName => throw _privateConstructorUsedError;
  String get companyNumber => throw _privateConstructorUsedError;
  String get registeredAddress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IndividualInvoiceDetailsCopyWith<IndividualInvoiceDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndividualInvoiceDetailsCopyWith<$Res> {
  factory $IndividualInvoiceDetailsCopyWith(IndividualInvoiceDetails value,
          $Res Function(IndividualInvoiceDetails) then) =
      _$IndividualInvoiceDetailsCopyWithImpl<$Res>;
  $Res call(
      {String companyName, String companyNumber, String registeredAddress});
}

/// @nodoc
class _$IndividualInvoiceDetailsCopyWithImpl<$Res>
    implements $IndividualInvoiceDetailsCopyWith<$Res> {
  _$IndividualInvoiceDetailsCopyWithImpl(this._value, this._then);

  final IndividualInvoiceDetails _value;
  // ignore: unused_field
  final $Res Function(IndividualInvoiceDetails) _then;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? companyNumber = freezed,
    Object? registeredAddress = freezed,
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
      registeredAddress: registeredAddress == freezed
          ? _value.registeredAddress
          : registeredAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$IndividualInvoiceDetailsCopyWith<$Res>
    implements $IndividualInvoiceDetailsCopyWith<$Res> {
  factory _$IndividualInvoiceDetailsCopyWith(_IndividualInvoiceDetails value,
          $Res Function(_IndividualInvoiceDetails) then) =
      __$IndividualInvoiceDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String companyName, String companyNumber, String registeredAddress});
}

/// @nodoc
class __$IndividualInvoiceDetailsCopyWithImpl<$Res>
    extends _$IndividualInvoiceDetailsCopyWithImpl<$Res>
    implements _$IndividualInvoiceDetailsCopyWith<$Res> {
  __$IndividualInvoiceDetailsCopyWithImpl(_IndividualInvoiceDetails _value,
      $Res Function(_IndividualInvoiceDetails) _then)
      : super(_value, (v) => _then(v as _IndividualInvoiceDetails));

  @override
  _IndividualInvoiceDetails get _value =>
      super._value as _IndividualInvoiceDetails;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? companyNumber = freezed,
    Object? registeredAddress = freezed,
  }) {
    return _then(_IndividualInvoiceDetails(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companyNumber: companyNumber == freezed
          ? _value.companyNumber
          : companyNumber // ignore: cast_nullable_to_non_nullable
              as String,
      registeredAddress: registeredAddress == freezed
          ? _value.registeredAddress
          : registeredAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IndividualInvoiceDetails implements _IndividualInvoiceDetails {
  _$_IndividualInvoiceDetails(
      {required this.companyName,
      required this.companyNumber,
      required this.registeredAddress});

  @override
  final String companyName;
  @override
  final String companyNumber;
  @override
  final String registeredAddress;

  @override
  String toString() {
    return 'IndividualInvoiceDetails(companyName: $companyName, companyNumber: $companyNumber, registeredAddress: $registeredAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IndividualInvoiceDetails &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality()
                .equals(other.companyNumber, companyNumber) &&
            const DeepCollectionEquality()
                .equals(other.registeredAddress, registeredAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(companyName),
      const DeepCollectionEquality().hash(companyNumber),
      const DeepCollectionEquality().hash(registeredAddress));

  @JsonKey(ignore: true)
  @override
  _$IndividualInvoiceDetailsCopyWith<_IndividualInvoiceDetails> get copyWith =>
      __$IndividualInvoiceDetailsCopyWithImpl<_IndividualInvoiceDetails>(
          this, _$identity);
}

abstract class _IndividualInvoiceDetails implements IndividualInvoiceDetails {
  factory _IndividualInvoiceDetails(
      {required String companyName,
      required String companyNumber,
      required String registeredAddress}) = _$_IndividualInvoiceDetails;

  @override
  String get companyName;
  @override
  String get companyNumber;
  @override
  String get registeredAddress;
  @override
  @JsonKey(ignore: true)
  _$IndividualInvoiceDetailsCopyWith<_IndividualInvoiceDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CompanyInvoiceDetailsTearOff {
  const _$CompanyInvoiceDetailsTearOff();

  _CompanyInvoiceDetails call(
      {required String name, required String location}) {
    return _CompanyInvoiceDetails(
      name: name,
      location: location,
    );
  }
}

/// @nodoc
const $CompanyInvoiceDetails = _$CompanyInvoiceDetailsTearOff();

/// @nodoc
mixin _$CompanyInvoiceDetails {
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyInvoiceDetailsCopyWith<CompanyInvoiceDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyInvoiceDetailsCopyWith<$Res> {
  factory $CompanyInvoiceDetailsCopyWith(CompanyInvoiceDetails value,
          $Res Function(CompanyInvoiceDetails) then) =
      _$CompanyInvoiceDetailsCopyWithImpl<$Res>;
  $Res call({String name, String location});
}

/// @nodoc
class _$CompanyInvoiceDetailsCopyWithImpl<$Res>
    implements $CompanyInvoiceDetailsCopyWith<$Res> {
  _$CompanyInvoiceDetailsCopyWithImpl(this._value, this._then);

  final CompanyInvoiceDetails _value;
  // ignore: unused_field
  final $Res Function(CompanyInvoiceDetails) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CompanyInvoiceDetailsCopyWith<$Res>
    implements $CompanyInvoiceDetailsCopyWith<$Res> {
  factory _$CompanyInvoiceDetailsCopyWith(_CompanyInvoiceDetails value,
          $Res Function(_CompanyInvoiceDetails) then) =
      __$CompanyInvoiceDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String name, String location});
}

/// @nodoc
class __$CompanyInvoiceDetailsCopyWithImpl<$Res>
    extends _$CompanyInvoiceDetailsCopyWithImpl<$Res>
    implements _$CompanyInvoiceDetailsCopyWith<$Res> {
  __$CompanyInvoiceDetailsCopyWithImpl(_CompanyInvoiceDetails _value,
      $Res Function(_CompanyInvoiceDetails) _then)
      : super(_value, (v) => _then(v as _CompanyInvoiceDetails));

  @override
  _CompanyInvoiceDetails get _value => super._value as _CompanyInvoiceDetails;

  @override
  $Res call({
    Object? name = freezed,
    Object? location = freezed,
  }) {
    return _then(_CompanyInvoiceDetails(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CompanyInvoiceDetails implements _CompanyInvoiceDetails {
  _$_CompanyInvoiceDetails({required this.name, required this.location});

  @override
  final String name;
  @override
  final String location;

  @override
  String toString() {
    return 'CompanyInvoiceDetails(name: $name, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompanyInvoiceDetails &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$CompanyInvoiceDetailsCopyWith<_CompanyInvoiceDetails> get copyWith =>
      __$CompanyInvoiceDetailsCopyWithImpl<_CompanyInvoiceDetails>(
          this, _$identity);
}

abstract class _CompanyInvoiceDetails implements CompanyInvoiceDetails {
  factory _CompanyInvoiceDetails(
      {required String name,
      required String location}) = _$_CompanyInvoiceDetails;

  @override
  String get name;
  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  _$CompanyInvoiceDetailsCopyWith<_CompanyInvoiceDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
class _$InvoiceTearOff {
  const _$InvoiceTearOff();

  _Invoice call(
      {required TWUser contractorTWUser,
      required TWUser subbieTWUser,
      required DateTime paidOn,
      required String companyRegisteredAddress,
      required String invoiceType,
      required String companyOrTradingName,
      required List<InvoiceItem> invoiceItems,
      required String vatNumber,
      required String companyNumber,
      required String invoiceID,
      required String invoiceReference,
      required String description,
      required String jobID,
      required DateTime invoiceDate,
      required int paymentTerm,
      required double amountPayable,
      required double netAmount,
      required double totalTax,
      required InvoiceStatus status,
      required String invoiceAddress,
      required String development}) {
    return _Invoice(
      contractorTWUser: contractorTWUser,
      subbieTWUser: subbieTWUser,
      paidOn: paidOn,
      companyRegisteredAddress: companyRegisteredAddress,
      invoiceType: invoiceType,
      companyOrTradingName: companyOrTradingName,
      invoiceItems: invoiceItems,
      vatNumber: vatNumber,
      companyNumber: companyNumber,
      invoiceID: invoiceID,
      invoiceReference: invoiceReference,
      description: description,
      jobID: jobID,
      invoiceDate: invoiceDate,
      paymentTerm: paymentTerm,
      amountPayable: amountPayable,
      netAmount: netAmount,
      totalTax: totalTax,
      status: status,
      invoiceAddress: invoiceAddress,
      development: development,
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
  TWUser get contractorTWUser => throw _privateConstructorUsedError;
  TWUser get subbieTWUser => throw _privateConstructorUsedError;
  DateTime get paidOn => throw _privateConstructorUsedError;
  String get companyRegisteredAddress => throw _privateConstructorUsedError;
  String get invoiceType => throw _privateConstructorUsedError;
  String get companyOrTradingName => throw _privateConstructorUsedError;
  List<InvoiceItem> get invoiceItems => throw _privateConstructorUsedError;
  String get vatNumber => throw _privateConstructorUsedError;
  String get companyNumber => throw _privateConstructorUsedError;
  String get invoiceID => throw _privateConstructorUsedError;
  String get invoiceReference => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get jobID => throw _privateConstructorUsedError;
  DateTime get invoiceDate => throw _privateConstructorUsedError;
  int get paymentTerm => throw _privateConstructorUsedError;
  double get amountPayable => throw _privateConstructorUsedError;
  double get netAmount => throw _privateConstructorUsedError;
  double get totalTax => throw _privateConstructorUsedError;
  InvoiceStatus get status => throw _privateConstructorUsedError;
  String get invoiceAddress => throw _privateConstructorUsedError;
  String get development => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res>;
  $Res call(
      {TWUser contractorTWUser,
      TWUser subbieTWUser,
      DateTime paidOn,
      String companyRegisteredAddress,
      String invoiceType,
      String companyOrTradingName,
      List<InvoiceItem> invoiceItems,
      String vatNumber,
      String companyNumber,
      String invoiceID,
      String invoiceReference,
      String description,
      String jobID,
      DateTime invoiceDate,
      int paymentTerm,
      double amountPayable,
      double netAmount,
      double totalTax,
      InvoiceStatus status,
      String invoiceAddress,
      String development});
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res> implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  final Invoice _value;
  // ignore: unused_field
  final $Res Function(Invoice) _then;

  @override
  $Res call({
    Object? contractorTWUser = freezed,
    Object? subbieTWUser = freezed,
    Object? paidOn = freezed,
    Object? companyRegisteredAddress = freezed,
    Object? invoiceType = freezed,
    Object? companyOrTradingName = freezed,
    Object? invoiceItems = freezed,
    Object? vatNumber = freezed,
    Object? companyNumber = freezed,
    Object? invoiceID = freezed,
    Object? invoiceReference = freezed,
    Object? description = freezed,
    Object? jobID = freezed,
    Object? invoiceDate = freezed,
    Object? paymentTerm = freezed,
    Object? amountPayable = freezed,
    Object? netAmount = freezed,
    Object? totalTax = freezed,
    Object? status = freezed,
    Object? invoiceAddress = freezed,
    Object? development = freezed,
  }) {
    return _then(_value.copyWith(
      contractorTWUser: contractorTWUser == freezed
          ? _value.contractorTWUser
          : contractorTWUser // ignore: cast_nullable_to_non_nullable
              as TWUser,
      subbieTWUser: subbieTWUser == freezed
          ? _value.subbieTWUser
          : subbieTWUser // ignore: cast_nullable_to_non_nullable
              as TWUser,
      paidOn: paidOn == freezed
          ? _value.paidOn
          : paidOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      companyRegisteredAddress: companyRegisteredAddress == freezed
          ? _value.companyRegisteredAddress
          : companyRegisteredAddress // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceType: invoiceType == freezed
          ? _value.invoiceType
          : invoiceType // ignore: cast_nullable_to_non_nullable
              as String,
      companyOrTradingName: companyOrTradingName == freezed
          ? _value.companyOrTradingName
          : companyOrTradingName // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceItems: invoiceItems == freezed
          ? _value.invoiceItems
          : invoiceItems // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as String,
      companyNumber: companyNumber == freezed
          ? _value.companyNumber
          : companyNumber // ignore: cast_nullable_to_non_nullable
              as String,
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
      jobID: jobID == freezed
          ? _value.jobID
          : jobID // ignore: cast_nullable_to_non_nullable
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
      invoiceAddress: invoiceAddress == freezed
          ? _value.invoiceAddress
          : invoiceAddress // ignore: cast_nullable_to_non_nullable
              as String,
      development: development == freezed
          ? _value.development
          : development // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$InvoiceCopyWith(_Invoice value, $Res Function(_Invoice) then) =
      __$InvoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {TWUser contractorTWUser,
      TWUser subbieTWUser,
      DateTime paidOn,
      String companyRegisteredAddress,
      String invoiceType,
      String companyOrTradingName,
      List<InvoiceItem> invoiceItems,
      String vatNumber,
      String companyNumber,
      String invoiceID,
      String invoiceReference,
      String description,
      String jobID,
      DateTime invoiceDate,
      int paymentTerm,
      double amountPayable,
      double netAmount,
      double totalTax,
      InvoiceStatus status,
      String invoiceAddress,
      String development});
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
    Object? contractorTWUser = freezed,
    Object? subbieTWUser = freezed,
    Object? paidOn = freezed,
    Object? companyRegisteredAddress = freezed,
    Object? invoiceType = freezed,
    Object? companyOrTradingName = freezed,
    Object? invoiceItems = freezed,
    Object? vatNumber = freezed,
    Object? companyNumber = freezed,
    Object? invoiceID = freezed,
    Object? invoiceReference = freezed,
    Object? description = freezed,
    Object? jobID = freezed,
    Object? invoiceDate = freezed,
    Object? paymentTerm = freezed,
    Object? amountPayable = freezed,
    Object? netAmount = freezed,
    Object? totalTax = freezed,
    Object? status = freezed,
    Object? invoiceAddress = freezed,
    Object? development = freezed,
  }) {
    return _then(_Invoice(
      contractorTWUser: contractorTWUser == freezed
          ? _value.contractorTWUser
          : contractorTWUser // ignore: cast_nullable_to_non_nullable
              as TWUser,
      subbieTWUser: subbieTWUser == freezed
          ? _value.subbieTWUser
          : subbieTWUser // ignore: cast_nullable_to_non_nullable
              as TWUser,
      paidOn: paidOn == freezed
          ? _value.paidOn
          : paidOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      companyRegisteredAddress: companyRegisteredAddress == freezed
          ? _value.companyRegisteredAddress
          : companyRegisteredAddress // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceType: invoiceType == freezed
          ? _value.invoiceType
          : invoiceType // ignore: cast_nullable_to_non_nullable
              as String,
      companyOrTradingName: companyOrTradingName == freezed
          ? _value.companyOrTradingName
          : companyOrTradingName // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceItems: invoiceItems == freezed
          ? _value.invoiceItems
          : invoiceItems // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as String,
      companyNumber: companyNumber == freezed
          ? _value.companyNumber
          : companyNumber // ignore: cast_nullable_to_non_nullable
              as String,
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
      jobID: jobID == freezed
          ? _value.jobID
          : jobID // ignore: cast_nullable_to_non_nullable
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
      invoiceAddress: invoiceAddress == freezed
          ? _value.invoiceAddress
          : invoiceAddress // ignore: cast_nullable_to_non_nullable
              as String,
      development: development == freezed
          ? _value.development
          : development // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Invoice implements _Invoice {
  const _$_Invoice(
      {required this.contractorTWUser,
      required this.subbieTWUser,
      required this.paidOn,
      required this.companyRegisteredAddress,
      required this.invoiceType,
      required this.companyOrTradingName,
      required this.invoiceItems,
      required this.vatNumber,
      required this.companyNumber,
      required this.invoiceID,
      required this.invoiceReference,
      required this.description,
      required this.jobID,
      required this.invoiceDate,
      required this.paymentTerm,
      required this.amountPayable,
      required this.netAmount,
      required this.totalTax,
      required this.status,
      required this.invoiceAddress,
      required this.development});

  factory _$_Invoice.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceFromJson(json);

  @override
  final TWUser contractorTWUser;
  @override
  final TWUser subbieTWUser;
  @override
  final DateTime paidOn;
  @override
  final String companyRegisteredAddress;
  @override
  final String invoiceType;
  @override
  final String companyOrTradingName;
  @override
  final List<InvoiceItem> invoiceItems;
  @override
  final String vatNumber;
  @override
  final String companyNumber;
  @override
  final String invoiceID;
  @override
  final String invoiceReference;
  @override
  final String description;
  @override
  final String jobID;
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
  final String invoiceAddress;
  @override
  final String development;

  @override
  String toString() {
    return 'Invoice(contractorTWUser: $contractorTWUser, subbieTWUser: $subbieTWUser, paidOn: $paidOn, companyRegisteredAddress: $companyRegisteredAddress, invoiceType: $invoiceType, companyOrTradingName: $companyOrTradingName, invoiceItems: $invoiceItems, vatNumber: $vatNumber, companyNumber: $companyNumber, invoiceID: $invoiceID, invoiceReference: $invoiceReference, description: $description, jobID: $jobID, invoiceDate: $invoiceDate, paymentTerm: $paymentTerm, amountPayable: $amountPayable, netAmount: $netAmount, totalTax: $totalTax, status: $status, invoiceAddress: $invoiceAddress, development: $development)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Invoice &&
            const DeepCollectionEquality()
                .equals(other.contractorTWUser, contractorTWUser) &&
            const DeepCollectionEquality()
                .equals(other.subbieTWUser, subbieTWUser) &&
            const DeepCollectionEquality().equals(other.paidOn, paidOn) &&
            const DeepCollectionEquality().equals(
                other.companyRegisteredAddress, companyRegisteredAddress) &&
            const DeepCollectionEquality()
                .equals(other.invoiceType, invoiceType) &&
            const DeepCollectionEquality()
                .equals(other.companyOrTradingName, companyOrTradingName) &&
            const DeepCollectionEquality()
                .equals(other.invoiceItems, invoiceItems) &&
            const DeepCollectionEquality().equals(other.vatNumber, vatNumber) &&
            const DeepCollectionEquality()
                .equals(other.companyNumber, companyNumber) &&
            const DeepCollectionEquality().equals(other.invoiceID, invoiceID) &&
            const DeepCollectionEquality()
                .equals(other.invoiceReference, invoiceReference) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.jobID, jobID) &&
            const DeepCollectionEquality()
                .equals(other.invoiceDate, invoiceDate) &&
            const DeepCollectionEquality()
                .equals(other.paymentTerm, paymentTerm) &&
            const DeepCollectionEquality()
                .equals(other.amountPayable, amountPayable) &&
            const DeepCollectionEquality().equals(other.netAmount, netAmount) &&
            const DeepCollectionEquality().equals(other.totalTax, totalTax) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.invoiceAddress, invoiceAddress) &&
            const DeepCollectionEquality()
                .equals(other.development, development));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(contractorTWUser),
        const DeepCollectionEquality().hash(subbieTWUser),
        const DeepCollectionEquality().hash(paidOn),
        const DeepCollectionEquality().hash(companyRegisteredAddress),
        const DeepCollectionEquality().hash(invoiceType),
        const DeepCollectionEquality().hash(companyOrTradingName),
        const DeepCollectionEquality().hash(invoiceItems),
        const DeepCollectionEquality().hash(vatNumber),
        const DeepCollectionEquality().hash(companyNumber),
        const DeepCollectionEquality().hash(invoiceID),
        const DeepCollectionEquality().hash(invoiceReference),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(jobID),
        const DeepCollectionEquality().hash(invoiceDate),
        const DeepCollectionEquality().hash(paymentTerm),
        const DeepCollectionEquality().hash(amountPayable),
        const DeepCollectionEquality().hash(netAmount),
        const DeepCollectionEquality().hash(totalTax),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(invoiceAddress),
        const DeepCollectionEquality().hash(development)
      ]);

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
      {required TWUser contractorTWUser,
      required TWUser subbieTWUser,
      required DateTime paidOn,
      required String companyRegisteredAddress,
      required String invoiceType,
      required String companyOrTradingName,
      required List<InvoiceItem> invoiceItems,
      required String vatNumber,
      required String companyNumber,
      required String invoiceID,
      required String invoiceReference,
      required String description,
      required String jobID,
      required DateTime invoiceDate,
      required int paymentTerm,
      required double amountPayable,
      required double netAmount,
      required double totalTax,
      required InvoiceStatus status,
      required String invoiceAddress,
      required String development}) = _$_Invoice;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$_Invoice.fromJson;

  @override
  TWUser get contractorTWUser;
  @override
  TWUser get subbieTWUser;
  @override
  DateTime get paidOn;
  @override
  String get companyRegisteredAddress;
  @override
  String get invoiceType;
  @override
  String get companyOrTradingName;
  @override
  List<InvoiceItem> get invoiceItems;
  @override
  String get vatNumber;
  @override
  String get companyNumber;
  @override
  String get invoiceID;
  @override
  String get invoiceReference;
  @override
  String get description;
  @override
  String get jobID;
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
  String get invoiceAddress;
  @override
  String get development;
  @override
  @JsonKey(ignore: true)
  _$InvoiceCopyWith<_Invoice> get copyWith =>
      throw _privateConstructorUsedError;
}
