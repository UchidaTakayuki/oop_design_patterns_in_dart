import 'dart:io';
import 'contact.dart';
import 'contact_json_file_impl.dart';
import 'contact_xml_file_impl.dart';
import 'file_verification.dart';
import 'verification.dart';

class BridgePatternOperator {
  static void operation() {
    Contact contact = new Contact('0000', 'foo', 'bar', 'baz@example.com');

    // JSON形式のファイル作成確認
    ContactJsonFileImpl jsonFileImpl =
        new ContactJsonFileImpl(File('/var/sample/contact.json'), contact);
    Verification jsonVerifi = new FileVerification(jsonFileImpl);
    jsonVerifi.fileVerificationWrite();

    // XML形式のファイル作成確認
    ContactXmlFileImpl xmlFileImpl =
        new ContactXmlFileImpl(File('/var/sample/contact.xml'), contact);
    Verification xmlVerifi = new FileVerification(xmlFileImpl);
    xmlVerifi.fileVerificationWrite();
  }
}
