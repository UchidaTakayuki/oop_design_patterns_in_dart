import 'contact.dart';
import 'mail_body.dart';
import 'mail_title.dart';

class Mail {
  Contact _contact;
  MailTitle _title;
  MailBody _body;

  Mail(this._contact, this._title, this._body);

  send() {
    String address = _contact.mailAddress;
    String title = _title.getImportantTitle();
    String body = _body.getImportantBody();
    // 実際の送信処理は省略
  }
}
