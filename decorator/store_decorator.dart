import 'key_value_store.dart';

abstract class StoreDecorator extends KeyValueStore {
  KeyValueStore _keyValueStore;

  StoreDecorator(this._keyValueStore);

  KeyValueStore get keyValueStore => _keyValueStore;
}
