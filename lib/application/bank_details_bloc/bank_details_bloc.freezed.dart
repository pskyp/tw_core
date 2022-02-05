// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bank_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BankDetailsEventTearOff {
  const _$BankDetailsEventTearOff();

  OnSortCodeInput onSortCodeInput(String input) {
    return OnSortCodeInput(
      input,
    );
  }

  OnAccountNumberInput onAccountNumberInput(String input) {
    return OnAccountNumberInput(
      input,
    );
  }

  OnSubmitPressed onSubmitPressed() {
    return OnSubmitPressed();
  }
}

/// @nodoc
const $BankDetailsEvent = _$BankDetailsEventTearOff();

/// @nodoc
mixin _$BankDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) onSortCodeInput,
    required TResult Function(String input) onAccountNumberInput,
    required TResult Function() onSubmitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? onSortCodeInput,
    TResult Function(String input)? onAccountNumberInput,
    TResult Function()? onSubmitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? onSortCodeInput,
    TResult Function(String input)? onAccountNumberInput,
    TResult Function()? onSubmitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSortCodeInput value) onSortCodeInput,
    required TResult Function(OnAccountNumberInput value) onAccountNumberInput,
    required TResult Function(OnSubmitPressed value) onSubmitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnSortCodeInput value)? onSortCodeInput,
    TResult Function(OnAccountNumberInput value)? onAccountNumberInput,
    TResult Function(OnSubmitPressed value)? onSubmitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSortCodeInput value)? onSortCodeInput,
    TResult Function(OnAccountNumberInput value)? onAccountNumberInput,
    TResult Function(OnSubmitPressed value)? onSubmitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDetailsEventCopyWith<$Res> {
  factory $BankDetailsEventCopyWith(
          BankDetailsEvent value, $Res Function(BankDetailsEvent) then) =
      _$BankDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BankDetailsEventCopyWithImpl<$Res>
    implements $BankDetailsEventCopyWith<$Res> {
  _$BankDetailsEventCopyWithImpl(this._value, this._then);

  final BankDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(BankDetailsEvent) _then;
}

/// @nodoc
abstract class $OnSortCodeInputCopyWith<$Res> {
  factory $OnSortCodeInputCopyWith(
          OnSortCodeInput value, $Res Function(OnSortCodeInput) then) =
      _$OnSortCodeInputCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$OnSortCodeInputCopyWithImpl<$Res>
    extends _$BankDetailsEventCopyWithImpl<$Res>
    implements $OnSortCodeInputCopyWith<$Res> {
  _$OnSortCodeInputCopyWithImpl(
      OnSortCodeInput _value, $Res Function(OnSortCodeInput) _then)
      : super(_value, (v) => _then(v as OnSortCodeInput));

  @override
  OnSortCodeInput get _value => super._value as OnSortCodeInput;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(OnSortCodeInput(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSortCodeInput implements OnSortCodeInput {
  _$OnSortCodeInput(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'BankDetailsEvent.onSortCodeInput(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnSortCodeInput &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  $OnSortCodeInputCopyWith<OnSortCodeInput> get copyWith =>
      _$OnSortCodeInputCopyWithImpl<OnSortCodeInput>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) onSortCodeInput,
    required TResult Function(String input) onAccountNumberInput,
    required TResult Function() onSubmitPressed,
  }) {
    return onSortCodeInput(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? onSortCodeInput,
    TResult Function(String input)? onAccountNumberInput,
    TResult Function()? onSubmitPressed,
  }) {
    return onSortCodeInput?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? onSortCodeInput,
    TResult Function(String input)? onAccountNumberInput,
    TResult Function()? onSubmitPressed,
    required TResult orElse(),
  }) {
    if (onSortCodeInput != null) {
      return onSortCodeInput(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSortCodeInput value) onSortCodeInput,
    required TResult Function(OnAccountNumberInput value) onAccountNumberInput,
    required TResult Function(OnSubmitPressed value) onSubmitPressed,
  }) {
    return onSortCodeInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnSortCodeInput value)? onSortCodeInput,
    TResult Function(OnAccountNumberInput value)? onAccountNumberInput,
    TResult Function(OnSubmitPressed value)? onSubmitPressed,
  }) {
    return onSortCodeInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSortCodeInput value)? onSortCodeInput,
    TResult Function(OnAccountNumberInput value)? onAccountNumberInput,
    TResult Function(OnSubmitPressed value)? onSubmitPressed,
    required TResult orElse(),
  }) {
    if (onSortCodeInput != null) {
      return onSortCodeInput(this);
    }
    return orElse();
  }
}

