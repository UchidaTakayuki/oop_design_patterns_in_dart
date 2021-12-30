import 'dart:io';

abstract class FileImpl {
  File _file;

  FileImpl(this._file);

  File get file => _file;

  void dataFromWrite();
}
