import 'boolean_context.dart';

abstract class BooleanExpression {
  bool evaluate(BooleanContext context);

  BooleanExpression replace(String char, BooleanExpression boolExp);

  BooleanExpression copy();
}
