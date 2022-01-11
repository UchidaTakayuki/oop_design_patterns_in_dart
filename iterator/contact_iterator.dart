import 'contact.dart';
import 'contact_aggregate.dart';
import 'iterator.dart';

class ContactIterator extends Iterator {
  ContactAggregate _aggregate;
  int _currentIndex = 0;

  ContactIterator(this._aggregate);

  bool get has => _currentIndex >= 0 && _currentIndex < _aggregate.length;

  void first() => _currentIndex = 0;

  void last() => _currentIndex = _aggregate.length - 1;

  void next() => _currentIndex++;

  void prev() => _currentIndex--;

  Contact getContact() => _aggregate.at(_currentIndex);
}
