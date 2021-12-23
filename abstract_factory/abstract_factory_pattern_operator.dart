import 'abstract_bold.dart';
import 'abstract_link.dart';
import 'html_factory.dart';
import 'markdown_factory.dart';
import 'output_format_factory.dart';

class AbstractFactoryPatternOperator {
  static void operation() {
    String helloWord = 'Hello World';
    String helloWordLink =
        'https://en.wikipedia.org/wiki/%22Hello,_World!%22_program';

    // HTML形式の出力確認
    OutputFormatFactory htmlFactory = HtmlFactory();
    String htmlOutput = '';
    AbstractBold htmlBold = htmlFactory.createBold();
    AbstractLink htmlLink = htmlFactory.createLink();
    htmlOutput += htmlBold.getBold(helloWord) + '\n';
    htmlOutput += htmlLink.getLink(helloWord, helloWordLink) + '\n';
    print(htmlOutput);

    // Markdown形式の出力確認
    String markdownOutput = '';
    OutputFormatFactory markdownFactory = MarkdownFactory();
    AbstractBold markdownBold = markdownFactory.createBold();
    AbstractLink markdownLink = markdownFactory.createLink();
    markdownOutput += markdownBold.getBold(helloWord) + '\n';
    markdownOutput += markdownLink.getLink(helloWord, helloWordLink) + '\n';
    print(markdownOutput);
  }
}
