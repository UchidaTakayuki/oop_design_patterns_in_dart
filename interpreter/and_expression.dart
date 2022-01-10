import 'boolean_context.dart';
import 'boolean_expression.dart';

class AndExpression extends BooleanExpression {
  BooleanExpression _operand1;
  BooleanExpression _operand2;

  AndExpression(this._operand1, this._operand2);

  bool evaluate(BooleanContext context) {
    return _operand1.evaluate(context) && _operand2.evaluate(context);
  }

  BooleanExpression replace(String variable, BooleanExpression boolExp) {
    return AndExpression(_operand1.replace(variable, boolExp),
        _operand2.replace(variable, boolExp));
  }

  BooleanExpression copy() {
    return AndExpression(_operand1.copy(), _operand2.copy());
  }
}
