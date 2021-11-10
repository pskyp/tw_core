// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_company_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditCompanyDetailsEventTearOff {
  const _$EditCompanyDetailsEventTearOff();

  CompanyNameInput companyNameInput(String input) {
    return CompanyNameInput(
      input,
    );
  }

  CompanyNumberInput companyNumberInput(String input) {
    return CompanyNumberInput(
      input,
    );
  }

  VatInput vatInput(String input) {
    return VatInput(
      input,
    );
  }

  RegisteredAddressInput registeredAddressInput(LocationModel location) {
    return RegisteredAddressInput(
      location,
    );
  }

  InvoicingAddressInput invoicingAddressInput(LocationModel location) {
    return InvoicingAddressInput(
      location,
    );
  }
}

/// @nodoc
const $EditCompanyDetailsEvent = _$EditCompanyDetailsEventTearOff();

/// @nodoc
mixin _$EditCompanyDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) companyNameInput,
    required TResult Function(String input) companyNumberInput,
    required TResult Function(String input) vatInput,
    required TResult Function(LocationModel location) registeredAddressInput,
    required TResult Function(LocationModel location) invoicingAddressInput,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? companyNameInput,
    TResult Function(String input)? companyNumberInput,
    TResult Function(String input)? vatInput,
    TResult Function(LocationModel location)? registeredAddressInput,
    TResult Function(LocationModel location)? invoicingAddressInput,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompanyNameInput value) companyNameInput,
    required TResult Function(CompanyNumberInput value) companyNumberInput,
    required TResult Function(VatInput value) vatInput,
    required TResult Function(RegisteredAddressInput value)
        registeredAddressInput,
    required TResult Function(InvoicingAddressInput value)
        invoicingAddressInput,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompanyNameInput value)? companyNameInput,
    TResult Function(CompanyNumberInput value)? companyNumberInput,
    TResult Function(VatInput value)? vatInput,
    TResult Function(RegisteredAddressInput value)? registeredAddressInput,
    TResult Function(InvoicingAddressInput value)? invoicingAddressInput,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCompanyDetailsEventCopyWith<$Res> {
  factory $EditCompanyDetailsEventCopyWith(EditCompanyDetailsEvent value,
          $Res Function(EditCompanyDetailsEvent) then) =
      _$EditCompanyDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditCompanyDetailsEventCopyWithImpl<$Res>
    implements $EditCompanyDetailsEventCopyWith<$Res> {
  _$EditCompanyDetailsEventCopyWithImpl(this._value, this._then);

  final EditCompanyDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(EditCompanyDetailsEvent) _then;
}

/// @nodoc
abstract class $CompanyNameInputCopyWith<$Res> {
  factory $CompanyNameInputCopyWith(
          CompanyNameInput value, $Res Function(CompanyNameInput) then) =
      _$CompanyNameInputCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$CompanyNameInputCopyWithImpl<$Res>
    extends _$EditCompanyDetailsEventCopyWithImpl<$Res>
    implements $CompanyNameInputCopyWith<$Res> {
  _$CompanyNameInputCopyWithImpl(
      CompanyNameInput _value, $Res Function(CompanyNameInput) _then)
      : super(_value, (v) => _then(v as CompanyNameInput));

  @override
  CompanyNameInput get _value => super._value as CompanyNameInput;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(CompanyNameInput(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompanyNameInput implements CompanyNameInput {
  _$CompanyNameInput(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'EditCompanyDetailsEvent.companyNameInput(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompanyNameInput &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  $CompanyNameInputCopyWith<CompanyNameInput> get copyWith =>
      _$CompanyNameInputCopyWithImpl<CompanyNameInput>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) companyNameInput,
    required TResult Function(String input) companyNumberInput,
    required TResult Function(String input) vatInput,
    required TResult Function(LocationModel location) registeredAddressInput,
    required TResult Function(LocationModel location) invoicingAddressInput,
  }) {
    return companyNameInput(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? companyNameInput,
    TResult Function(String input)? companyNumberInput,
    TResult Function(String input)? vatInput,
    TResult Function(LocationModel location)? registeredAddressInput,
    TResult Function(LocationModel location)? invoicingAddressInput,
    required TResult orElse(),
  }) {
    if (companyNameInput != null) {
      return companyNameInput(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompanyNameInput value) companyNameInput,
    required TResult Function(CompanyNumberInput value) companyNumberInput,
    required TResult Function(VatInput value) vatInput,
    required TResult Function(RegisteredAddressInput value)
        registeredAddressInput,
    required TResult Function(InvoicingAddressInput value)
        invoicingAddressInput,
  }) {
    return companyNameInput(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompanyNameInput value)? companyNameInput,
    TResult Function(CompanyNumberInput value)? companyNumberInput,
    TResult Function(VatInput value)? vatInput,
    TResult Function(RegisteredAddressInput value)? registeredAddressInput,
    TResult Function(InvoicingAddressInput value)? invoicingAddressInput,
    required TResult orElse(),
  }) {
    if (companyNameInput != null) {
      return companyNameInput(this);
    }
    return orElse();
  }
}

abstract class CompanyNameInput implements EditCompanyDetailsEvent {
  factory CompanyNameInput(String input) = _$CompanyNameInput;

  String get input => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyNameInputCopyWith<CompanyNameInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyNumberInputCopyWith<$Res> {
  factory $CompanyNumberInputCopyWith(
          CompanyNumberInput value, $Res Function(CompanyNumberInput) then) =
      _$CompanyNumberInputCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$CompanyNumberInputCopyWithImpl<$Res>
    extends _$EditCompanyDetailsEventCopyWithImpl<$Res>
    implements $CompanyNumberInputCopyWith<$Res> {
  _$CompanyNumberInputCopyWithImpl(
      CompanyNumberInput _value, $Res Function(CompanyNumberInput) _then)
      : super(_value, (v) => _then(v as CompanyNumberInput));

  @override
  CompanyNumberInput get _value => super._value as CompanyNumberInput;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(CompanyNumberInput(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompanyNumberInput implements CompanyNumberInput {
  _$CompanyNumberInput(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'EditCompanyDetailsEvent.companyNumberInput(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompanyNumberInput &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  $CompanyNumberInputCopyWith<CompanyNumberInput> get copyWith =>
      _$CompanyNumberInputCopyWithImpl<CompanyNumberInput>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) companyNameInput,
    required TResult Function(String input) companyNumberInput,
    required TResult Function(String input) vatInput,
    required TResult Function(LocationModel location) registeredAddressInput,
    required TResult Function(LocationModel location) invoicingAddressInput,
  }) {
    return companyNumberInput(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? companyNameInput,
    TResult Function(String input)? companyNumberInput,
    TResult Function(String input)? vatInput,
    TResult Function(LocationModel location)? registeredAddressInput,
    TResult Function(LocationModel location)? invoicingAddressInput,
    required TResult orElse(),
  }) {
    if (companyNumberInput != null) {
      return companyNumberInput(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompanyNameInput value) companyNameInput,
    required TResult Function(CompanyNumberInput value) companyNumberInput,
    required TResult Function(VatInput value) vatInput,
    required TResult Function(RegisteredAddressInput value)
        registeredAddressInput,
    required TResult Function(InvoicingAddressInput value)
        invoicingAddressInput,
  }) {
    return companyNumberInput(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompanyNameInput value)? companyNameInput,
    TResult Function(CompanyNumberInput value)? companyNumberInput,
    TResult Function(VatInput value)? vatInput,
    TResult Function(RegisteredAddressInput value)? registeredAddressInput,
    TResult Function(InvoicingAddressInput value)? invoicingAddressInput,
    required TResult orElse(),
  }) {
    if (companyNumberInput != null) {
      return companyNumberInput(this);
    }
    return orElse();
  }
}

abstract class CompanyNumberInput implements EditCompanyDetailsEvent {
  factory CompanyNumberInput(String input) = _$CompanyNumberInput;

  String get input => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyNumberInputCopyWith<CompanyNumberInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VatInputCopyWith<$Res> {
  factory $VatInputCopyWith(VatInput value, $Res Function(VatInput) then) =
      _$VatInputCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$VatInputCopyWithImpl<$Res>
    extends _$EditCompanyDetailsEventCopyWithImpl<$Res>
    implements $VatInputCopyWith<$Res> {
  _$VatInputCopyWithImpl(VatInput _value, $Res Function(VatInput) _then)
      : super(_value, (v) => _then(v as VatInput));

  @override
  VatInput get _value => super._value as VatInput;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(VatInput(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VatInput implements VatInput {
  _$VatInput(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'EditCompanyDetailsEvent.vatInput(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VatInput &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  $VatInputCopyWith<VatInput> get copyWith =>
      _$VatInputCopyWithImpl<VatInput>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) companyNameInput,
    required TResult Function(String input) companyNumberInput,
    required TResult Function(String input) vatInput,
    required TResult Function(LocationModel location) registeredAddressInput,
    required TResult Function(LocationModel location) invoicingAddressInput,
  }) {
    return vatInput(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? companyNameInput,
    TResult Function(String input)? companyNumberInput,
    TResult Function(String input)? vatInput,
    TResult Function(LocationModel location)? registeredAddressInput,
    TResult Function(LocationModel location)? invoicingAddressInput,
    required TResult orElse(),
  }) {
    if (vatInput != null) {
      return vatInput(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompanyNameInput value) companyNameInput,
    required TResult Function(CompanyNumberInput value) companyNumberInput,
    required TResult Function(VatInput value) vatInput,
    required TResult Function(RegisteredAddressInput value)
        registeredAddressInput,
    required TResult Function(InvoicingAddressInput value)
        invoicingAddressInput,
  }) {
    return vatInput(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompanyNameInput value)? companyNameInput,
    TResult Function(CompanyNumberInput value)? companyNumberInput,
    TResult Function(VatInput value)? vatInput,
    TResult Function(RegisteredAddressInput value)? registeredAddressInput,
    TResult Function(InvoicingAddressInput value)? invoicingAddressInput,
    required TResult orElse(),
  }) {
    if (vatInput != null) {
      return vatInput(this);
    }
    return orElse();
  }
}

abstract class VatInput implements EditCompanyDetailsEvent {
  factory VatInput(String input) = _$VatInput;

  String get input => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VatInputCopyWith<VatInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisteredAddressInputCopyWith<$Res> {
  factory $RegisteredAddressInputCopyWith(RegisteredAddressInput value,
          $Res Function(RegisteredAddressInput) then) =
      _$RegisteredAddressInputCopyWithImpl<$Res>;
  $Res call({LocationModel location});
}

/// @nodoc
class _$RegisteredAddressInputCopyWithImpl<$Res>
    extends _$EditCompanyDetailsEventCopyWithImpl<$Res>
    implements $RegisteredAddressInputCopyWith<$Res> {
  _$RegisteredAddressInputCopyWithImpl(RegisteredAddressInput _value,
      $Res Function(RegisteredAddressInput) _then)
      : super(_value, (v) => _then(v as RegisteredAddressInput));

  @override
  RegisteredAddressInput get _value => super._value as RegisteredAddressInput;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(RegisteredAddressInput(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc

class _$RegisteredAddressInput implements RegisteredAddressInput {
  _$RegisteredAddressInput(this.location);

  @override
  final LocationModel location;

  @override
  String toString() {
    return 'EditCompanyDetailsEvent.registeredAddressInput(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisteredAddressInput &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  $RegisteredAddressInputCopyWith<RegisteredAddressInput> get copyWith =>
      _$RegisteredAddressInputCopyWithImpl<RegisteredAddressInput>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) companyNameInput,
    required TResult Function(String input) companyNumberInput,
    required TResult Function(String input) vatInput,
    required TResult Function(LocationModel location) registeredAddressInput,
    required TResult Function(LocationModel location) invoicingAddressInput,
  }) {
    return registeredAddressInput(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? companyNameInput,
    TResult Function(String input)? companyNumberInput,
    TResult Function(String input)? vatInput,
    TResult Function(LocationModel location)? registeredAddressInput,
    TResult Function(LocationModel location)? invoicingAddressInput,
    required TResult orElse(),
  }) {
    if (registeredAddressInput != null) {
      return registeredAddressInput(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompanyNameInput value) companyNameInput,
    required TResult Function(CompanyNumberInput value) companyNumberInput,
    required TResult Function(VatInput value) vatInput,
    required TResult Function(RegisteredAddressInput value)
        registeredAddressInput,
    required TResult Function(InvoicingAddressInput value)
        invoicingAddressInput,
  }) {
    return registeredAddressInput(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompanyNameInput value)? companyNameInput,
    TResult Function(CompanyNumberInput value)? companyNumberInput,
    TResult Function(VatInput value)? vatInput,
    TResult Function(RegisteredAddressInput value)? registeredAddressInput,
    TResult Function(InvoicingAddressInput value)? invoicingAddressInput,
    required TResult orElse(),
  }) {
    if (registeredAddressInput != null) {
      return registeredAddressInput(this);
    }
    return orElse();
  }
}

abstract class RegisteredAddressInput implements EditCompanyDetailsEvent {
  factory RegisteredAddressInput(LocationModel location) =
      _$RegisteredAddressInput;

  LocationModel get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisteredAddressInputCopyWith<RegisteredAddressInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoicingAddressInputCopyWith<$Res> {
  factory $InvoicingAddressInputCopyWith(InvoicingAddressInput value,
          $Res Function(InvoicingAddressInput) then) =
      _$InvoicingAddressInputCopyWithImpl<$Res>;
  $Res call({LocationModel location});
}

/// @nodoc
class _$InvoicingAddressInputCopyWithImpl<$Res>
    extends _$EditCompanyDetailsEventCopyWithImpl<$Res>
    implements $InvoicingAddressInputCopyWith<$Res> {
  _$InvoicingAddressInputCopyWithImpl(
      InvoicingAddressInput _value, $Res Function(InvoicingAddressInput) _then)
      : super(_value, (v) => _then(v as InvoicingAddressInput));

  @override
  InvoicingAddressInput get _value => super._value as InvoicingAddressInput;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(InvoicingAddressInput(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc

class _$InvoicingAddressInput implements InvoicingAddressInput {
  _$InvoicingAddressInput(this.location);

  @override
  final LocationModel location;

  @override
  String toString() {
    return 'EditCompanyDetailsEvent.invoicingAddressInput(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvoicingAddressInput &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  $InvoicingAddressInputCopyWith<InvoicingAddressInput> get copyWith =>
      _$InvoicingAddressInputCopyWithImpl<InvoicingAddressInput>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) companyNameInput,
    required TResult Function(String input) companyNumberInput,
    required TResult Function(String input) vatInput,
    required TResult Function(LocationModel location) registeredAddressInput,
    required TResult Function(LocationModel location) invoicingAddressInput,
  }) {
    return invoicingAddressInput(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? companyNameInput,
    TResult Function(String input)? companyNumberInput,
    TResult Function(String input)? vatInput,
    TResult Function(LocationModel location)? registeredAddressInput,
    TResult Function(LocationModel location)? invoicingAddressInput,
    required TResult orElse(),
  }) {
    if (invoicingAddressInput != null) {
      return invoicingAddressInput(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompanyNameInput value) companyNameInput,
    required TResult Function(CompanyNumberInput value) companyNumberInput,
    required TResult Function(VatInput value) vatInput,
    required TResult Function(RegisteredAddressInput value)
        registeredAddressInput,
    required TResult Function(InvoicingAddressInput value)
        invoicingAddressInput,
  }) {
    return invoicingAddressInput(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompanyNameInput value)? companyNameInput,
    TResult Function(CompanyNumberInput value)? companyNumberInput,
    TResult Function(VatInput value)? vatInput,
    TResult Function(RegisteredAddressInput value)? registeredAddressInput,
    TResult Function(InvoicingAddressInput value)? invoicingAddressInput,
    required TResult orElse(),
  }) {
    if (invoicingAddressInput != null) {
      return invoicingAddressInput(this);
    }
    return orElse();
  }
}

abstract class InvoicingAddressInput implements EditCompanyDetailsEvent {
  factory InvoicingAddressInput(LocationModel location) =
      _$InvoicingAddressInput;

  LocationModel get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoicingAddressInputCopyWith<InvoicingAddressInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EditCompanyDetailsStateTearOff {
  const _$EditCompanyDetailsStateTearOff();

  _EditCompanyDetailsState call(
      {required TWString companyName,
      required TWString companyNumber,
      required TWString vatNumber,
      required Option<LocationModel> registeredAddress,
      required Option<LocationModel> invoicingAddress,
      required bool showErrors,
      required bool submissionInProgress,
      required Option<Either<TWServerError, Unit>> resultOption}) {
    return _EditCompanyDetailsState(
      companyName: companyName,
      companyNumber: companyNumber,
      vatNumber: vatNumber,
      registeredAddress: registeredAddress,
      invoicingAddress: invoicingAddress,
      showErrors: showErrors,
      submissionInProgress: submissionInProgress,
      resultOption: resultOption,
    );
  }
}

/// @nodoc
const $EditCompanyDetailsState = _$EditCompanyDetailsStateTearOff();

/// @nodoc
mixin _$EditCompanyDetailsState {
  TWString get companyName => throw _privateConstructorUsedError;
  TWString get companyNumber => throw _privateConstructorUsedError;
  TWString get vatNumber => throw _privateConstructorUsedError;
  Option<LocationModel> get registeredAddress =>
      throw _privateConstructorUsedError;
  Option<LocationModel> get invoicingAddress =>
      throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  bool get submissionInProgress => throw _privateConstructorUsedError;
  Option<Either<TWServerError, Unit>> get resultOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditCompanyDetailsStateCopyWith<EditCompanyDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCompanyDetailsStateCopyWith<$Res> {
  factory $EditCompanyDetailsStateCopyWith(EditCompanyDetailsState value,
          $Res Function(EditCompanyDetailsState) then) =
      _$EditCompanyDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {TWString companyName,
      TWString companyNumber,
      TWString vatNumber,
      Option<LocationModel> registeredAddress,
      Option<LocationModel> invoicingAddress,
      bool showErrors,
      bool submissionInProgress,
      Option<Either<TWServerError, Unit>> resultOption});
}

/// @nodoc
class _$EditCompanyDetailsStateCopyWithImpl<$Res>
    implements $EditCompanyDetailsStateCopyWith<$Res> {
  _$EditCompanyDetailsStateCopyWithImpl(this._value, this._then);

  final EditCompanyDetailsState _value;
  // ignore: unused_field
  final $Res Function(EditCompanyDetailsState) _then;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? companyNumber = freezed,
    Object? vatNumber = freezed,
    Object? registeredAddress = freezed,
    Object? invoicingAddress = freezed,
    Object? showErrors = freezed,
    Object? submissionInProgress = freezed,
    Object? resultOption = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as TWString,
      companyNumber: companyNumber == freezed
          ? _value.companyNumber
          : companyNumber // ignore: cast_nullable_to_non_nullable
              as TWString,
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as TWString,
      registeredAddress: registeredAddress == freezed
          ? _value.registeredAddress
          : registeredAddress // ignore: cast_nullable_to_non_nullable
              as Option<LocationModel>,
      invoicingAddress: invoicingAddress == freezed
          ? _value.invoicingAddress
          : invoicingAddress // ignore: cast_nullable_to_non_nullable
              as Option<LocationModel>,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionInProgress: submissionInProgress == freezed
          ? _value.submissionInProgress
          : submissionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TWServerError, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$EditCompanyDetailsStateCopyWith<$Res>
    implements $EditCompanyDetailsStateCopyWith<$Res> {
  factory _$EditCompanyDetailsStateCopyWith(_EditCompanyDetailsState value,
          $Res Function(_EditCompanyDetailsState) then) =
      __$EditCompanyDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TWString companyName,
      TWString companyNumber,
      TWString vatNumber,
      Option<LocationModel> registeredAddress,
      Option<LocationModel> invoicingAddress,
      bool showErrors,
      bool submissionInProgress,
      Option<Either<TWServerError, Unit>> resultOption});
}

/// @nodoc
class __$EditCompanyDetailsStateCopyWithImpl<$Res>
    extends _$EditCompanyDetailsStateCopyWithImpl<$Res>
    implements _$EditCompanyDetailsStateCopyWith<$Res> {
  __$EditCompanyDetailsStateCopyWithImpl(_EditCompanyDetailsState _value,
      $Res Function(_EditCompanyDetailsState) _then)
      : super(_value, (v) => _then(v as _EditCompanyDetailsState));

  @override
  _EditCompanyDetailsState get _value =>
      super._value as _EditCompanyDetailsState;

  @override
  $Res call({
    Object? companyName = freezed,
    Object? companyNumber = freezed,
    Object? vatNumber = freezed,
    Object? registeredAddress = freezed,
    Object? invoicingAddress = freezed,
    Object? showErrors = freezed,
    Object? submissionInProgress = freezed,
    Object? resultOption = freezed,
  }) {
    return _then(_EditCompanyDetailsState(
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as TWString,
      companyNumber: companyNumber == freezed
          ? _value.companyNumber
          : companyNumber // ignore: cast_nullable_to_non_nullable
              as TWString,
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as TWString,
      registeredAddress: registeredAddress == freezed
          ? _value.registeredAddress
          : registeredAddress // ignore: cast_nullable_to_non_nullable
              as Option<LocationModel>,
      invoicingAddress: invoicingAddress == freezed
          ? _value.invoicingAddress
          : invoicingAddress // ignore: cast_nullable_to_non_nullable
              as Option<LocationModel>,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionInProgress: submissionInProgress == freezed
          ? _value.submissionInProgress
          : submissionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TWServerError, Unit>>,
    ));
  }
}

/// @nodoc

class _$_EditCompanyDetailsState implements _EditCompanyDetailsState {
  _$_EditCompanyDetailsState(
      {required this.companyName,
      required this.companyNumber,
      required this.vatNumber,
      required this.registeredAddress,
      required this.invoicingAddress,
      required this.showErrors,
      required this.submissionInProgress,
      required this.resultOption});

  @override
  final TWString companyName;
  @override
  final TWString companyNumber;
  @override
  final TWString vatNumber;
  @override
  final Option<LocationModel> registeredAddress;
  @override
  final Option<LocationModel> invoicingAddress;
  @override
  final bool showErrors;
  @override
  final bool submissionInProgress;
  @override
  final Option<Either<TWServerError, Unit>> resultOption;

  @override
  String toString() {
    return 'EditCompanyDetailsState(companyName: $companyName, companyNumber: $companyNumber, vatNumber: $vatNumber, registeredAddress: $registeredAddress, invoicingAddress: $invoicingAddress, showErrors: $showErrors, submissionInProgress: $submissionInProgress, resultOption: $resultOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditCompanyDetailsState &&
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
            (identical(other.invoicingAddress, invoicingAddress) ||
                const DeepCollectionEquality()
                    .equals(other.invoicingAddress, invoicingAddress)) &&
            (identical(other.showErrors, showErrors) ||
                const DeepCollectionEquality()
                    .equals(other.showErrors, showErrors)) &&
            (identical(other.submissionInProgress, submissionInProgress) ||
                const DeepCollectionEquality().equals(
                    other.submissionInProgress, submissionInProgress)) &&
            (identical(other.resultOption, resultOption) ||
                const DeepCollectionEquality()
                    .equals(other.resultOption, resultOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(companyNumber) ^
      const DeepCollectionEquality().hash(vatNumber) ^
      const DeepCollectionEquality().hash(registeredAddress) ^
      const DeepCollectionEquality().hash(invoicingAddress) ^
      const DeepCollectionEquality().hash(showErrors) ^
      const DeepCollectionEquality().hash(submissionInProgress) ^
      const DeepCollectionEquality().hash(resultOption);

  @JsonKey(ignore: true)
  @override
  _$EditCompanyDetailsStateCopyWith<_EditCompanyDetailsState> get copyWith =>
      __$EditCompanyDetailsStateCopyWithImpl<_EditCompanyDetailsState>(
          this, _$identity);
}

abstract class _EditCompanyDetailsState implements EditCompanyDetailsState {
  factory _EditCompanyDetailsState(
          {required TWString companyName,
          required TWString companyNumber,
          required TWString vatNumber,
          required Option<LocationModel> registeredAddress,
          required Option<LocationModel> invoicingAddress,
          required bool showErrors,
          required bool submissionInProgress,
          required Option<Either<TWServerError, Unit>> resultOption}) =
      _$_EditCompanyDetailsState;

  @override
  TWString get companyName => throw _privateConstructorUsedError;
  @override
  TWString get companyNumber => throw _privateConstructorUsedError;
  @override
  TWString get vatNumber => throw _privateConstructorUsedError;
  @override
  Option<LocationModel> get registeredAddress =>
      throw _privateConstructorUsedError;
  @override
  Option<LocationModel> get invoicingAddress =>
      throw _privateConstructorUsedError;
  @override
  bool get showErrors => throw _privateConstructorUsedError;
  @override
  bool get submissionInProgress => throw _privateConstructorUsedError;
  @override
  Option<Either<TWServerError, Unit>> get resultOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditCompanyDetailsStateCopyWith<_EditCompanyDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
