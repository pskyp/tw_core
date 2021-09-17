import 'package:flutter/material.dart';
import 'package:tw_core/models/tw_document/tw_document.dart';

class TWDocumentCard extends StatelessWidget {
  final TWDocument doc;
  final String loggedInUserUID;
  final Function onDownloadClicked;
  final Function onDeleteClicked;
  const TWDocumentCard({
    required this.doc,
    required this.loggedInUserUID,
    required this.onDownloadClicked,
    required this.onDeleteClicked,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: InkWell(
        child: Icon(Icons.download_outlined),
        onTap: () {
          if (!doc.deleted) onDownloadClicked();
        },
        // sl<StorageService>().downloadFile(document: doc),
      ),
      title: Text(doc.docName),
      subtitle: Text(doc.instructions),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (loggedInUserUID != doc.uploadedByUID && doc.deleted)
            Text(
              'deleted',
              style: TextStyle(color: Colors.red),
            ),
          if (loggedInUserUID == doc.uploadedByUID)
            MaterialButton(
              child: Text("Seen By"),
              onPressed: () async {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Seen By'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ...doc.seenByUsers
                                .map((twUser) => Text(twUser.displayName))
                          ],
                        ),
                      );
                    });
              },
            ),
          if (loggedInUserUID == doc.uploadedByUID && !doc.deleted)
            MaterialButton(
              child: Text("Delete"),
              onPressed: () async {
                await onDeleteClicked();
                // await sl<StorageService>()
                //     .updateDocumentSeen(tenderBid: tenderBid, twDocument: doc);
              },
            ),
        ],
      ),
    );
  }
}
