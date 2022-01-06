import 'dart:io';
import 'inquiry.dart';
import 'inquiry_user.dart';

class InquiryProxy extends Inquiry {
  Inquiry _realInquiry;
  String _password;

  InquiryProxy(this._password) : _realInquiry = InquiryUser('12345');

  String get accountNo {
    String password = stdin.readLineSync() as String;
    if (password == _password) {
      return _realInquiry.accountNo;
    } else {
      return '';
    }
  }
}
