import 'html_bold.dart';
import 'html_link.dart';
import 'output_format_factory.dart';

class HtmlFactory extends OutputFormatFactory {
  HtmlBold createBold() => HtmlBold();
  HtmlLink createLink() => HtmlLink();
}
