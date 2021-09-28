import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tw_core/models/tw_document/tw_document.dart';
import 'package:tw_core/services/storage_facade.dart';

class TWDocumentCard extends StatelessWidget {
  final TWDocument doc;
  final String loggedInUserUID;

  const TWDocumentCard({
    required this.doc,
    required this.loggedInUserUID,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: DownloadDocBTN(doc),
        title: Text(doc.docName),
        subtitle: doc.deleted ? Text(deleteText) : Text(doc.instructions),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (loggedInUserUID == doc.uploadedByUID && !doc.deleted) ...[
              SeenBy(doc),
              DeleteDocBTN(doc: doc)
            ]
          ],
        ),
      ),
    );
  }

  String get deleteText {
    if (!doc.deleted) return '';
    if (doc.uploadedByUID == loggedInUserUID)
      return 'This document was deleted';
    return 'This doc was deleted by ${doc.type == TWDocType.TenderBid ? 'Contractor' : 'Developer'}';
  }
}

class DeleteDocBTN extends StatelessWidget {
  final TWDocument doc;

  const DeleteDocBTN({
    Key? key,
    required this.doc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text("Delete"),
      onPressed: () async {
        await StorageFacade().deleteDoc(doc);
      },
    );
  }
}

class DownloadDocBTN extends StatelessWidget {
  final TWDocument doc;
  const DownloadDocBTN(this.doc, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (doc.deleted) return Text('');
    return InkWell(
      child: Icon(Icons.download_outlined),
      onTap: () {
        if (!doc.deleted) StorageFacade().downloadFile(document: doc);
      },
    );
  }
}

class SeenBy extends StatelessWidget {
  final TWDocument doc;

  const SeenBy(this.doc, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text("Seen By"),
      onPressed: () async {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Seen By'),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...doc.seenByUsers.map((twUser) => ListTile(
                        leading: SvgPicture.string(
                          twUser.profileImage,
                          height: 30,
                          width: 30,
                        ),
                        title: Text(twUser.displayName)))
                  ],
                ),
              );
            });
      },
    );
  }
}
