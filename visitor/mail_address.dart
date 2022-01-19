import 'mail_validation.dart';
import 'visitable.dart';

class MailAddress implements Visitable {
  String _userName;
  String _domain;

  MailAddress(this._userName, this._domain);

  String get domain => _domain;
  String get userName => _userName;

  void accept(MailValidation validation) => validation.verifyMailAddress(this);
}
