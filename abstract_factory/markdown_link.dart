import 'abstract_link.dart';

class MarkdownLink extends AbstractLink {
  String getLink(String text, String href) => '[${href}](${text})';
}
