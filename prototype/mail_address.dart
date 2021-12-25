import 'cloneable.dart';

class MailAddress implements Cloneable {
  String _firstName;
  String _lastName;
  String _address;

  MailAddress(this._firstName, this._lastName, this._address);

  String get address => _address;

  MailAddress clone() => MailAddress(_firstName, _lastName, _address);
}
