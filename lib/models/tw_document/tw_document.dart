import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';

part 'tw_document.freezed.dart';
part 'tw_document.g.dart';

enum TWDocType { Dev, Tender, TenderBid, Portfolio }

@freezed
class TWDocument with _$TWDocument {
  // const TWDocument._();
  const factory TWDocument({
    required TWDocType type,
    required String typeId,
    required String documentID,
    required String docName,
    required String docPath,
    required String downloadURL,
    @Default('No instructions found') String instructions,
    required String uploadedByUID,
    @Default(<TWUser>[]) List<TWUser> seenByUsers,
    @Default(false) bool deleted,
  }) = TWDocumentData;

  factory TWDocument.typeDev({
    required String devId,
    required String documentID,
    required String docName,
    required String docPath,
    required String downloadURL,
    required String instructions,
    required String uploadedByUID,
  }) =>
      TWDocumentData(
        type: TWDocType.Dev,
        typeId: devId,
        uploadedByUID: uploadedByUID,
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
    required String uploadedByUID,
  }) =>
      TWDocumentData(
        uploadedByUID: uploadedByUID,
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
    required String uploadedByUID,
  }) =>
      TWDocumentData(
        uploadedByUID: uploadedByUID,
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
