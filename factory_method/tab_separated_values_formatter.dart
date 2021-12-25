import 'formatter.dart';
import 'separated_values.dart';
import 'tab_separated_values.dart';

class TabSeparatedValuesFormatter extends Formatter {
  SeparatedValues createSeparatedValues() => TabSeparatedValues();
}
