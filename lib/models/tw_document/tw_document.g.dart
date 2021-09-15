// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tw_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TWDocument _$$_TWDocumentFromJson(Map<String, dynamic> json) =>
    _$_TWDocument(
      documentID: json['documentID'] as String,
      docName: json['docName'] as String,
      docPath: json['docPath'] as String,
      downloadURL: json['downloadURL'] as String,
      instructions: json['instructions'] as String,
      seen: json['seen'] as bool? ?? false,
      deleted: json['deleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TWDocumentToJson(_$_TWDocument instance) =>
    <String, dynamic>{
      'documentID': instance.documentID,
      'docName': instance.docName,
      'docPath': instance.docPath,
      'downloadURL': instance.downloadURL,
      'instructions': instance.instructions,
      'seen': instance.seen,
      'deleted': instance.deleted,
    };
