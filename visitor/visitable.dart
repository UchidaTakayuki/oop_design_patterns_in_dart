import 'mail_validation.dart';

abstract class Visitable {
  void accept(MailValidation visitor);
}
