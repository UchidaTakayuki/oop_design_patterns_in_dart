import 'contact.dart';
import 'contact_extract.dart';
import 'json_contact.dart';

class JsonContactAdapter extends ContactExtract {
  JsonContact _jsonContact;

  JsonContactAdapter(this._jsonContact);

  List<Contact> getContacts() {
    List<Contact> contacts = [];
    _jsonContact.jsonDecode['contacts'].forEach((contact) {
      contacts.add(Contact(contact['id'], contact['firstName'],
          contact['lastName'], contact['mailAddress']));
    });
    return contacts;
  }
}
