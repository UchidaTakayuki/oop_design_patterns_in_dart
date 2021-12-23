import 'abstract_link.dart';

class HtmlLink extends AbstractLink {
  String getLink(String text, String href) => '<a href="${href}">${text}</a>';
}
