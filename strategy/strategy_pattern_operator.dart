import 'sentence.dart';
import 'upper_camel_case.dart';
import 'lower_camel_case.dart';
import 'snake_case.dart';

class StrategyPatternOperator {
  static void operation() {
    String helloWorld = 'hello world';
    Sentence helloSentenceUpper = Sentence(helloWorld, UpperCamelCase());
    Sentence helloSentenceLower = Sentence(helloWorld, LowerCamelCase());
    Sentence helloSentenceSnake = Sentence(helloWorld, SnakeCase());

    // 各規則で表示
    print(helloSentenceUpper.formatCase());
    print(helloSentenceLower.formatCase());
    print(helloSentenceSnake.formatCase());
  }
}
