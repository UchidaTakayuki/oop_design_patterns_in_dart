import 'contact.dart';
import 'contact_address_collection.dart';
import 'mail_address.dart';
import 'example_mail_validation.dart';
import 'gmail_mail_validation.dart';

class VisitorPatternOperator {
  static void operation() {
    // 連絡先情報のコレクション作成
    ContactAddressCollection collection = ContactAddressCollection([
      Contact('0001', 'foo1', 'bar1', 'baz1@example.com'),
      Contact('0002', 'foo2', 'bar2', 'baz2@gmail.com'),
      Contact('0003', 'foo3', 'bar3', 'baz3@yahoo.co.jp'),
      MailAddress('baz1', 'example.com'),
      MailAddress('baz2', 'gmail.com'),
      MailAddress('baz3', 'yahoo.co.jp')
    ]);

    // メールアドレスの形式がgamilか判定
    collection.verifyAll(GmailMailValidation());

    // メールアドレスの形式がexampleか判定
    collection.verifyAll(ExampleMailValidation());
  }
}
