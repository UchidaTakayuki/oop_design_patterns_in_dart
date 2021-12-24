import 'comma_separated_values_formatter.dart';
import 'tab_separated_values_formatter.dart';

class FactoryMethodPatternOperator {
  static void operation() {
    String table = 'foo1|bar1|baz1\nfoo2|bar2|baz2\nfoo3|bar3|baz3\n';
    String separator = '|';

    // CSV形式の出力確認
    print(CommaSeparatedValuesFormatter().formatOutput(table, separator));

    // TSV形式の出力確認
    print(TabSeparatedValuesFormatter().formatOutput(table, separator));
  }
}
