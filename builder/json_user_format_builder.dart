import 'user.dart';
import 'user_format_builder.dart';

class JsonUserFormatBuilder extends UserFormatBuilder {
  User _user = User();
  String _userJsonFormat = '';

  String get userFormat => _userJsonFormat;

  void setName(String name) => _user.name = name;
  void setAge(int age) => _user.age = age;

  void createUserFormat() {
    _userJsonFormat = '''
      {
        "user": {
          "name": "${_user.name}",
          "age": ${_user.age}
        }
      }
    ''';
  }
}
