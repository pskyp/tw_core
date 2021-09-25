// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_job_requirement_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateJobRequirementEventTearOff {
  const _$CreateJobRequirementEventTearOff();

  SubmitPressed submitPressed(String input) {
    return SubmitPressed(
      input,
    );
  }
}

/// @nodoc
const $CreateJobRequirementEvent = _$CreateJobRequirementEventTearOff();

/// @nodoc
mixin _$CreateJobRequirementEvent {
  String get input => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitPressed value) submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateJobRequirementEventCopyWith<CreateJobRequirementEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateJobRequirementEventCopyWith<$Res> {
  factory $CreateJobRequirementEventCopyWith(CreateJobRequirementEvent value,
          $Res Function(CreateJobRequirementEvent) then) =
      _$CreateJobRequirementEventCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$CreateJobRequirementEventCopyWithImpl<$Res>
    implements $CreateJobRequirementEventCopyWith<$Res> {
  _$CreateJobRequirementEventCopyWithImpl(this._value, this._then);

  final CreateJobRequirementEvent _value;
  // ignore: unused_field
  final $Res Function(CreateJobRequirementEvent) _then;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_value.copyWith(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SubmitPressedCopyWith<$Res>
    implements $CreateJobRequirementEventCopyWith<$Res> {
  factory $SubmitPressedCopyWith(
          SubmitPressed value, $Res Function(SubmitPressed) then) =
      _$SubmitPressedCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class _$SubmitPressedCopyWithImpl<$Res>
    extends _$CreateJobRequirementEventCopyWithImpl<$Res>
    implements $SubmitPressedCopyWith<$Res> {
  _$SubmitPressedCopyWithImpl(
      SubmitPressed _value, $Res Function(SubmitPressed) _then)
      : super(_value, (v) => _then(v as SubmitPressed));

  @override
  SubmitPressed get _value => super._value as SubmitPressed;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(SubmitPressed(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitPressed implements SubmitPressed {
  const _$SubmitPressed(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'CreateJobRequirementEvent.submitPressed(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubmitPressed &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  $SubmitPressedCopyWith<SubmitPressed> get copyWith =>
      _$SubmitPressedCopyWithImpl<SubmitPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) submitPressed,
  }) {
    return submitPressed(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return submitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(this);
    }
    return orElse();
  }
}

abstract class SubmitPressed implements CreateJobRequirementEvent {
  const factory SubmitPressed(String input) = _$SubmitPressed;

  @override
  String get input => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SubmitPressedCopyWith<SubmitPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateJobRequirementStateTearOff {
  const _$CreateJobRequirementStateTearOff();

  _CreateJobRequirementState call(
      {required TWString requirementInput,
      required bool submissionInProgress,
      required bool showErrorMessages,
      required Option<Either<TWServerError, Unit>> resultOption}) {
    return _CreateJobRequirementState(
      requirementInput: requirementInput,
      submissionInProgress: submissionInProgress,
      showErrorMessages: showErrorMessages,
      resultOption: resultOption,
    );
  }
}

/// @nodoc
const $CreateJobRequirementState = _$CreateJobRequirementStateTearOff();

/// @nodoc
mixin _$CreateJobRequirementState {
  TWString get requirementInput => throw _privateConstructorUsedError;
  bool get submissionInProgress => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<TWServerError, Unit>> get resultOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateJobRequirementStateCopyWith<CreateJobRequirementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateJobRequirementStateCopyWith<$Res> {
  factory $CreateJobRequirementStateCopyWith(CreateJobRequirementState value,
          $Res Function(CreateJobRequirementState) then) =
      _$CreateJobRequirementStateCopyWithImpl<$Res>;
  $Res call(
      {TWString requirementInput,
      bool submissionInProgress,
      bool showErrorMessages,
      Option<Either<TWServerError, Unit>> resultOption});
}

/// @nodoc
class _$CreateJobRequirementStateCopyWithImpl<$Res>
    implements $CreateJobRequirementStateCopyWith<$Res> {
  _$CreateJobRequirementStateCopyWithImpl(this._value, this._then);

  final CreateJobRequirementState _value;
  // ignore: unused_field
  final $Res Function(CreateJobRequirementState) _then;

  @override
  $Res call({
    Object? requirementInput = freezed,
    Object? submissionInProgress = freezed,
    Object? showErrorMessages = freezed,
    Object? resultOption = freezed,
  }) {
    return _then(_value.copyWith(
      requirementInput: requirementInput == freezed
          ? _value.requirementInput
          : requirementInput // ignore: cast_nullable_to_non_nullable
              as TWString,
      submissionInProgress: submissionInProgress == freezed
          ? _value.submissionInProgress
          : submissionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TWServerError, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$CreateJobRequirementStateCopyWith<$Res>
    implements $CreateJobRequirementStateCopyWith<$Res> {
  factory _$CreateJobRequirementStateCopyWith(_CreateJobRequirementState value,
          $Res Function(_CreateJobRequirementState) then) =
      __$CreateJobRequirementStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TWString requirementInput,
      bool submissionInProgress,
      bool showErrorMessages,
      Option<Either<TWServerError, Unit>> resultOption});
}

/// @nodoc
class __$CreateJobRequirementStateCopyWithImpl<$Res>
    extends _$CreateJobRequirementStateCopyWithImpl<$Res>
    implements _$CreateJobRequirementStateCopyWith<$Res> {
  __$CreateJobRequirementStateCopyWithImpl(_CreateJobRequirementState _value,
      $Res Function(_CreateJobRequirementState) _then)
      : super(_value, (v) => _then(v as _CreateJobRequirementState));

  @override
  _CreateJobRequirementState get _value =>
      super._value as _CreateJobRequirementState;

  @override
  $Res call({
    Object? requirementInput = freezed,
    Object? submissionInProgress = freezed,
    Object? showErrorMessages = freezed,
    Object? resultOption = freezed,
  }) {
    return _then(_CreateJobRequirementState(
      requirementInput: requirementInput == freezed
          ? _value.requirementInput
          : requirementInput // ignore: cast_nullable_to_non_nullable
              as TWString,
      submissionInProgress: submissionInProgress == freezed
          ? _value.submissionInProgress
          : submissionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TWServerError, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CreateJobRequirementState implements _CreateJobRequirementState {
  const _$_CreateJobRequirementState(
      {required this.requirementInput,
      required this.submissionInProgress,
      required this.showErrorMessages,
      required this.resultOption});

  @override
  final TWString requirementInput;
  @override
  final bool submissionInProgress;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<TWServerError, Unit>> resultOption;

  @override
  String toString() {
    return 'CreateJobRequirementState(requirementInput: $requirementInput, submissionInProgress: $submissionInProgress, showErrorMessages: $showErrorMessages, resultOption: $resultOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateJobRequirementState &&
            (identical(other.requirementInput, requirementInput) ||
                const DeepCollectionEquality()
                    .equals(other.requirementInput, requirementInput)) &&
            (identical(other.submissionInProgress, submissionInProgress) ||
                const DeepCollectionEquality().equals(
                    other.submissionInProgress, submissionInProgress)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.resultOption, resultOption) ||
                const DeepCollectionEquality()
                    .equals(other.resultOption, resultOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requirementInput) ^
      const DeepCollectionEquality().hash(submissionInProgress) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(resultOption);

  @JsonKey(ignore: true)
  @override
  _$CreateJobRequirementStateCopyWith<_CreateJobRequirementState>
      get copyWith =>
          __$CreateJobRequirementStateCopyWithImpl<_CreateJobRequirementState>(
              this, _$identity);
}

abstract class _CreateJobRequirementState implements CreateJobRequirementState {
  const factory _CreateJobRequirementState(
          {required TWString requirementInput,
          required bool submissionInProgress,
          required bool showErrorMessages,
          required Option<Either<TWServerError, Unit>> resultOption}) =
      _$_CreateJobRequirementState;

  @override
  TWString get requirementInput => throw _privateConstructorUsedError;
  @override
  bool get submissionInProgress => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<TWServerError, Unit>> get resultOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateJobRequirementStateCopyWith<_CreateJobRequirementState>
      get copyWith => throw _privateConstructorUsedError;
}