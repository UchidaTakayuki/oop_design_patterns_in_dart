import 'mail_validation.dart';
import 'visitable.dart';

class Contact implements Visitable {
  String _id;
  String _firstName;
  String _lastName;
  String _mailAddress;

  Contact(this._id, this._firstName, this._lastName, this._mailAddress);

  String get mailAddress => _mailAddress;

  void accept(MailValidation validation) => validation.verifyContact(this);
}
