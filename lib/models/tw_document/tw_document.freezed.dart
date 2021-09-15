// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tw_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TWDocument _$TWDocumentFromJson(Map<String, dynamic> json) {
  return _TWDocument.fromJson(json);
}

/// @nodoc
class _$TWDocumentTearOff {
  const _$TWDocumentTearOff();

  _TWDocument call(
      {required String documentID,
      required String docName,
      required String docPath,
      required String downloadURL,
      required String instructions,
      bool seen = false,
      bool deleted = false}) {
    return _TWDocument(
      documentID: documentID,
      docName: docName,
      docPath: docPath,
      downloadURL: downloadURL,
      instructions: instructions,
      seen: seen,
      deleted: deleted,
    );
  }

  TWDocument fromJson(Map<String, Object> json) {
    return TWDocument.fromJson(json);
  }
}

/// @nodoc
const $TWDocument = _$TWDocumentTearOff();

/// @nodoc
mixin _$TWDocument {
  String get documentID => throw _privateConstructorUsedError;
  String get docName => throw _privateConstructorUsedError;
  String get docPath => throw _privateConstructorUsedError;
  String get downloadURL => throw _privateConstructorUsedError;
  String get instructions => throw _privateConstructorUsedError;
  bool get seen => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TWDocumentCopyWith<TWDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TWDocumentCopyWith<$Res> {
  factory $TWDocumentCopyWith(
          TWDocument value, $Res Function(TWDocument) then) =
      _$TWDocumentCopyWithImpl<$Res>;
  $Res call(
      {String documentID,
      String docName,
      String docPath,
      String downloadURL,
      String instructions,
      bool seen,
      bool deleted});
}

/// @nodoc
class _$TWDocumentCopyWithImpl<$Res> implements $TWDocumentCopyWith<$Res> {
  _$TWDocumentCopyWithImpl(this._value, this._then);

  final TWDocument _value;
  // ignore: unused_field
  final $Res Function(TWDocument) _then;

  @override
  $Res call({
    Object? documentID = freezed,
    Object? docName = freezed,
    Object? docPath = freezed,
    Object? downloadURL = freezed,
    Object? instructions = freezed,
    Object? seen = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      documentID: documentID == freezed
          ? _value.documentID
          : documentID // ignore: cast_nullable_to_non_nullable
              as String,
      docName: docName == freezed
          ? _value.docName
          : docName // ignore: cast_nullable_to_non_nullable
              as String,
      docPath: docPath == freezed
          ? _value.docPath
          : docPath // ignore: cast_nullable_to_non_nullable
              as String,
      downloadURL: downloadURL == freezed
          ? _value.downloadURL
          : downloadURL // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      seen: seen == freezed
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TWDocumentCopyWith<$Res> implements $TWDocumentCopyWith<$Res> {
  factory _$TWDocumentCopyWith(
          _TWDocument value, $Res Function(_TWDocument) then) =
      __$TWDocumentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String documentID,
      String docName,
      String docPath,
      String downloadURL,
      String instructions,
      bool seen,
      bool deleted});
}

/// @nodoc
class __$TWDocumentCopyWithImpl<$Res> extends _$TWDocumentCopyWithImpl<$Res>
    implements _$TWDocumentCopyWith<$Res> {
  __$TWDocumentCopyWithImpl(
      _TWDocument _value, $Res Function(_TWDocument) _then)
      : super(_value, (v) => _then(v as _TWDocument));

  @override
  _TWDocument get _value => super._value as _TWDocument;

  @override
  $Res call({
    Object? documentID = freezed,
    Object? docName = freezed,
    Object? docPath = freezed,
    Object? downloadURL = freezed,
    Object? instructions = freezed,
    Object? seen = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_TWDocument(
      documentID: documentID == freezed
          ? _value.documentID
          : documentID // ignore: cast_nullable_to_non_nullable
              as String,
      docName: docName == freezed
          ? _value.docName
          : docName // ignore: cast_nullable_to_non_nullable
              as String,
      docPath: docPath == freezed
          ? _value.docPath
          : docPath // ignore: cast_nullable_to_non_nullable
              as String,
      downloadURL: downloadURL == freezed
          ? _value.downloadURL
          : downloadURL // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      seen: seen == freezed
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TWDocument implements _TWDocument {
  const _$_TWDocument(
      {required this.documentID,
      required this.docName,
      required this.docPath,
      required this.downloadURL,
      required this.instructions,
      this.seen = false,
      this.deleted = false});

  factory _$_TWDocument.fromJson(Map<String, dynamic> json) =>
      _$$_TWDocumentFromJson(json);

  @override
  final String documentID;
  @override
  final String docName;
  @override
  final String docPath;
  @override
  final String downloadURL;
  @override
  final String instructions;
  @JsonKey(defaultValue: false)
  @override
  final bool seen;
  @JsonKey(defaultValue: false)
  @override
  final bool deleted;

  @override
  String toString() {
    return 'TWDocument(documentID: $documentID, docName: $docName, docPath: $docPath, downloadURL: $downloadURL, instructions: $instructions, seen: $seen, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TWDocument &&
            (identical(other.documentID, documentID) ||
                const DeepCollectionEquality()
                    .equals(other.documentID, documentID)) &&
            (identical(other.docName, docName) ||
                const DeepCollectionEquality()
                    .equals(other.docName, docName)) &&
            (identical(other.docPath, docPath) ||
                const DeepCollectionEquality()
                    .equals(other.docPath, docPath)) &&
            (identical(other.downloadURL, downloadURL) ||
                const DeepCollectionEquality()
                    .equals(other.downloadURL, downloadURL)) &&
            (identical(other.instructions, instructions) ||
                const DeepCollectionEquality()
                    .equals(other.instructions, instructions)) &&
            (identical(other.seen, seen) ||
                const DeepCollectionEquality().equals(other.seen, seen)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(documentID) ^
      const DeepCollectionEquality().hash(docName) ^
      const DeepCollectionEquality().hash(docPath) ^
      const DeepCollectionEquality().hash(downloadURL) ^
      const DeepCollectionEquality().hash(instructions) ^
      const DeepCollectionEquality().hash(seen) ^
      const DeepCollectionEquality().hash(deleted);

  @JsonKey(ignore: true)
  @override
  _$TWDocumentCopyWith<_TWDocument> get copyWith =>
      __$TWDocumentCopyWithImpl<_TWDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TWDocumentToJson(this);
  }
}

abstract class _TWDocument implements TWDocument {
  const factory _TWDocument(
      {required String documentID,
      required String docName,
      required String docPath,
      required String downloadURL,
      required String instructions,
      bool seen,
      bool deleted}) = _$_TWDocument;

  factory _TWDocument.fromJson(Map<String, dynamic> json) =
      _$_TWDocument.fromJson;

  @override
  String get documentID => throw _privateConstructorUsedError;
  @override
  String get docName => throw _privateConstructorUsedError;
  @override
  String get docPath => throw _privateConstructorUsedError;
  @override
  String get downloadURL => throw _privateConstructorUsedError;
  @override
  String get instructions => throw _privateConstructorUsedError;
  @override
  bool get seen => throw _privateConstructorUsedError;
  @override
  bool get deleted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TWDocumentCopyWith<_TWDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
