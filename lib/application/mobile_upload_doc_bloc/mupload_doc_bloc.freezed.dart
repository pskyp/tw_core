// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mupload_doc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MUploadDocEventTearOff {
  const _$MUploadDocEventTearOff();

  DocInstructionsInput docInstructionsInput(String input) {
    return DocInstructionsInput(
      input,
    );
  }

  FiledPicked filedPicked(FilePickerResult? file) {
    return FiledPicked(
      file,
    );
  }

  UploadPressed uploadPressed() {
    return const UploadPressed();
  }
}

/// @nodoc
const $MUploadDocEvent = _$MUploadDocEventTearOff();

/// @nodoc
mixin _$MUploadDocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) docInstructionsInput,
    required TResult Function(FilePickerResult? file) filedPicked,
    required TResult Function() uploadPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? docInstructionsInput,
    TResult Function(FilePickerResult? file)? filedPicked,
    TResult Function()? uploadPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? docInstructionsInput,
    TResult Function(FilePickerResult? file)? filedPicked,
    TResult Function()? uploadPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocInstructionsInput value) docInstructionsInput,
    required TResult Function(FiledPicked value) filedPicked,
    required TResult Function(UploadPressed value) uploadPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DocInstructionsInput value)? docInstructionsInput,
    TResult Function(FiledPicked value)? filedPicked,
    TResult Function(UploadPressed value)? uploadPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocInstructionsInput value)? docInstructionsInput,
    TResult Function(FiledPicked value)? filedPicked,
    TResult Function(UploadPressed value)? uploadPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MUploadDocEventCopyWith<$Res> {
  factory $MUploadDocEventCopyWith(
          MUploadDocEvent value, $Res Function(MUploadDocEvent) then) =
      _$MUploadDocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MUploadDocEventCopyWithImpl<$Res>
    implements $MUploadDocEventCopyWith<$Res> {
  _$MUploadDocEventCopyWithImpl(this._value, this._then);

  final MUploadDocEvent _value;
  // ignore: unused_field
  final $Res Function(MUploadDocEvent) _then;
}

/// @nodoc
abstract class $DocInstructionsInputCopyWith<$Res> {
  factory $DocInstructionsInputCopyWith(DocInstructionsInput value,
          $Res Function(DocInstructionsInput) then) =
      _$DocInstructionsInputCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$DocInstructionsInputCopyWithImpl<$Res>
    extends _$MUploadDocEventCopyWithImpl<$Res>
    implements $DocInstructionsInputCopyWith<$Res> {
  _$DocInstructionsInputCopyWithImpl(
      DocInstructionsInput _value, $Res Function(DocInstructionsInput) _then)
      : super(_value, (v) => _then(v as DocInstructionsInput));

  @override
  DocInstructionsInput get _value => super._value as DocInstructionsInput;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(DocInstructionsInput(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DocInstructionsInput implements DocInstructionsInput {
  const _$DocInstructionsInput(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'MUploadDocEvent.docInstructionsInput(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DocInstructionsInput &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  $DocInstructionsInputCopyWith<DocInstructionsInput> get copyWith =>
      _$DocInstructionsInputCopyWithImpl<DocInstructionsInput>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) docInstructionsInput,
    required TResult Function(FilePickerResult? file) filedPicked,
    required TResult Function() uploadPressed,
  }) {
    return docInstructionsInput(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? docInstructionsInput,
    TResult Function(FilePickerResult? file)? filedPicked,
    TResult Function()? uploadPressed,
  }) {
    return docInstructionsInput?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? docInstructionsInput,
    TResult Function(FilePickerResult? file)? filedPicked,
    TResult Function()? uploadPressed,
    required TResult orElse(),
  }) {
    if (docInstructionsInput != null) {
      return docInstructionsInput(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocInstructionsInput value) docInstructionsInput,
    required TResult Function(FiledPicked value) filedPicked,
    required TResult Function(UploadPressed value) uploadPressed,
  }) {
    return docInstructionsInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DocInstructionsInput value)? docInstructionsInput,
    TResult Function(FiledPicked value)? filedPicked,
    TResult Function(UploadPressed value)? uploadPressed,
  }) {
    return docInstructionsInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocInstructionsInput value)? docInstructionsInput,
    TResult Function(FiledPicked value)? filedPicked,
    TResult Function(UploadPressed value)? uploadPressed,
    required TResult orElse(),
  }) {
    if (docInstructionsInput != null) {
      return docInstructionsInput(this);
    }
    return orElse();
  }
}

abstract class DocInstructionsInput implements MUploadDocEvent {
  const factory DocInstructionsInput(String input) = _$DocInstructionsInput;

