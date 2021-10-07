import 'dart:html' as html;
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:tw_core/firebase_collections/tw_firebase_collections.dart';
import 'package:tw_core/models/core/tw_min_length_string/tw_min_length_string.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/models/tw_document/tw_document.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';

class StorageFacade {
  var docsRef = FirebaseStorage.instance.ref().child('docs/');

  Future<Either<TWServerError, Unit>> uploadDocument({
    required TWUser loggedInUser,
    required String typeId,
    required FilePickerResult file,
    required TWString instructions,
    required TWDocType docType,
  }) async {
    try {
      Uint8List fileData = file.files.single.bytes!;
      String docName = file.names.first!;
      String docPath = "${loggedInUser.uid}/$typeId/$docName";

      var path = await docsRef.child(docPath).putData(fileData);
      String documentDownloadURL = await path.ref.getDownloadURL();

      TWDocument doc = TWDocument(
        type: docType,
        typeId: typeId,
        documentID: typeId + DateTime.now().toString(),
        docName: docName,
        docPath: docPath,
        downloadURL: documentDownloadURL,
        instructions: instructions.getOrCrash(),
        uploadedByUID: loggedInUser.uid,
      );
      await TWFC.docsCollection.doc(doc.documentID).set(doc.toJson());
      return right(unit);
    } on Exception {
      return left(TWServerError());
    }
  }

  Future downloadFile({required TWDocument document}) async {
    String downloadURL = document.downloadURL;

    html.AnchorElement anchorElement =
        new html.AnchorElement(href: downloadURL);
    anchorElement.download = downloadURL;
    anchorElement.click();
  }

  Future<Either<TWServerError, Unit>> deleteDoc(TWDocument doc) async {
    try {
      await TWFC.docsCollection
          .doc(doc.documentID)
          .set(doc.copyWith(deleted: true).toJson());
      return right(unit);
    } on Exception {
      return left(TWServerError());
    }
  }

  Future<Either<TWServerError, Unit>> reallyDeleteDoc(TWDocument doc) async {
    try {
      await TWFC.docsCollection.doc(doc.documentID).delete();
      return right(unit);
    } on Exception {
      return left(TWServerError());
    }
  }

  Stream<List<TWDocument>> docs({
    required final List<String> typeId,
  }) {
    return TWFC.docsCollection.where('typeId', whereIn: typeId).snapshots().map(
          (list) =>
              list.docs.map((doc) => TWDocument.fromJson(doc.data())).toList(),
        );
  }

  Future<Either<TWServerError, Unit>> updateDocumentSeen({
    required TWDocument doc,
    required TWUser loggedInUser,
  }) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    List<TWUser> seenByUsers = doc.seenByUsers;
    if (seenByUsers.contains(loggedInUser)) return right(unit);

    seenByUsers.add(loggedInUser);
    batch.set(
      TWFC.docsCollection.doc(doc.documentID),
      doc.copyWith(seenByUsers: seenByUsers).toJson(),
    );
    return (await commitBatch(batch));
  }

  Future<Either<TWServerError, Unit>> commitBatch(WriteBatch batch) async {
    try {
      await batch.commit();
      return right(unit);
    } on Exception {
      return left(TWServerError());
    }
  }
}
