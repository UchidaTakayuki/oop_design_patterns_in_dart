import 'contact.dart';
import 'contact_aggregate.dart';
import 'contact_iterator.dart';

class IteratorPatternOperator {
  static void operation() {
    Contact contact1 = Contact('01', 'foo01', 'bar01', 'baz01@example.com');
    Contact contact2 = Contact('02', 'foo02', 'bar02', 'baz02@example.com');
    Contact contact3 = Contact('03', 'foo03', 'bar03', 'baz03@example.com');

    ContactAggregate aggregate = ContactAggregate();
    aggregate.add(contact1);
    aggregate.add(contact2);
    aggregate.add(contact3);

    ContactIterator iterator = aggregate.iterator() as ContactIterator;

    // 名前を最初から順に表示
    while (iterator.has) {
      Contact contact = iterator.getContact();
      print('${contact.firstName} ${contact.lastName}');
      iterator.next();
    }

    // 名前を最後から順に表示
    iterator.last();
    while (iterator.has) {
      Contact contact = iterator.getContact();
      print('${contact.firstName} ${contact.lastName}');
      iterator.prev();
    }
  }
}