abstract class OnSortCodeInput implements BankDetailsEvent {
  factory OnSortCodeInput(String input) = _$OnSortCodeInput;

  String get input;
  @JsonKey(ignore: true)
  $OnSortCodeInputCopyWith<OnSortCodeInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnAccountNumberInputCopyWith<$Res> {
  factory $OnAccountNumberInputCopyWith(OnAccountNumberInput value,
          $Res Function(OnAccountNumberInput) then) =
      _$OnAccountNumberInputCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$OnAccountNumberInputCopyWithImpl<$Res>
    extends _$BankDetailsEventCopyWithImpl<$Res>
    implements $OnAccountNumberInputCopyWith<$Res> {
  _$OnAccountNumberInputCopyWithImpl(
      OnAccountNumberInput _value, $Res Function(OnAccountNumberInput) _then)
      : super(_value, (v) => _then(v as OnAccountNumberInput));

  @override
  OnAccountNumberInput get _value => super._value as OnAccountNumberInput;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(OnAccountNumberInput(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnAccountNumberInput implements OnAccountNumberInput {
  _$OnAccountNumberInput(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'BankDetailsEvent.onAccountNumberInput(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnAccountNumberInput &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  $OnAccountNumberInputCopyWith<OnAccountNumberInput> get copyWith =>
      _$OnAccountNumberInputCopyWithImpl<OnAccountNumberInput>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) onSortCodeInput,
    required TResult Function(String input) onAccountNumberInput,
    required TResult Function() onSubmitPressed,
  }) {
    return onAccountNumberInput(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? onSortCodeInput,
    TResult Function(String input)? onAccountNumberInput,
    TResult Function()? onSubmitPressed,
  }) {
    return onAccountNumberInput?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? onSortCodeInput,
    TResult Function(String input)? onAccountNumberInput,
    TResult Function()? onSubmitPressed,
    required TResult orElse(),
  }) {
    if (onAccountNumberInput != null) {
      return onAccountNumberInput(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSortCodeInput value) onSortCodeInput,
    required TResult Function(OnAccountNumberInput value) onAccountNumberInput,
    required TResult Function(OnSubmitPressed value) onSubmitPressed,
  }) {
    return onAccountNumberInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnSortCodeInput value)? onSortCodeInput,
    TResult Function(OnAccountNumberInput value)? onAccountNumberInput,
    TResult Function(OnSubmitPressed value)? onSubmitPressed,
  }) {
    return onAccountNumberInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSortCodeInput value)? onSortCodeInput,
    TResult Function(OnAccountNumberInput value)? onAccountNumberInput,
    TResult Function(OnSubmitPressed value)? onSubmitPressed,
    required TResult orElse(),
  }) {
    if (onAccountNumberInput != null) {
      return onAccountNumberInput(this);
    }
    return orElse();
  }
}

abstract class OnAccountNumberInput implements BankDetailsEvent {
  factory OnAccountNumberInput(String input) = _$OnAccountNumberInput;

