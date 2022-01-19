import 'contact.dart';
import 'mail_address.dart';
import 'mail_validation.dart';

class GmailMailValidation extends MailValidation {
  void verifyMailAddress(MailAddress mailAddress) {
    if (mailAddress.domain == 'gmail.com') {
      print(
          'ドメインを判定したところ、${mailAddress.userName}@${mailAddress.domain}はgmailです。');
    } else {
      print(
          'ドメインを判定したところ、${mailAddress.userName}@${mailAddress.domain}はgmailではありません。');
    }
  }

  void verifyContact(Contact contact) {
    if (contact.mailAddress.endsWith("gmail.com")) {
      print('ドメインを判定したところ、${contact.mailAddress}はgmailです。');
    } else {
      print('ドメインを判定したところ、${contact.mailAddress}はgmailではありません。');
    }
  }
}
