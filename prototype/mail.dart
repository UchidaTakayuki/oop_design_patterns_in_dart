import 'cloneable.dart';
import 'mail_address.dart';

class Mail implements Cloneable {
  String _title;
  String _body;
  List<MailAddress> _toList;
  List<MailAddress> _ccList;
  List<MailAddress> _bccList;

  Mail(this._title, this._body, this._toList, this._ccList, this._bccList);

  Mail clone() => Mail(
      _title,
      _body,
      _toList.map((to) => to.clone()).toList(),
      _ccList.map((to) => to.clone()).toList(),
      _bccList.map((to) => to.clone()).toList());

  String toString() {
    List<String> mailInmfos = [];
    mailInmfos.add('title: ${_title}');
    mailInmfos.add('body: ${_body}');
    mailInmfos.add(
        'to: ${_toList.map((MailAddress mailAddress) => mailAddress.address).join(',')}');
    mailInmfos.add(
        'cc: ${_ccList.map((MailAddress mailAddress) => mailAddress.address).join(',')}');
    mailInmfos.add(
        'bcc: ${_bccList.map((MailAddress mailAddress) => mailAddress.address).join(',')}');
    return mailInmfos.join('\n');
  }
}
