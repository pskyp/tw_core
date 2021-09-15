import 'package:flutter/material.dart';
import 'package:tw_core/models/tw_document/tw_document.dart';

class TWDocumentCard extends StatelessWidget {
  final TWDocument doc;
  final bool showDelete;
  final Function onDownloadClicked;
  final Function onDeleteClicked;
  const TWDocumentCard({
    required this.doc,
    required this.showDelete,
    required this.onDownloadClicked,
    required this.onDeleteClicked,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: InkWell(
        child: Icon(Icons.download_outlined),
        onTap: () => onDownloadClicked(),
        // sl<StorageService>().downloadFile(document: doc),
      ),
      title: Text(doc.docName),
      subtitle: Text(doc.instructions),
      trailing: !showDelete
          ? Container()
          : MaterialButton(
              child: Text("Delete"),
              onPressed: () async {
                await onDeleteClicked();
                // await sl<StorageService>()
                //     .updateDocumentSeen(tenderBid: tenderBid, twDocument: doc);
              },
            ),
    );
  }
}
