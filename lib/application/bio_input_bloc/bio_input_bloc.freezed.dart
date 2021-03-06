// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bio_input_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BioInputEventTearOff {
  const _$BioInputEventTearOff();

  CoverLetterInput coverLetterInpput(String input) {
    return CoverLetterInput(
      input,
    );
  }

  SubmitPressed submitPressed() {
    return const SubmitPressed();
  }
}

/// @nodoc
const $BioInputEvent = _$BioInputEventTearOff();

/// @nodoc
mixin _$BioInputEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) coverLetterInpput,
    required TResult Function() submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? coverLetterInpput,
    TResult Function()? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? coverLetterInpput,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoverLetterInput value) coverLetterInpput,
    required TResult Function(SubmitPressed value) submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CoverLetterInput value)? coverLetterInpput,
    TResult Function(SubmitPressed value)? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoverLetterInput value)? coverLetterInpput,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BioInputEventCopyWith<$Res> {
  factory $BioInputEventCopyWith(
          BioInputEvent value, $Res Function(BioInputEvent) then) =
      _$BioInputEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BioInputEventCopyWithImpl<$Res>
    implements $BioInputEventCopyWith<$Res> {
  _$BioInputEventCopyWithImpl(this._value, this._then);

  final BioInputEvent _value;
  // ignore: unused_field
  final $Res Function(BioInputEvent) _then;
}

/// @nodoc
abstract class $CoverLetterInputCopyWith<$Res> {
  factory $CoverLetterInputCopyWith(
          CoverLetterInput value, $Res Function(CoverLetterInput) then) =
      _$CoverLetterInputCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$CoverLetterInputCopyWithImpl<$Res>
    extends _$BioInputEventCopyWithImpl<$Res>
    implements $CoverLetterInputCopyWith<$Res> {
  _$CoverLetterInputCopyWithImpl(
      CoverLetterInput _value, $Res Function(CoverLetterInput) _then)
      : super(_value, (v) => _then(v as CoverLetterInput));

  @override
  CoverLetterInput get _value => super._value as CoverLetterInput;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(CoverLetterInput(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoverLetterInput implements CoverLetterInput {
  const _$CoverLetterInput(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'BioInputEvent.coverLetterInpput(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoverLetterInput &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  $CoverLetterInputCopyWith<CoverLetterInput> get copyWith =>
      _$CoverLetterInputCopyWithImpl<CoverLetterInput>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) coverLetterInpput,
    required TResult Function() submitPressed,
  }) {
    return coverLetterInpput(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? coverLetterInpput,
    TResult Function()? submitPressed,
  }) {
    return coverLetterInpput?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? coverLetterInpput,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (coverLetterInpput != null) {
      return coverLetterInpput(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoverLetterInput value) coverLetterInpput,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return coverLetterInpput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CoverLetterInput value)? coverLetterInpput,
    TResult Function(SubmitPressed value)? submitPressed,
  }) {
    return coverLetterInpput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoverLetterInput value)? coverLetterInpput,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (coverLetterInpput != null) {
      return coverLetterInpput(this);
    }
    return orElse();
  }
}

abstract class CoverLetterInput implements BioInputEvent {
  const factory CoverLetterInput(String input) = _$CoverLetterInput;

  String get input;
  @JsonKey(ignore: true)
  $CoverLetterInputCopyWith<CoverLetterInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitPressedCopyWith<$Res> {
  factory $SubmitPressedCopyWith(
          SubmitPressed value, $Res Function(SubmitPressed) then) =
      _$SubmitPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitPressedCopyWithImpl<$Res>
    extends _$BioInputEventCopyWithImpl<$Res>
    implements $SubmitPressedCopyWith<$Res> {
  _$SubmitPressedCopyWithImpl(
      SubmitPressed _value, $Res Function(SubmitPressed) _then)
      : super(_value, (v) => _then(v as SubmitPressed));

  @override
  SubmitPressed get _value => super._value as SubmitPressed;
}

/// @nodoc

class _$SubmitPressed implements SubmitPressed {
  const _$SubmitPressed();

  @override
  String toString() {
    return 'BioInputEvent.submitPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SubmitPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) coverLetterInpput,
    required TResult Function() submitPressed,
  }) {
    return submitPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? coverLetterInpput,
    TResult Function()? submitPressed,
  }) {
    return submitPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? coverLetterInpput,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoverLetterInput value) coverLetterInpput,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return submitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CoverLetterInput value)? coverLetterInpput,
    TResult Function(SubmitPressed value)? submitPressed,
  }) {
    return submitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoverLetterInput value)? coverLetterInpput,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(this);
    }
    return orElse();
  }
}

abstract class SubmitPressed implements BioInputEvent {
  const factory SubmitPressed() = _$SubmitPressed;
}

/// @nodoc
class _$BioInputStateTearOff {
  const _$BioInputStateTearOff();

