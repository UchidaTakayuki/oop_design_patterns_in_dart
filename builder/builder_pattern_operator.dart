import 'user_format_director.dart';
import 'user_format_builder.dart';
import 'json_user_format_builder.dart';
import 'xml_user_format_builder.dart';

class BuilderPatternOperator {
  static void operation() {
    // JSON形式の出力確認
    JsonUserFormatBuilder jsonBuilder = JsonUserFormatBuilder();
    UserFormatDirector jsonDirector = UserFormatDirector(jsonBuilder);
    jsonDirector.construct();
    print(jsonBuilder.userFormat + '\n');

    // XML形式の出力確認
    XmlUserFormatBuilder xmlBuilder = XmlUserFormatBuilder();
    UserFormatDirector xmlDirector = UserFormatDirector(xmlBuilder);
    xmlDirector.construct();
    print(xmlBuilder.userFormat + '\n');
  }
}
