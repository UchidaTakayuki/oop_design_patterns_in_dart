import 'abstract_factory/abstract_factory_pattern_operator.dart';
import 'builder/builder_pattern_operator.dart';
import 'factory_method/factory_method_pattern_operator.dart';
import 'prototype/prototype_pattern_operator.dart';

void main() {
  // Abstract Factoryパターン
  AbstractFactoryPatternOperator.operation();

  // Builderパターン
  BuilderPatternOperator.operation();

  // Factory Methodパターン
  FactoryMethodPatternOperator.operation();

  // Prototypeパターン
  PrototypePatternOperator.operation();
}
