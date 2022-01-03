import 'contact.dart';

class MailBody {
  String _body;
  Contact _contact;

  MailBody(this._body, this._contact);

  String _getSignature() {
    String signature = '───────────────────\n';
    signature += '株式会社〇〇\n';
    signature += '〇〇 〇〇\n';
    signature += '〒000-0000 〇〇県〇〇市〇〇 〇丁○番○号\n';
    signature += 'TEL: 090-0000-0000  FAX: 00-0000-0000\n';
    signature += 'Email: hoge@example.com\n';
    signature += 'http://example.com/\n';
    signature = '───────────────────\n';
    return signature;
  }

  String getImportantBody() {
    String importantBody = _contact.lastName + '様\n';
    importantBody += '\n';
    importantBody += 'いつもお世話になっております。\n';
    importantBody += '株式会社〇〇の〇〇です。\n';
    importantBody += '大変お手数ですが下記の内容のご確認のほどよろしくお願い致します。\n';
    importantBody += '\n';
    importantBody += _body;
    importantBody += '\n';
    importantBody += _getSignature();
    return importantBody;
  }
}