  String get input;
  @JsonKey(ignore: true)
  $DocInstructionsInputCopyWith<DocInstructionsInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiledPickedCopyWith<$Res> {
  factory $FiledPickedCopyWith(
          FiledPicked value, $Res Function(FiledPicked) then) =
      _$FiledPickedCopyWithImpl<$Res>;
  $Res call({FilePickerResult? file});
}

/// @nodoc
class _$FiledPickedCopyWithImpl<$Res>
    extends _$MUploadDocEventCopyWithImpl<$Res>
    implements $FiledPickedCopyWith<$Res> {
  _$FiledPickedCopyWithImpl(
      FiledPicked _value, $Res Function(FiledPicked) _then)
      : super(_value, (v) => _then(v as FiledPicked));

  @override
  FiledPicked get _value => super._value as FiledPicked;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(FiledPicked(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FilePickerResult?,
    ));
  }
}

/// @nodoc

class _$FiledPicked implements FiledPicked {
  const _$FiledPicked(this.file);

  @override
  final FilePickerResult? file;

  @override
  String toString() {
    return 'MUploadDocEvent.filedPicked(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FiledPicked &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  $FiledPickedCopyWith<FiledPicked> get copyWith =>
      _$FiledPickedCopyWithImpl<FiledPicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) docInstructionsInput,
    required TResult Function(FilePickerResult? file) filedPicked,
    required TResult Function() uploadPressed,
  }) {
    return filedPicked(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? docInstructionsInput,
    TResult Function(FilePickerResult? file)? filedPicked,
    TResult Function()? uploadPressed,
  }) {
    return filedPicked?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? docInstructionsInput,
    TResult Function(FilePickerResult? file)? filedPicked,
    TResult Function()? uploadPressed,
    required TResult orElse(),
  }) {
    if (filedPicked != null) {
      return filedPicked(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocInstructionsInput value) docInstructionsInput,
    required TResult Function(FiledPicked value) filedPicked,
    required TResult Function(UploadPressed value) uploadPressed,
  }) {
    return filedPicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DocInstructionsInput value)? docInstructionsInput,
    TResult Function(FiledPicked value)? filedPicked,
    TResult Function(UploadPressed value)? uploadPressed,
  }) {
    return filedPicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocInstructionsInput value)? docInstructionsInput,
    TResult Function(FiledPicked value)? filedPicked,
    TResult Function(UploadPressed value)? uploadPressed,
    required TResult orElse(),
  }) {
    if (filedPicked != null) {
      return filedPicked(this);
    }
    return orElse();
  }
}

abstract class FiledPicked implements MUploadDocEvent {
  const factory FiledPicked(FilePickerResult? file) = _$FiledPicked;

  FilePickerResult? get file;
  @JsonKey(ignore: true)
  $FiledPickedCopyWith<FiledPicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPressedCopyWith<$Res> {
  factory $UploadPressedCopyWith(
          UploadPressed value, $Res Function(UploadPressed) then) =
      _$UploadPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadPressedCopyWithImpl<$Res>
    extends _$MUploadDocEventCopyWithImpl<$Res>
    implements $UploadPressedCopyWith<$Res> {
  _$UploadPressedCopyWithImpl(
      UploadPressed _value, $Res Function(UploadPressed) _then)
      : super(_value, (v) => _then(v as UploadPressed));

  @override
  UploadPressed get _value => super._value as UploadPressed;
}

/// @nodoc

class _$UploadPressed implements UploadPressed {
  const _$UploadPressed();

  @override
  String toString() {
    return 'MUploadDocEvent.uploadPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UploadPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) docInstructionsInput,
    required TResult Function(FilePickerResult? file) filedPicked,
    required TResult Function() uploadPressed,
  }) {
    return uploadPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? docInstructionsInput,
    TResult Function(FilePickerResult? file)? filedPicked,
    TResult Function()? uploadPressed,
  }) {
    return uploadPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? docInstructionsInput,
    TResult Function(FilePickerResult? file)? filedPicked,
    TResult Function()? uploadPressed,
    required TResult orElse(),
  }) {
    if (uploadPressed != null) {
      return uploadPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocInstructionsInput value) docInstructionsInput,
    required TResult Function(FiledPicked value) filedPicked,
    required TResult Function(UploadPressed value) uploadPressed,
  }) {
    return uploadPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DocInstructionsInput value)? docInstructionsInput,
    TResult Function(FiledPicked value)? filedPicked,
    TResult Function(UploadPressed value)? uploadPressed,
  }) {
    return uploadPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocInstructionsInput value)? docInstructionsInput,
    TResult Function(FiledPicked value)? filedPicked,
    TResult Function(UploadPressed value)? uploadPressed,
    required TResult orElse(),
  }) {
    if (uploadPressed != null) {
      return uploadPressed(this);
    }
    return orElse();
  }
}

