abstract class KeyValueStore {
  static const String undefined = 'undefined';

  void set(String key, String value);
  String get(String key);
}
