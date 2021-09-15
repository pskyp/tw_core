import 'package:freezed_annotation/freezed_annotation.dart';

part 'tw_document.freezed.dart';
part 'tw_document.g.dart';

enum TWDocType { Dev, Tender, TenderBid }

@freezed
class TWDocument with _$TWDocument {
  const factory TWDocument._({
    required TWDocType type,
    required String typeId,
    required String documentID,
    required String docName,
    required String docPath,
    required String downloadURL,
    required String instructions,
    @Default(false) bool seen,
    @Default(false) bool deleted,
  }) = TWDocumentData;

  factory TWDocument.typeDev({
    required String devId,
    required String documentID,
    required String docName,
    required String docPath,
    required String downloadURL,
    required String instructions,
  }) =>
      TWDocumentData(
        type: TWDocType.Dev,
        typeId: devId,
        documentID: documentID,
        docName: docName,
        docPath: docPath,
        downloadURL: downloadURL,
        instructions: instructions,
      );

  factory TWDocument.typeTender({
    required String tenderId,
    required String documentID,
    required String docName,
    required String docPath,
    required String downloadURL,
    required String instructions,
  }) =>
      TWDocumentData(
        type: TWDocType.Tender,
        typeId: tenderId,
        documentID: documentID,
        docName: docName,
        docPath: docPath,
        downloadURL: downloadURL,
        instructions: instructions,
      );

  factory TWDocument.typeTenderBid({
    required String tenderBidId,
    required String documentID,
    required String docName,
    required String docPath,
    required String downloadURL,
    required String instructions,
  }) =>
      TWDocumentData(
        type: TWDocType.TenderBid,
        typeId: tenderBidId,
        documentID: documentID,
        docName: docName,
        docPath: docPath,
        downloadURL: downloadURL,
        instructions: instructions,
      );

  factory TWDocument.fromJson(Map<String, dynamic> json) =>
      _$TWDocumentFromJson(json);
}
