import 'markdown_bold.dart';
import 'markdown_link.dart';
import 'output_format_factory.dart';

class MarkdownFactory extends OutputFormatFactory {
  MarkdownBold createBold() => MarkdownBold();
  MarkdownLink createLink() => MarkdownLink();
}
