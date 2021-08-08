// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tw_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TWDocument _$TWDocumentFromJson(Map<String, dynamic> json) => TWDocument(
      docName: json['docName'] as String,
      docPath: json['docPath'] as String,
      downloadURL: json['downloadURL'] as String,
    );

Map<String, dynamic> _$TWDocumentToJson(TWDocument instance) =>
    <String, dynamic>{
      'docName': instance.docName,
      'docPath': instance.docPath,
      'downloadURL': instance.downloadURL,
    };
