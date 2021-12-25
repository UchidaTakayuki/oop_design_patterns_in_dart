import 'formatter.dart';
import 'separated_values.dart';
import 'comma_separated_values.dart';

class CommaSeparatedValuesFormatter extends Formatter {
  SeparatedValues createSeparatedValues() => CommaSeparatedValues();
}
