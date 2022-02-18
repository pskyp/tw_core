import 'dart:io';

import 'package:file_saver/file_saver.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/widgets.dart';

class PdfApi {
  static Future<File> saveDocument({String? name, Document? pdf}) async {
    final bytes = await pdf!.save();
    String location = await FileSaver.instance.saveFile(name!, bytes, 'pdf');
    print(location);

    // final dir = await getApplicationDocumentsDirectory();
    final file = File('$location');

    await file.writeAsBytes(bytes);

    return file;
  }

  static Future openFile(File file) async {
    final url = file.path;

    await OpenFile.open(url);
  }
}