  String get input;
  @JsonKey(ignore: true)
  $OnAccountNumberInputCopyWith<OnAccountNumberInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnSubmitPressedCopyWith<$Res> {
  factory $OnSubmitPressedCopyWith(
          OnSubmitPressed value, $Res Function(OnSubmitPressed) then) =
      _$OnSubmitPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnSubmitPressedCopyWithImpl<$Res>
    extends _$BankDetailsEventCopyWithImpl<$Res>
    implements $OnSubmitPressedCopyWith<$Res> {
  _$OnSubmitPressedCopyWithImpl(
      OnSubmitPressed _value, $Res Function(OnSubmitPressed) _then)
      : super(_value, (v) => _then(v as OnSubmitPressed));

  @override
  OnSubmitPressed get _value => super._value as OnSubmitPressed;
}

/// @nodoc

class _$OnSubmitPressed implements OnSubmitPressed {
  _$OnSubmitPressed();

  @override
  String toString() {
    return 'BankDetailsEvent.onSubmitPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OnSubmitPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) onSortCodeInput,
    required TResult Function(String input) onAccountNumberInput,
    required TResult Function() onSubmitPressed,
  }) {
    return onSubmitPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? onSortCodeInput,
    TResult Function(String input)? onAccountNumberInput,
    TResult Function()? onSubmitPressed,
  }) {
    return onSubmitPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? onSortCodeInput,
    TResult Function(String input)? onAccountNumberInput,
    TResult Function()? onSubmitPressed,
    required TResult orElse(),
  }) {
    if (onSubmitPressed != null) {
      return onSubmitPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSortCodeInput value) onSortCodeInput,
    required TResult Function(OnAccountNumberInput value) onAccountNumberInput,
    required TResult Function(OnSubmitPressed value) onSubmitPressed,
  }) {
    return onSubmitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnSortCodeInput value)? onSortCodeInput,
    TResult Function(OnAccountNumberInput value)? onAccountNumberInput,
    TResult Function(OnSubmitPressed value)? onSubmitPressed,
  }) {
    return onSubmitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSortCodeInput value)? onSortCodeInput,
    TResult Function(OnAccountNumberInput value)? onAccountNumberInput,
    TResult Function(OnSubmitPressed value)? onSubmitPressed,
    required TResult orElse(),
  }) {
    if (onSubmitPressed != null) {
      return onSubmitPressed(this);
    }
    return orElse();
  }
}

abstract class OnSubmitPressed implements BankDetailsEvent {
  factory OnSubmitPressed() = _$OnSubmitPressed;
}

/// @nodoc
class _$BankDetailsStateTearOff {
  const _$BankDetailsStateTearOff();

  _BankDetailsState call(
      {required BankAccountNumber accountNumber,
      required BankSortCode sortCode,
      required bool showErrors,
      required bool submissionInProgress,
      required Option<Either<TWServerError, Unit>> resultOption}) {
    return _BankDetailsState(
      accountNumber: accountNumber,
      sortCode: sortCode,
      showErrors: showErrors,
      submissionInProgress: submissionInProgress,
      resultOption: resultOption,
    );
  }
}

/// @nodoc
const $BankDetailsState = _$BankDetailsStateTearOff();

/// @nodoc
mixin _$BankDetailsState {
  BankAccountNumber get accountNumber => throw _privateConstructorUsedError;
  BankSortCode get sortCode => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  bool get submissionInProgress => throw _privateConstructorUsedError;
  Option<Either<TWServerError, Unit>> get resultOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BankDetailsStateCopyWith<BankDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDetailsStateCopyWith<$Res> {
  factory $BankDetailsStateCopyWith(
          BankDetailsState value, $Res Function(BankDetailsState) then) =
      _$BankDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {BankAccountNumber accountNumber,
      BankSortCode sortCode,
      bool showErrors,
      bool submissionInProgress,
      Option<Either<TWServerError, Unit>> resultOption});
}

