import 'inquiry.dart';

class InquiryUser extends Inquiry {
  String _accountNo;

  InquiryUser(this._accountNo);

  String get accountNo => _accountNo;
}
