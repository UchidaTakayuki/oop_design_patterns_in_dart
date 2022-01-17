import 'html_list_display.dart';
import 'list_display.dart';
import 'markdown_list_display.dart';

class TemplateMethodPatternOperator {
  static void operation() {
    List<String> numbers = ['foo', 'bar', 'baz'];

    // HTML形式でリスト表示
    ListDisplay htmlListDisplay = HtmlListDisplay(numbers);
    htmlListDisplay.display();

    // Markdown形式でリスト表示
    ListDisplay markdownListDisplay = MarkdownListDisplay(numbers);
    markdownListDisplay.display();
  }
}
