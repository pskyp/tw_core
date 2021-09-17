// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tw_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TWDocumentData _$$TWDocumentDataFromJson(Map<String, dynamic> json) =>
    _$TWDocumentData(
      type: _$enumDecode(_$TWDocTypeEnumMap, json['type']),
      typeId: json['typeId'] as String,
      documentID: json['documentID'] as String,
      docName: json['docName'] as String,
      docPath: json['docPath'] as String,
      downloadURL: json['downloadURL'] as String,
      instructions: json['instructions'] as String,
      uploadedByUID: json['uploadedByUID'] as String,
      seenByUsers: (json['seenByUsers'] as List<dynamic>?)
              ?.map((e) => TWUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deleted: json['deleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$TWDocumentDataToJson(_$TWDocumentData instance) =>
    <String, dynamic>{
      'type': _$TWDocTypeEnumMap[instance.type],
      'typeId': instance.typeId,
      'documentID': instance.documentID,
      'docName': instance.docName,
      'docPath': instance.docPath,
      'downloadURL': instance.downloadURL,
      'instructions': instance.instructions,
      'uploadedByUID': instance.uploadedByUID,
      'seenByUsers': instance.seenByUsers.map((e) => e.toJson()).toList(),
      'deleted': instance.deleted,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$TWDocTypeEnumMap = {
  TWDocType.Dev: 'Dev',
  TWDocType.Tender: 'Tender',
  TWDocType.TenderBid: 'TenderBid',
};
