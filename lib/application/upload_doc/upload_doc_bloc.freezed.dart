// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_doc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UploadDocEventTearOff {
  const _$UploadDocEventTearOff();

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
const $UploadDocEvent = _$UploadDocEventTearOff();

/// @nodoc
mixin _$UploadDocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) docInstructionsInput,
    required TResult Function(FilePickerResult? file) filedPicked,
    required TResult Function() uploadPressed,
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocInstructionsInput value)? docInstructionsInput,
    TResult Function(FiledPicked value)? filedPicked,
    TResult Function(UploadPressed value)? uploadPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadDocEventCopyWith<$Res> {
  factory $UploadDocEventCopyWith(
          UploadDocEvent value, $Res Function(UploadDocEvent) then) =
      _$UploadDocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadDocEventCopyWithImpl<$Res>
    implements $UploadDocEventCopyWith<$Res> {
  _$UploadDocEventCopyWithImpl(this._value, this._then);

  final UploadDocEvent _value;
  // ignore: unused_field
  final $Res Function(UploadDocEvent) _then;
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
    extends _$UploadDocEventCopyWithImpl<$Res>
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
    return 'UploadDocEvent.docInstructionsInput(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocInstructionsInput &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

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

abstract class DocInstructionsInput implements UploadDocEvent {
  const factory DocInstructionsInput(String input) = _$DocInstructionsInput;

  String get input => throw _privateConstructorUsedError;
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
class _$FiledPickedCopyWithImpl<$Res> extends _$UploadDocEventCopyWithImpl<$Res>
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
    return 'UploadDocEvent.filedPicked(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FiledPicked &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

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

abstract class FiledPicked implements UploadDocEvent {
  const factory FiledPicked(FilePickerResult? file) = _$FiledPicked;

  FilePickerResult? get file => throw _privateConstructorUsedError;
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
    extends _$UploadDocEventCopyWithImpl<$Res>
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
    return 'UploadDocEvent.uploadPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UploadPressed);
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

abstract class UploadPressed implements UploadDocEvent {
  const factory UploadPressed() = _$UploadPressed;
}

/// @nodoc
class _$UploadDocStateTearOff {
  const _$UploadDocStateTearOff();

  _UploadDocState call(
      {required TWString instruction,
      required FilePickerResult? selectedFile,
      required bool showErrorMessages,
      required bool uploadInProgress,
      required TWUser loggedInUser,
      required String typeId,
      required TWDocType docType,
      required Option<Either<TWServerError, Unit>> resultOption}) {
    return _UploadDocState(
      instruction: instruction,
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
const $UploadDocState = _$UploadDocStateTearOff();

/// @nodoc
mixin _$UploadDocState {
  TWString get instruction => throw _privateConstructorUsedError;
  FilePickerResult? get selectedFile => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get uploadInProgress => throw _privateConstructorUsedError;
  TWUser get loggedInUser => throw _privateConstructorUsedError;
  String get typeId => throw _privateConstructorUsedError;
  TWDocType get docType => throw _privateConstructorUsedError;
  Option<Either<TWServerError, Unit>> get resultOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadDocStateCopyWith<UploadDocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadDocStateCopyWith<$Res> {
  factory $UploadDocStateCopyWith(
          UploadDocState value, $Res Function(UploadDocState) then) =
      _$UploadDocStateCopyWithImpl<$Res>;
  $Res call(
      {TWString instruction,
      FilePickerResult? selectedFile,
      bool showErrorMessages,
      bool uploadInProgress,
      TWUser loggedInUser,
      String typeId,
      TWDocType docType,
      Option<Either<TWServerError, Unit>> resultOption});
}

/// @nodoc
class _$UploadDocStateCopyWithImpl<$Res>
    implements $UploadDocStateCopyWith<$Res> {
  _$UploadDocStateCopyWithImpl(this._value, this._then);

  final UploadDocState _value;
  // ignore: unused_field
  final $Res Function(UploadDocState) _then;

  @override
  $Res call({
    Object? instruction = freezed,
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
abstract class _$UploadDocStateCopyWith<$Res>
    implements $UploadDocStateCopyWith<$Res> {
  factory _$UploadDocStateCopyWith(
          _UploadDocState value, $Res Function(_UploadDocState) then) =
      __$UploadDocStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TWString instruction,
      FilePickerResult? selectedFile,
      bool showErrorMessages,
      bool uploadInProgress,
      TWUser loggedInUser,
      String typeId,
      TWDocType docType,
      Option<Either<TWServerError, Unit>> resultOption});
}

/// @nodoc
class __$UploadDocStateCopyWithImpl<$Res>
    extends _$UploadDocStateCopyWithImpl<$Res>
    implements _$UploadDocStateCopyWith<$Res> {
  __$UploadDocStateCopyWithImpl(
      _UploadDocState _value, $Res Function(_UploadDocState) _then)
      : super(_value, (v) => _then(v as _UploadDocState));

  @override
  _UploadDocState get _value => super._value as _UploadDocState;

  @override
  $Res call({
    Object? instruction = freezed,
    Object? selectedFile = freezed,
    Object? showErrorMessages = freezed,
    Object? uploadInProgress = freezed,
    Object? loggedInUser = freezed,
    Object? typeId = freezed,
    Object? docType = freezed,
    Object? resultOption = freezed,
  }) {
    return _then(_UploadDocState(
      instruction: instruction == freezed
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as TWString,
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

class _$_UploadDocState extends _UploadDocState {
  const _$_UploadDocState(
      {required this.instruction,
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
    return 'UploadDocState(instruction: $instruction, selectedFile: $selectedFile, showErrorMessages: $showErrorMessages, uploadInProgress: $uploadInProgress, loggedInUser: $loggedInUser, typeId: $typeId, docType: $docType, resultOption: $resultOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadDocState &&
            (identical(other.instruction, instruction) ||
                const DeepCollectionEquality()
                    .equals(other.instruction, instruction)) &&
            (identical(other.selectedFile, selectedFile) ||
                const DeepCollectionEquality()
                    .equals(other.selectedFile, selectedFile)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.uploadInProgress, uploadInProgress) ||
                const DeepCollectionEquality()
                    .equals(other.uploadInProgress, uploadInProgress)) &&
            (identical(other.loggedInUser, loggedInUser) ||
                const DeepCollectionEquality()
                    .equals(other.loggedInUser, loggedInUser)) &&
            (identical(other.typeId, typeId) ||
                const DeepCollectionEquality().equals(other.typeId, typeId)) &&
            (identical(other.docType, docType) ||
                const DeepCollectionEquality()
                    .equals(other.docType, docType)) &&
            (identical(other.resultOption, resultOption) ||
                const DeepCollectionEquality()
                    .equals(other.resultOption, resultOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(instruction) ^
      const DeepCollectionEquality().hash(selectedFile) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(uploadInProgress) ^
      const DeepCollectionEquality().hash(loggedInUser) ^
      const DeepCollectionEquality().hash(typeId) ^
      const DeepCollectionEquality().hash(docType) ^
      const DeepCollectionEquality().hash(resultOption);

  @JsonKey(ignore: true)
  @override
  _$UploadDocStateCopyWith<_UploadDocState> get copyWith =>
      __$UploadDocStateCopyWithImpl<_UploadDocState>(this, _$identity);
}

abstract class _UploadDocState extends UploadDocState {
  const factory _UploadDocState(
          {required TWString instruction,
          required FilePickerResult? selectedFile,
          required bool showErrorMessages,
          required bool uploadInProgress,
          required TWUser loggedInUser,
          required String typeId,
          required TWDocType docType,
          required Option<Either<TWServerError, Unit>> resultOption}) =
      _$_UploadDocState;
  const _UploadDocState._() : super._();

  @override
  TWString get instruction => throw _privateConstructorUsedError;
  @override
  FilePickerResult? get selectedFile => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get uploadInProgress => throw _privateConstructorUsedError;
  @override
  TWUser get loggedInUser => throw _privateConstructorUsedError;
  @override
  String get typeId => throw _privateConstructorUsedError;
  @override
  TWDocType get docType => throw _privateConstructorUsedError;
  @override
  Option<Either<TWServerError, Unit>> get resultOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UploadDocStateCopyWith<_UploadDocState> get copyWith =>
      throw _privateConstructorUsedError;
}
