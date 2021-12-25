import 'cloneable.dart';
import 'mail.dart';

class MailTemplateManager {
  final Mail emptyMail = Mail('', '', [], [], []);
  Map<String, Mail> _templateMailMap = Map();

  void regist(String key, Mail template) {
    _templateMailMap[key] = template;
  }

  Mail create(String key) {
    if (_templateMailMap.containsKey(key)) {
      Mail template = _templateMailMap[key] as Mail;
      return template.clone();
    } else {
      return emptyMail;
    }
  }
}
