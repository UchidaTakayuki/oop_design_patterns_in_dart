import 'aggregate.dart';
import 'contact.dart';
import 'contact_iterator.dart';
import 'iterator.dart';

class ContactAggregate extends Aggregate {
  List<Contact> _contacts = [];

  int get length => _contacts.length;

  void add(Contact contact) => _contacts.add(contact);

  Contact at(int index) => _contacts[index];

  Iterator iterator() => ContactIterator(this);
}
