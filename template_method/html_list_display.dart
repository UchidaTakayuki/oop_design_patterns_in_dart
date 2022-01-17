import 'list_display.dart';

class HtmlListDisplay extends ListDisplay {
  HtmlListDisplay(items) : super(items);

  String formatStart() => "<ul>\n";

  String formatItem(String item) => space + "<li>" + item + "</li>\n";

  String formatEnd() => "</ul>\n";
}
