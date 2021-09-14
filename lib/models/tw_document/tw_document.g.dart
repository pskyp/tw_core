// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tw_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TWDocument _$TWDocumentFromJson(Map<String, dynamic> json) => TWDocument(
      docName: json['docName'] as String,
      documentID: json['documentID'] as String,
      docPath: json['docPath'] as String,
      downloadURL: json['downloadURL'] as String,
      instructions: json['instructions'] as String,
      isSeenByUser: json['isSeenByUser'] as bool,
    );

Map<String, dynamic> _$TWDocumentToJson(TWDocument instance) =>
    <String, dynamic>{
      'documentID': instance.documentID,
      'docName': instance.docName,
      'docPath': instance.docPath,
      'downloadURL': instance.downloadURL,
      'instructions': instance.instructions,
      'isSeenByUser': instance.isSeenByUser,
    };
