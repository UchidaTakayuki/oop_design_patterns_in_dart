import 'contact.dart';
import 'mail.dart';
import 'mail_title.dart';
import 'mail_body.dart';

class MailTemplate {
  void sendImportantMailTemplate() {
    Contact contact = Contact('0000', 'foo', 'bar', 'bazz@example.com');
    Mail(contact, MailTitle('購入処理が完了しました。'), MailBody('購入の内容は〇〇です。', contact))
        .send();
  }
}
