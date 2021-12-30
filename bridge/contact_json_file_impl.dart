import 'dart:io';
import 'contact.dart';
import 'file_impl.dart';

class ContactJsonFileImpl extends FileImpl {
  Contact _contact;

  ContactJsonFileImpl(File file, this._contact) : super(file);

  String jsonFormat() {
    return '''
      {
          "contact": {
              "id": "${_contact.id}",
              "firstName": "${_contact.firstName}",
              "lastName": "${_contact.lastName}",
              "mailAddress": "${_contact.mailAddress}"
          }
      }
      ''';
  }

  void dataFromWrite() => file.writeAsStringSync(jsonFormat());
}