  _BioInputState call(
      {required bool showErrorMessages,
      required bool submissionInProgress,
      required Option<Either<TWServerError, Unit>> resultOption,
      required TWString coverLetter}) {
    return _BioInputState(
      showErrorMessages: showErrorMessages,
      submissionInProgress: submissionInProgress,
      resultOption: resultOption,
      coverLetter: coverLetter,
    );
  }
}

/// @nodoc
const $BioInputState = _$BioInputStateTearOff();

/// @nodoc
mixin _$BioInputState {
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get submissionInProgress => throw _privateConstructorUsedError;
  Option<Either<TWServerError, Unit>> get resultOption =>
      throw _privateConstructorUsedError;
  TWString get coverLetter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BioInputStateCopyWith<BioInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BioInputStateCopyWith<$Res> {
  factory $BioInputStateCopyWith(
          BioInputState value, $Res Function(BioInputState) then) =
      _$BioInputStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages,
      bool submissionInProgress,
      Option<Either<TWServerError, Unit>> resultOption,
      TWString coverLetter});
}

/// @nodoc
class _$BioInputStateCopyWithImpl<$Res>
    implements $BioInputStateCopyWith<$Res> {
  _$BioInputStateCopyWithImpl(this._value, this._then);

  final BioInputState _value;
  // ignore: unused_field
  final $Res Function(BioInputState) _then;

  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? submissionInProgress = freezed,
    Object? resultOption = freezed,
    Object? coverLetter = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionInProgress: submissionInProgress == freezed
          ? _value.submissionInProgress
          : submissionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TWServerError, Unit>>,
      coverLetter: coverLetter == freezed
          ? _value.coverLetter
          : coverLetter // ignore: cast_nullable_to_non_nullable
              as TWString,
    ));
  }
}

/// @nodoc
abstract class _$BioInputStateCopyWith<$Res>
    implements $BioInputStateCopyWith<$Res> {
  factory _$BioInputStateCopyWith(
          _BioInputState value, $Res Function(_BioInputState) then) =
      __$BioInputStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorMessages,
      bool submissionInProgress,
      Option<Either<TWServerError, Unit>> resultOption,
      TWString coverLetter});
}

/// @nodoc
class __$BioInputStateCopyWithImpl<$Res>
    extends _$BioInputStateCopyWithImpl<$Res>
    implements _$BioInputStateCopyWith<$Res> {
  __$BioInputStateCopyWithImpl(
      _BioInputState _value, $Res Function(_BioInputState) _then)
      : super(_value, (v) => _then(v as _BioInputState));

  @override
  _BioInputState get _value => super._value as _BioInputState;

  @override
  $Res call({
    Object? showErrorMessages = freezed,
    Object? submissionInProgress = freezed,
    Object? resultOption = freezed,
    Object? coverLetter = freezed,
  }) {
    return _then(_BioInputState(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionInProgress: submissionInProgress == freezed
          ? _value.submissionInProgress
          : submissionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TWServerError, Unit>>,
      coverLetter: coverLetter == freezed
          ? _value.coverLetter
          : coverLetter // ignore: cast_nullable_to_non_nullable
              as TWString,
    ));
  }
}

/// @nodoc

class _$_BioInputState implements _BioInputState {
  const _$_BioInputState(
      {required this.showErrorMessages,
      required this.submissionInProgress,
      required this.resultOption,
      required this.coverLetter});

  @override
  final bool showErrorMessages;
  @override
  final bool submissionInProgress;
  @override
  final Option<Either<TWServerError, Unit>> resultOption;
  @override
  final TWString coverLetter;

  @override
  String toString() {
    return 'BioInputState(showErrorMessages: $showErrorMessages, submissionInProgress: $submissionInProgress, resultOption: $resultOption, coverLetter: $coverLetter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BioInputState &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.submissionInProgress, submissionInProgress) &&
            const DeepCollectionEquality()
                .equals(other.resultOption, resultOption) &&
            const DeepCollectionEquality()
                .equals(other.coverLetter, coverLetter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(submissionInProgress),
      const DeepCollectionEquality().hash(resultOption),
      const DeepCollectionEquality().hash(coverLetter));

  @JsonKey(ignore: true)
  @override
  _$BioInputStateCopyWith<_BioInputState> get copyWith =>
      __$BioInputStateCopyWithImpl<_BioInputState>(this, _$identity);
}

abstract class _BioInputState implements BioInputState {
  const factory _BioInputState(
      {required bool showErrorMessages,
      required bool submissionInProgress,
      required Option<Either<TWServerError, Unit>> resultOption,
      required TWString coverLetter}) = _$_BioInputState;

  @override
  bool get showErrorMessages;
  @override
  bool get submissionInProgress;
  @override
  Option<Either<TWServerError, Unit>> get resultOption;
  @override
  TWString get coverLetter;
  @override
  @JsonKey(ignore: true)
  _$BioInputStateCopyWith<_BioInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
