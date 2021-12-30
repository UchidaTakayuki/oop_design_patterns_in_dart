import 'verification.dart';

class FileVerification extends Verification {
  FileVerification(fileImpl) : super(fileImpl);

  void fileVerificationWrite() {
    if (!super.fileImpl.file.existsSync()) {
      super.fileImpl.file.createSync(recursive: true);
    }

    super.fileImpl.dataFromWrite();
  }
}
