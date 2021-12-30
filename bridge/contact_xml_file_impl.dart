import 'dart:io';
import 'contact.dart';
import 'file_impl.dart';

class ContactXmlFileImpl extends FileImpl {
  Contact _contact;

  ContactXmlFileImpl(File file, this._contact) : super(file);

  String xmlFormat() {
    return '''
      <?xml version="1.0" encoding="UTF-8" ?>
      <contact>
        <id>${_contact.id}</id>
        <firstName>${_contact.firstName}</firstName>
        <lastName>${_contact.lastName}</lastName>
        <mailAddress>${_contact.mailAddress}</mailAddress>
      </contact>
      ''';
  }

  void dataFromWrite() => file.writeAsStringSync(xmlFormat());
}
