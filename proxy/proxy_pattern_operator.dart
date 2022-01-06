import 'inquiry.dart';
import 'inquiry_proxy.dart';

class ProxyPatternOperator {
  static void operation() {
    Inquiry inquiry = InquiryProxy('password');

    // プロキシ経由でアカウントIDを問い合わせる
    print('アカウントIDの照会にはパスワード入力が必要です。\nパスワードを入力してください。');
    String accountNo = inquiry.accountNo;
    if (accountNo == '') {
      print('入力されたパスワードが正しくありません。');
    } else {
      print('アカウントIDは${accountNo}です。');
    }
  }
}
