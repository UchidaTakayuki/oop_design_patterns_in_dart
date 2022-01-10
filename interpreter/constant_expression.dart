import 'boolean_context.dart';
import 'boolean_expression.dart';

class ConstantExpression extends BooleanExpression {
  bool _bool;

  ConstantExpression(this._bool);

  bool evaluate(BooleanContext context) {
    return _bool;
  }

  BooleanExpression replace(String variable, BooleanExpression boolExp) {
    return ConstantExpression(_bool);
  }

  BooleanExpression copy() {
    return ConstantExpression(_bool);
  }
}
