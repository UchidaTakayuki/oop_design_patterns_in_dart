import 'mail_template.dart';

class FacadePatternOperator {
  static void operation() {
    // サブシステムの利用
    MailTemplate mailTemplate = MailTemplate();
    mailTemplate.sendImportantMailTemplate();
    print('サブシステムを利用してメールを送信しました。');
  }
}
