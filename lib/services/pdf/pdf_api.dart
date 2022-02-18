import 'dart:io';

import 'package:file_saver/file_saver.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/widgets.dart';

class PdfApi {
  static Future<File> saveDocument({String? name, Document? pdf}) async {
    final bytes = await pdf!.save();
    name = name!.substring(0, name.length - 4);
    name = name.trim();
    String location = await FileSaver.instance.saveFile(name, bytes, 'pdf');
    print(location);
    if (Platform.isIOS) {
      // final dir = await getApplicationDocumentsDirectory();
      final file = File('$location');

      await file.writeAsBytes(bytes);

      return file;
    } else {
      final file = File('$location/$name.pdf');

      await file.writeAsBytes(bytes);

      return file;
    }
  }

  static Future openFile(File file) async {
    final url = file.path;

    await OpenFile.open(url);
  }
}
