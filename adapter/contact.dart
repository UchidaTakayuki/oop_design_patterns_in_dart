class Contact {
  String _id;
  String _firstName;
  String _lastName;
  String _mailAddress;

  Contact(this._id, this._firstName, this._lastName, this._mailAddress);

  String get id => _id;
  String get firstName => _firstName;
  String get lastName => _lastName;
  String get mailAddress => _mailAddress;
}
