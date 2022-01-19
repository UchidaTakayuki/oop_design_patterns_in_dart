import 'contact.dart';
import 'mail_address.dart';
import 'mail_validation.dart';

class ExampleMailValidation extends MailValidation {
  void verifyMailAddress(MailAddress mailAddress) {
    if (mailAddress.domain == 'example.com') {
      print(
          'ドメインを判定したところ、${mailAddress.userName}@${mailAddress.domain}はexampleです。');
    } else {
      print(
          'ドメインを判定したところ、${mailAddress.userName}@${mailAddress.domain}はexampleではありません。');
    }
  }

  void verifyContact(Contact contact) {
    if (contact.mailAddress.endsWith("example.com")) {
      print('ドメインを判定したところ、${contact.mailAddress}はexampleです。');
    } else {
      print('ドメインを判定したところ、${contact.mailAddress}はexampleではありません。');
    }
  }
}
