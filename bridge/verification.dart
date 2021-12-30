import 'file_impl.dart';

abstract class Verification {
  FileImpl _fileImpl;

  Verification(this._fileImpl);

  FileImpl get fileImpl => _fileImpl;
  void fileVerificationWrite();
}
