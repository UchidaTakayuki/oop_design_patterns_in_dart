import 'html_bold.dart';
import 'html_link.dart';
import 'output_format_factory.dart';

class HtmlFactory extends OutputFormatFactory {
  static HtmlFactory _instance = HtmlFactory._internalInit();

  factory HtmlFactory() => _instance;

  HtmlFactory._internalInit();

  HtmlBold createBold() => HtmlBold();
  HtmlLink createLink() => HtmlLink();
}
