import 'separated_values.dart';

class TabSeparatedValues extends SeparatedValues {
  String delimiter = '\t';

  String getOutput(String table, String originalDelimiter) =>
      table.replaceAll(originalDelimiter, delimiter);
}
