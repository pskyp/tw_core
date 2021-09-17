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
  return TWDocumentData.fromJson(json);
}

/// @nodoc
class _$TWDocumentTearOff {
  const _$TWDocumentTearOff();

  TWDocumentData call(
      {required TWDocType type,
      required String typeId,
      required String documentID,
      required String docName,
      required String docPath,
      required String downloadURL,
      required String instructions,
      required String uploadedByUID,
      List<TWUser> seenByUsers = const <TWUser>[],
      bool deleted = false}) {
    return TWDocumentData(
      type: type,
      typeId: typeId,
      documentID: documentID,
      docName: docName,
      docPath: docPath,
      downloadURL: downloadURL,
      instructions: instructions,
      uploadedByUID: uploadedByUID,
      seenByUsers: seenByUsers,
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
  TWDocType get type => throw _privateConstructorUsedError;
  String get typeId => throw _privateConstructorUsedError;
  String get documentID => throw _privateConstructorUsedError;
  String get docName => throw _privateConstructorUsedError;
  String get docPath => throw _privateConstructorUsedError;
  String get downloadURL => throw _privateConstructorUsedError;
  String get instructions => throw _privateConstructorUsedError;
  String get uploadedByUID => throw _privateConstructorUsedError;
  List<TWUser> get seenByUsers => throw _privateConstructorUsedError;
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
      {TWDocType type,
      String typeId,
      String documentID,
      String docName,
      String docPath,
      String downloadURL,
      String instructions,
      String uploadedByUID,
      List<TWUser> seenByUsers,
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
    Object? type = freezed,
    Object? typeId = freezed,
    Object? documentID = freezed,
    Object? docName = freezed,
    Object? docPath = freezed,
    Object? downloadURL = freezed,
    Object? instructions = freezed,
    Object? uploadedByUID = freezed,
    Object? seenByUsers = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TWDocType,
      typeId: typeId == freezed
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String,
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
      uploadedByUID: uploadedByUID == freezed
          ? _value.uploadedByUID
          : uploadedByUID // ignore: cast_nullable_to_non_nullable
              as String,
      seenByUsers: seenByUsers == freezed
          ? _value.seenByUsers
          : seenByUsers // ignore: cast_nullable_to_non_nullable
              as List<TWUser>,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $TWDocumentDataCopyWith<$Res>
    implements $TWDocumentCopyWith<$Res> {
  factory $TWDocumentDataCopyWith(
          TWDocumentData value, $Res Function(TWDocumentData) then) =
      _$TWDocumentDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {TWDocType type,
      String typeId,
      String documentID,
      String docName,
      String docPath,
      String downloadURL,
      String instructions,
      String uploadedByUID,
      List<TWUser> seenByUsers,
      bool deleted});
}

/// @nodoc
class _$TWDocumentDataCopyWithImpl<$Res> extends _$TWDocumentCopyWithImpl<$Res>
    implements $TWDocumentDataCopyWith<$Res> {
  _$TWDocumentDataCopyWithImpl(
      TWDocumentData _value, $Res Function(TWDocumentData) _then)
      : super(_value, (v) => _then(v as TWDocumentData));

  @override
  TWDocumentData get _value => super._value as TWDocumentData;

  @override
  $Res call({
    Object? type = freezed,
    Object? typeId = freezed,
    Object? documentID = freezed,
    Object? docName = freezed,
    Object? docPath = freezed,
    Object? downloadURL = freezed,
    Object? instructions = freezed,
    Object? uploadedByUID = freezed,
    Object? seenByUsers = freezed,
    Object? deleted = freezed,
  }) {
    return _then(TWDocumentData(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TWDocType,
      typeId: typeId == freezed
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String,
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
      uploadedByUID: uploadedByUID == freezed
          ? _value.uploadedByUID
          : uploadedByUID // ignore: cast_nullable_to_non_nullable
              as String,
      seenByUsers: seenByUsers == freezed
          ? _value.seenByUsers
          : seenByUsers // ignore: cast_nullable_to_non_nullable
              as List<TWUser>,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TWDocumentData implements TWDocumentData {
  const _$TWDocumentData(
      {required this.type,
      required this.typeId,
      required this.documentID,
      required this.docName,
      required this.docPath,
      required this.downloadURL,
      required this.instructions,
      required this.uploadedByUID,
      this.seenByUsers = const <TWUser>[],
      this.deleted = false});

  factory _$TWDocumentData.fromJson(Map<String, dynamic> json) =>
      _$$TWDocumentDataFromJson(json);

  @override
  final TWDocType type;
  @override
  final String typeId;
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
  @override
  final String uploadedByUID;
  @JsonKey(defaultValue: const <TWUser>[])
  @override
  final List<TWUser> seenByUsers;
  @JsonKey(defaultValue: false)
  @override
  final bool deleted;

  @override
  String toString() {
    return 'TWDocument(type: $type, typeId: $typeId, documentID: $documentID, docName: $docName, docPath: $docPath, downloadURL: $downloadURL, instructions: $instructions, uploadedByUID: $uploadedByUID, seenByUsers: $seenByUsers, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TWDocumentData &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.typeId, typeId) ||
                const DeepCollectionEquality().equals(other.typeId, typeId)) &&
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
            (identical(other.uploadedByUID, uploadedByUID) ||
                const DeepCollectionEquality()
                    .equals(other.uploadedByUID, uploadedByUID)) &&
            (identical(other.seenByUsers, seenByUsers) ||
                const DeepCollectionEquality()
                    .equals(other.seenByUsers, seenByUsers)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(typeId) ^
      const DeepCollectionEquality().hash(documentID) ^
      const DeepCollectionEquality().hash(docName) ^
      const DeepCollectionEquality().hash(docPath) ^
      const DeepCollectionEquality().hash(downloadURL) ^
      const DeepCollectionEquality().hash(instructions) ^
      const DeepCollectionEquality().hash(uploadedByUID) ^
      const DeepCollectionEquality().hash(seenByUsers) ^
      const DeepCollectionEquality().hash(deleted);

  @JsonKey(ignore: true)
  @override
  $TWDocumentDataCopyWith<TWDocumentData> get copyWith =>
      _$TWDocumentDataCopyWithImpl<TWDocumentData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TWDocumentDataToJson(this);
  }
}

abstract class TWDocumentData implements TWDocument {
  const factory TWDocumentData(
      {required TWDocType type,
      required String typeId,
      required String documentID,
      required String docName,
      required String docPath,
      required String downloadURL,
      required String instructions,
      required String uploadedByUID,
      List<TWUser> seenByUsers,
      bool deleted}) = _$TWDocumentData;

  factory TWDocumentData.fromJson(Map<String, dynamic> json) =
      _$TWDocumentData.fromJson;

  @override
  TWDocType get type => throw _privateConstructorUsedError;
  @override
  String get typeId => throw _privateConstructorUsedError;
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
  String get uploadedByUID => throw _privateConstructorUsedError;
  @override
  List<TWUser> get seenByUsers => throw _privateConstructorUsedError;
  @override
  bool get deleted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TWDocumentDataCopyWith<TWDocumentData> get copyWith =>
      throw _privateConstructorUsedError;
}
