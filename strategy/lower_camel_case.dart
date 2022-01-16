import 'case.dart';

class LowerCamelCase extends Case {
  String format(String str) {
    List<String> separatedLowerStrs = str.toLowerCase().split(" ");

    String result = "";
    separatedLowerStrs.asMap().forEach((index, lowerStr) {
      List<String> chars = lowerStr.split("");
      if (index == 0) {
        result += chars.first;
      } else {
        result += chars.first.toUpperCase();
      }
      if (chars.length > 1) {
        result += chars.sublist(1).join();
      }
    });

    return result;
  }
}
