import 'mail_address.dart';
import 'contact.dart';

abstract class MailValidation {
  // 本来であればverifyとして引数の型で分けるべきだが、Dartは言語仕様上にオーバーライド不可なのでメソッド名は分ける
  void verifyMailAddress(MailAddress mailAddress);
  void verifyContact(Contact contact);
}
