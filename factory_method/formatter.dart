import 'separated_values.dart';

abstract class Formatter {
  String formatOutput(String table, String originalDelimiter) {
    SeparatedValues separatedValues = createSeparatedValues();
    return separatedValues.getOutput(table, originalDelimiter);
  }

  SeparatedValues createSeparatedValues();
}
