import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:tw_core/models/tw_document/tw_document.dart';
import 'package:tw_core/services/m_storage_facade.dart';
import 'package:tw_core/theme/tw_theme.dart';

class MobileTWDocumentCard extends StatelessWidget {
  final TWDocument doc;
  final String loggedInUserUID;

  const MobileTWDocumentCard({
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
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (loggedInUserUID == doc.uploadedByUID && !doc.deleted) ...[
              Expanded(child: SeenBy(doc)),
              Spacer(),
              Expanded(child: DeleteDocBTN(doc: doc))
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
    return MaterialButton(shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(16)),
      color: Colors.red,
      visualDensity: VisualDensity.compact,
      child: Text(
        "Delete",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      onPressed: () async {
        await MStorageFacade().deleteDoc(doc);
      },
    );
  }
}

class DownloadDocBTN extends StatefulWidget {
  final TWDocument doc;
  const DownloadDocBTN(this.doc, {Key? key}) : super(key: key);

  @override
  State<DownloadDocBTN> createState() => _DownloadDocBTNState();
}

class _DownloadDocBTNState extends State<DownloadDocBTN> {
  bool _downloading = false;
  bool _isDownloaded = false;
  String progress = '0';
  @override
  Widget build(BuildContext context) {
    if (widget.doc.deleted) return Text('');
    return InkWell(
      child: _isDownloaded
          ? Icon(
              Icons.download_done,
              color: TWTheme.twOrange,
            )
          : !_downloading
              ? Icon(
                  Icons.download_outlined,
                  color: TWTheme.twOrange,
                )
              : CircularProgressIndicator(
                  value: double.parse(
                        progress,
                      ) /
                      100),
      onTap: () async {
        final appStorage = await getApplicationDocumentsDirectory();

        String fullPath = p.join(appStorage.path,widget.doc.docName);
        print('full path $fullPath');
        !_isDownloaded
            ? downloadFile(document: widget.doc, fullPath: fullPath)
            : OpenFile.open(fullPath);
      },
    );
  }

  Future downloadFile(
      {required TWDocument document, required String fullPath}) async {
    var dio = Dio();
    download2(dio, document.downloadURL, fullPath);
  }

  Future download2(Dio dio, String url, String savePath) async {
    dio.download(url, savePath, onReceiveProgress: (received, total) {
      if (total != -1) {
        setState(() {
          progress = ((received / total * 100).toStringAsFixed(0));
        });
        if (progress == '100') {
          setState(() {
            _isDownloaded = true;
          });
        } else if (double.parse(progress) < 100) {
          _downloading = true;
        }
      }
    }, deleteOnError: true).then((_) {
      setState(() {
        if (progress == '100') {
          _isDownloaded = true;
        }
        _downloading = false;
      });
    });
  }
  // try {
  //   Response response = await dio.get(
  //     url,
  //     onReceiveProgress: showDownloadProgress,
  //     //Received data with List<int>
  //     options: Options(
  //         responseType: ResponseType.bytes,
  //         followRedirects: false,
  //         validateStatus: (status) {
  //           return status! < 500;
  //         }),
  //   );
  //   // print(response.headers);
  //   File file = File(savePath);
  //   var raf = file.openSync(mode: FileMode.write);
  //   // response.data is List<int> type
  //   raf.writeFromSync(response.data);
  //   await raf.close();
  // } catch (e) {
  //   print(e);
  // }

  void showDownloadProgress(received, total) {
    if (total != -1) {
      setState(() {
        progress = ((received / total * 100).toStringAsFixed(0));
      });
      if (progress == '100') {
        setState(() {
          _isDownloaded = true;
        });
      } else if (double.parse(progress) < 100) {}
    }
  }
}

class SeenBy extends StatelessWidget {
  final TWDocument doc;

  const SeenBy(this.doc, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: TWTheme.twOrange,
      visualDensity: VisualDensity.compact,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(16)),
      child: Text(
        "Seen By",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
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
