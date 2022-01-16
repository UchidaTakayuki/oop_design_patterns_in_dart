import 'case.dart';

class UpperCamelCase extends Case {
  String format(String str) {
    List<String> separatedLowerStrs = str.toLowerCase().split(" ");

    String result = "";
    separatedLowerStrs.forEach((lowerStr) {
      List<String> chars = lowerStr.split("");
      result += chars.first.toUpperCase();
      if (chars.length > 1) {
        result += chars.sublist(1).join();
      }
    });

    return result;
  }
}
