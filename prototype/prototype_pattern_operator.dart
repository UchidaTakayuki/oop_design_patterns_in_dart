import 'mail.dart';
import 'mail_address.dart';
import 'mail_template_manager.dart';

class PrototypePatternOperator {
  static void operation() {
    MailAddress address1 = MailAddress('foo1', 'bar1', 'baz1@example.com');
    MailAddress address2 = MailAddress('foo2', 'bar2', 'baz2@example.com');
    MailAddress address3 = MailAddress('foo3', 'bar3', 'baz3@example.com');

    Mail mail1 = Mail(
        'TestMail1', 'Good morning!', [address1, address2, address3], [], []);
    Mail mail2 =
        Mail('TestMail2', 'Hello!', [address1], [address2], [address3]);

    // メールテンプレートの登録
    MailTemplateManager manager = new MailTemplateManager();
    manager.regist('mail1', mail1);
    manager.regist('mail2', mail2);

    // メールテンプレート1の表示
    Mail mailTemplate1 = manager.create('mail1');
    print(mailTemplate1);

    // メールテンプレート2の表示
    Mail mailTemplate2 = manager.create('mail2');
    print(mailTemplate2);
  }
}
