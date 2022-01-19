import 'mail_validation.dart';
import 'visitable.dart';

class ContactAddressCollection {
  List<Visitable> _contactAddressList;

  ContactAddressCollection(this._contactAddressList);

  void verifyAll(MailValidation validation) {
    _contactAddressList.forEach((contactAddress) {
      contactAddress.accept(validation);
    });
  }
}
