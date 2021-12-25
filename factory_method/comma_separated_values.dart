import 'separated_values.dart';

class CommaSeparatedValues extends SeparatedValues {
  String delimiter = ',';

  String getOutput(String table, String originalDelimiter) =>
      table.replaceAll(originalDelimiter, delimiter);
}
