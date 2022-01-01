import 'dart:convert';
import 'key_value_store.dart';
import 'store_decorator.dart';

class Base64StoreDecorator extends StoreDecorator {
  Base64StoreDecorator(KeyValueStore keyValueStore) : super(keyValueStore);

  void set(String key, String value) {
    String base64Key = base64.encode(utf8.encode(key));
    String base64Value = base64.encode(utf8.encode(value));
    keyValueStore.set(base64Key, base64Value);
  }

  String get(String key) {
    String base64Key = base64.encode(utf8.encode(key));
    String base64Value = keyValueStore.get(base64Key);
    return base64Value == KeyValueStore.undefined
        ? base64Value
        : utf8.decode(base64.decode(base64Value));
  }
}
