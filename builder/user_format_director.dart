import 'user_format_builder.dart';

class UserFormatDirector {
  UserFormatBuilder _builder;
  UserFormatDirector(this._builder);

  void construct() {
    _builder.setName('foo bar');
    _builder.setAge(20);
    _builder.createUserFormat();
  }
}
