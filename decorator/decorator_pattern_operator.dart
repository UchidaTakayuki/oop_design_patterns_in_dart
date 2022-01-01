import 'base64_store_decorator.dart';
import 'map_store.dart';
import 'no_overwrite_store_decorator.dart';

class DecoratorPatternOperator {
  static void operation() {
    // Base64でエンコードしてキーバリューを操作
    Base64StoreDecorator base64Store = Base64StoreDecorator(MapStore());
    base64Store.set('key1', 'value1');
    base64Store.set('key2', 'value2');
    base64Store.set('key2', 'value2value2');
    String base64StoreValue1 = base64Store.get('key1');
    String base64StoreValue2 = base64Store.get('key2');
    print("key1 = ${base64StoreValue1}");
    print("key2 = ${base64StoreValue2}");

    // 上書き不可チェックを追加してキーバリューを操作
    NoOverwriteStoreDecorator noOverwriteStore =
        NoOverwriteStoreDecorator(MapStore());
    noOverwriteStore.set('key1', 'value1');
    noOverwriteStore.set('key2', 'value2');
    noOverwriteStore.set('key2', 'value2value2');
    String noOverwriteStoreValue1 = noOverwriteStore.get('key1');
    String noOverwriteStoreValue2 = noOverwriteStore.get('key2');
    print("key1 = ${noOverwriteStoreValue1}");
    print("key2 = ${noOverwriteStoreValue2}");

    // Base64でエンコードと上書き不可チェックを追加してキーバリューを操作
    NoOverwriteStoreDecorator noOverwriteBase64Store =
        NoOverwriteStoreDecorator(Base64StoreDecorator(MapStore()));
    noOverwriteBase64Store.set('key1', 'value1');
    noOverwriteBase64Store.set('key2', 'value2');
    noOverwriteBase64Store.set('key2', 'value2value2');
    String noOverwriteBase64StoreValue1 = noOverwriteBase64Store.get('key1');
    String noOverwriteBase64StoreValue2 = noOverwriteBase64Store.get('key2');
    print("key1 = ${noOverwriteBase64StoreValue1}");
    print("key2 = ${noOverwriteBase64StoreValue2}");
  }
}
