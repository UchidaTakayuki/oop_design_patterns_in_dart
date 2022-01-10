import 'boolean_context.dart';
import 'boolean_expression.dart';

class VariableExpression extends BooleanExpression {
  String _variable;

  VariableExpression(this._variable);

  String get variable => _variable;

  bool evaluate(BooleanContext context) {
    return context.lookup(_variable);
  }

  BooleanExpression replace(String variable, BooleanExpression boolExp) {
    if (_variable == variable) {
      return boolExp.copy();
    } else {
      return VariableExpression(_variable);
    }
  }

  BooleanExpression copy() {
    return VariableExpression(_variable);
  }
}
