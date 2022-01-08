import 'dart:io';

class Document {
  File? _file;

  Document(String fileName) {
    _file = File(fileName);
  }

  void create() => _file!.createSync();

  void write(String text) {
    String fileContent = _file!.readAsStringSync();
    _file!.writeAsStringSync(fileContent + text);
  }
}
