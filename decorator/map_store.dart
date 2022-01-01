import 'key_value_store.dart';

class MapStore extends KeyValueStore {
  Map<String, String> _store = {};

  Map<String, String> get store => _store;

  void set(String key, String value) => _store[key] = value;

  String get(String key) =>
      _store.containsKey(key) ? _store[key] as String : KeyValueStore.undefined;
}
