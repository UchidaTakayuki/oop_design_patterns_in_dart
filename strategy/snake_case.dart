import 'case.dart';

class SnakeCase extends Case {
  String format(String str) {
    return str.toLowerCase().split(" ").join("_");
  }
}
