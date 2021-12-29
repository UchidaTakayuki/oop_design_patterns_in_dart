import 'contact.dart';
import 'contact_extract.dart';
import 'json_contact.dart';
import 'json_contact_adapter.dart';

class AdapterPatternOperator {
  static void operation() {
    // JSON形式だった連絡先一覧の出力確認
    ContactExtract contact = JsonContactAdapter(JsonContact());
    for (Contact contact in contact.getContacts()) {
      print(
          'id=${contact.id}, name=${contact.firstName} ${contact.lastName}, mail=${contact.mailAddress}\n');
    }
  }
}
