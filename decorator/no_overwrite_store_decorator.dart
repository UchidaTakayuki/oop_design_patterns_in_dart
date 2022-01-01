import 'key_value_store.dart';
import 'store_decorator.dart';

class NoOverwriteStoreDecorator extends StoreDecorator {
  NoOverwriteStoreDecorator(KeyValueStore keyValueStore) : super(keyValueStore);

  void set(String key, String value) {
    String storeValue = get(key);
    if (storeValue == KeyValueStore.undefined) {
      keyValueStore.set(key, value);
    }
  }

  String get(String key) => keyValueStore.get(key);
}