/// @nodoc
class _$BankDetailsStateCopyWithImpl<$Res>
    implements $BankDetailsStateCopyWith<$Res> {
  _$BankDetailsStateCopyWithImpl(this._value, this._then);

  final BankDetailsState _value;
  // ignore: unused_field
  final $Res Function(BankDetailsState) _then;

  @override
  $Res call({
    Object? accountNumber = freezed,
    Object? sortCode = freezed,
    Object? showErrors = freezed,
    Object? submissionInProgress = freezed,
    Object? resultOption = freezed,
  }) {
    return _then(_value.copyWith(
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as BankAccountNumber,
      sortCode: sortCode == freezed
          ? _value.sortCode
          : sortCode // ignore: cast_nullable_to_non_nullable
              as BankSortCode,
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
abstract class _$BankDetailsStateCopyWith<$Res>
    implements $BankDetailsStateCopyWith<$Res> {
  factory _$BankDetailsStateCopyWith(
          _BankDetailsState value, $Res Function(_BankDetailsState) then) =
      __$BankDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BankAccountNumber accountNumber,
      BankSortCode sortCode,
      bool showErrors,
      bool submissionInProgress,
      Option<Either<TWServerError, Unit>> resultOption});
}

/// @nodoc
class __$BankDetailsStateCopyWithImpl<$Res>
    extends _$BankDetailsStateCopyWithImpl<$Res>
    implements _$BankDetailsStateCopyWith<$Res> {
  __$BankDetailsStateCopyWithImpl(
      _BankDetailsState _value, $Res Function(_BankDetailsState) _then)
      : super(_value, (v) => _then(v as _BankDetailsState));

  @override
  _BankDetailsState get _value => super._value as _BankDetailsState;

  @override
  $Res call({
    Object? accountNumber = freezed,
    Object? sortCode = freezed,
    Object? showErrors = freezed,
    Object? submissionInProgress = freezed,
    Object? resultOption = freezed,
  }) {
    return _then(_BankDetailsState(
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as BankAccountNumber,
      sortCode: sortCode == freezed
          ? _value.sortCode
          : sortCode // ignore: cast_nullable_to_non_nullable
              as BankSortCode,
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

class _$_BankDetailsState extends _BankDetailsState {
  _$_BankDetailsState(
      {required this.accountNumber,
      required this.sortCode,
      required this.showErrors,
      required this.submissionInProgress,
      required this.resultOption})
      : super._();

  @override
  final BankAccountNumber accountNumber;
  @override
  final BankSortCode sortCode;
  @override
  final bool showErrors;
  @override
  final bool submissionInProgress;
  @override
  final Option<Either<TWServerError, Unit>> resultOption;

  @override
  String toString() {
    return 'BankDetailsState(accountNumber: $accountNumber, sortCode: $sortCode, showErrors: $showErrors, submissionInProgress: $submissionInProgress, resultOption: $resultOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BankDetailsState &&
            const DeepCollectionEquality()
                .equals(other.accountNumber, accountNumber) &&
            const DeepCollectionEquality().equals(other.sortCode, sortCode) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality()
                .equals(other.submissionInProgress, submissionInProgress) &&
            const DeepCollectionEquality()
                .equals(other.resultOption, resultOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accountNumber),
      const DeepCollectionEquality().hash(sortCode),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(submissionInProgress),
      const DeepCollectionEquality().hash(resultOption));

  @JsonKey(ignore: true)
  @override
  _$BankDetailsStateCopyWith<_BankDetailsState> get copyWith =>
      __$BankDetailsStateCopyWithImpl<_BankDetailsState>(this, _$identity);
}

abstract class _BankDetailsState extends BankDetailsState {
  factory _BankDetailsState(
          {required BankAccountNumber accountNumber,
          required BankSortCode sortCode,
          required bool showErrors,
          required bool submissionInProgress,
          required Option<Either<TWServerError, Unit>> resultOption}) =
      _$_BankDetailsState;
  _BankDetailsState._() : super._();

  @override
  BankAccountNumber get accountNumber;
  @override
  BankSortCode get sortCode;
  @override
  bool get showErrors;
  @override
  bool get submissionInProgress;
  @override
  Option<Either<TWServerError, Unit>> get resultOption;
  @override
  @JsonKey(ignore: true)
  _$BankDetailsStateCopyWith<_BankDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