abstract class UploadPressed implements MUploadDocEvent {
  const factory UploadPressed() = _$UploadPressed;
}

/// @nodoc
class _$MUploadDocStateTearOff {
  const _$MUploadDocStateTearOff();

  _MUploadDocState call(
      {required TWString instruction,
      bool? requireInstructions,
      required FilePickerResult? selectedFile,
      required bool showErrorMessages,
      required bool uploadInProgress,
      required TWUser loggedInUser,
      required String typeId,
      required TWDocType docType,
      required Option<Either<TWServerError, Unit>> resultOption}) {
    return _MUploadDocState(
      instruction: instruction,
      requireInstructions: requireInstructions,
      selectedFile: selectedFile,
      showErrorMessages: showErrorMessages,
      uploadInProgress: uploadInProgress,
      loggedInUser: loggedInUser,
      typeId: typeId,
      docType: docType,
      resultOption: resultOption,
    );
  }
}

/// @nodoc
const $MUploadDocState = _$MUploadDocStateTearOff();

/// @nodoc
mixin _$MUploadDocState {
  TWString get instruction => throw _privateConstructorUsedError;
  bool? get requireInstructions => throw _privateConstructorUsedError;
  FilePickerResult? get selectedFile => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get uploadInProgress => throw _privateConstructorUsedError;
  TWUser get loggedInUser => throw _privateConstructorUsedError;
  String get typeId => throw _privateConstructorUsedError;
  TWDocType get docType => throw _privateConstructorUsedError;
  Option<Either<TWServerError, Unit>> get resultOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MUploadDocStateCopyWith<MUploadDocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MUploadDocStateCopyWith<$Res> {
  factory $MUploadDocStateCopyWith(
          MUploadDocState value, $Res Function(MUploadDocState) then) =
      _$MUploadDocStateCopyWithImpl<$Res>;
  $Res call(
      {TWString instruction,
      bool? requireInstructions,
      FilePickerResult? selectedFile,
      bool showErrorMessages,
      bool uploadInProgress,
      TWUser loggedInUser,
      String typeId,
      TWDocType docType,
      Option<Either<TWServerError, Unit>> resultOption});
}

/// @nodoc
class _$MUploadDocStateCopyWithImpl<$Res>
    implements $MUploadDocStateCopyWith<$Res> {
  _$MUploadDocStateCopyWithImpl(this._value, this._then);

  final MUploadDocState _value;
  // ignore: unused_field
  final $Res Function(MUploadDocState) _then;

  @override
  $Res call({
    Object? instruction = freezed,
    Object? requireInstructions = freezed,
    Object? selectedFile = freezed,
    Object? showErrorMessages = freezed,
    Object? uploadInProgress = freezed,
    Object? loggedInUser = freezed,
    Object? typeId = freezed,
    Object? docType = freezed,
    Object? resultOption = freezed,
  }) {
    return _then(_value.copyWith(
      instruction: instruction == freezed
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as TWString,
      requireInstructions: requireInstructions == freezed
          ? _value.requireInstructions
          : requireInstructions // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedFile: selectedFile == freezed
          ? _value.selectedFile
          : selectedFile // ignore: cast_nullable_to_non_nullable
              as FilePickerResult?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadInProgress: uploadInProgress == freezed
          ? _value.uploadInProgress
          : uploadInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      loggedInUser: loggedInUser == freezed
          ? _value.loggedInUser
          : loggedInUser // ignore: cast_nullable_to_non_nullable
              as TWUser,
      typeId: typeId == freezed
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String,
      docType: docType == freezed
          ? _value.docType
          : docType // ignore: cast_nullable_to_non_nullable
              as TWDocType,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TWServerError, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$MUploadDocStateCopyWith<$Res>
    implements $MUploadDocStateCopyWith<$Res> {
  factory _$MUploadDocStateCopyWith(
          _MUploadDocState value, $Res Function(_MUploadDocState) then) =
      __$MUploadDocStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TWString instruction,
      bool? requireInstructions,
      FilePickerResult? selectedFile,
      bool showErrorMessages,
      bool uploadInProgress,
      TWUser loggedInUser,
      String typeId,
      TWDocType docType,
      Option<Either<TWServerError, Unit>> resultOption});
}

/// @nodoc
class __$MUploadDocStateCopyWithImpl<$Res>
    extends _$MUploadDocStateCopyWithImpl<$Res>
    implements _$MUploadDocStateCopyWith<$Res> {
  __$MUploadDocStateCopyWithImpl(
      _MUploadDocState _value, $Res Function(_MUploadDocState) _then)
      : super(_value, (v) => _then(v as _MUploadDocState));

  @override
  _MUploadDocState get _value => super._value as _MUploadDocState;

  @override
  $Res call({
    Object? instruction = freezed,
    Object? requireInstructions = freezed,
    Object? selectedFile = freezed,
    Object? showErrorMessages = freezed,
    Object? uploadInProgress = freezed,
    Object? loggedInUser = freezed,
    Object? typeId = freezed,
    Object? docType = freezed,
    Object? resultOption = freezed,
  }) {
    return _then(_MUploadDocState(
      instruction: instruction == freezed
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as TWString,
      requireInstructions: requireInstructions == freezed
          ? _value.requireInstructions
          : requireInstructions // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedFile: selectedFile == freezed
          ? _value.selectedFile
          : selectedFile // ignore: cast_nullable_to_non_nullable
              as FilePickerResult?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadInProgress: uploadInProgress == freezed
          ? _value.uploadInProgress
          : uploadInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      loggedInUser: loggedInUser == freezed
          ? _value.loggedInUser
          : loggedInUser // ignore: cast_nullable_to_non_nullable
              as TWUser,
      typeId: typeId == freezed
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String,
      docType: docType == freezed
          ? _value.docType
          : docType // ignore: cast_nullable_to_non_nullable
              as TWDocType,
      resultOption: resultOption == freezed
          ? _value.resultOption
          : resultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TWServerError, Unit>>,
    ));
  }
}

/// @nodoc

class _$_MUploadDocState extends _MUploadDocState {
  const _$_MUploadDocState(
      {required this.instruction,
      this.requireInstructions,
      required this.selectedFile,
      required this.showErrorMessages,
      required this.uploadInProgress,
      required this.loggedInUser,
      required this.typeId,
      required this.docType,
      required this.resultOption})
      : super._();

  @override
  final TWString instruction;
  @override
  final bool? requireInstructions;
  @override
  final FilePickerResult? selectedFile;
  @override
  final bool showErrorMessages;
  @override
  final bool uploadInProgress;
  @override
  final TWUser loggedInUser;
  @override
  final String typeId;
  @override
  final TWDocType docType;
  @override
  final Option<Either<TWServerError, Unit>> resultOption;

  @override
  String toString() {
    return 'MUploadDocState(instruction: $instruction, requireInstructions: $requireInstructions, selectedFile: $selectedFile, showErrorMessages: $showErrorMessages, uploadInProgress: $uploadInProgress, loggedInUser: $loggedInUser, typeId: $typeId, docType: $docType, resultOption: $resultOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MUploadDocState &&
            const DeepCollectionEquality()
                .equals(other.instruction, instruction) &&
            const DeepCollectionEquality()
                .equals(other.requireInstructions, requireInstructions) &&
            const DeepCollectionEquality()
                .equals(other.selectedFile, selectedFile) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.uploadInProgress, uploadInProgress) &&
            const DeepCollectionEquality()
                .equals(other.loggedInUser, loggedInUser) &&
            const DeepCollectionEquality().equals(other.typeId, typeId) &&
            const DeepCollectionEquality().equals(other.docType, docType) &&
            const DeepCollectionEquality()
                .equals(other.resultOption, resultOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(instruction),
      const DeepCollectionEquality().hash(requireInstructions),
      const DeepCollectionEquality().hash(selectedFile),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(uploadInProgress),
      const DeepCollectionEquality().hash(loggedInUser),
      const DeepCollectionEquality().hash(typeId),
      const DeepCollectionEquality().hash(docType),
      const DeepCollectionEquality().hash(resultOption));

  @JsonKey(ignore: true)
  @override
  _$MUploadDocStateCopyWith<_MUploadDocState> get copyWith =>
      __$MUploadDocStateCopyWithImpl<_MUploadDocState>(this, _$identity);
}

abstract class _MUploadDocState extends MUploadDocState {
  const factory _MUploadDocState(
          {required TWString instruction,
          bool? requireInstructions,
          required FilePickerResult? selectedFile,
          required bool showErrorMessages,
          required bool uploadInProgress,
          required TWUser loggedInUser,
          required String typeId,
          required TWDocType docType,
          required Option<Either<TWServerError, Unit>> resultOption}) =
      _$_MUploadDocState;
  const _MUploadDocState._() : super._();

  @override
  TWString get instruction;
  @override
  bool? get requireInstructions;
  @override
  FilePickerResult? get selectedFile;
  @override
  bool get showErrorMessages;
  @override
  bool get uploadInProgress;
  @override
  TWUser get loggedInUser;
  @override
  String get typeId;
  @override
  TWDocType get docType;
  @override
  Option<Either<TWServerError, Unit>> get resultOption;
  @override
  @JsonKey(ignore: true)
  _$MUploadDocStateCopyWith<_MUploadDocState> get copyWith =>
      throw _privateConstructorUsedError;
}
