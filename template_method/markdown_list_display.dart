import 'list_display.dart';

class MarkdownListDisplay extends ListDisplay {
  MarkdownListDisplay(items) : super(items);

  String formatStart() => "";

  String formatItem(String item) => "- " + item + "\n";

  String formatEnd() => "";
}
