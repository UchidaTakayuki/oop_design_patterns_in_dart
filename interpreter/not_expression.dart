import 'boolean_context.dart';
import 'boolean_expression.dart';

class NotExpression extends BooleanExpression {
  BooleanExpression _operand;

  NotExpression(this._operand);

  bool evaluate(BooleanContext context) {
    return !_operand.evaluate(context);
  }

  BooleanExpression replace(String variable, BooleanExpression boolExp) {
    return NotExpression(_operand.replace(variable, boolExp));
  }

  BooleanExpression copy() {
    return NotExpression(_operand.copy());
  }
}
