import 'variable_expression.dart';

class BooleanContext {
  Map<String, bool> _variableBoolMap = {};

  bool lookup(String variable) => _variableBoolMap[variable] as bool;

  void assing(VariableExpression varExp, bool b) =>
      _variableBoolMap[varExp.variable] = b;
}
