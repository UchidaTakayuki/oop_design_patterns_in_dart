import 'and_expression.dart';
import 'boolean_context.dart';
import 'boolean_expression.dart';
import 'constant_expression.dart';
import 'not_expression.dart';
import 'or_expression.dart';
import 'variable_expression.dart';

class InterpreterPatternOperator {
  static void operation() {
    BooleanContext context = BooleanContext();

    // (true and x) or (y and (not x))を定義及び評価
    VariableExpression x = VariableExpression('x');
    VariableExpression y = VariableExpression('y');

    BooleanExpression expression = OrExpression(
        AndExpression(ConstantExpression(true), x),
        AndExpression(y, NotExpression(x)));

    context.assing(x, false);
    context.assing(y, true);

    bool result = expression.evaluate(context);
    print(
        'x = false, y = trueの場合、(true and x) or (y and (not x))の評価結果は${result}です。');

    // 変数yを別の表現に置き換えて(true and x) or ((not z) and (not x))とし再評価
    VariableExpression z = VariableExpression('z');
    BooleanExpression replacement = NotExpression(z);
    expression = expression.replace('y', replacement);

    context.assing(z, true);

    result = expression.evaluate(context);
    print(
        'x = false, z = trueの場合、(true and x) or ((not z) and (not x))の評価結果は${result}です。');
  }
}
