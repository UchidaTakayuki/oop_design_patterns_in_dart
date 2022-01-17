abstract class ListDisplay {
  List<dynamic> _items;
  final String _space = "  ";

  ListDisplay(this._items);

  String get space => _space;

  String formatStart();
  String formatItem(String item);
  String formatEnd();

  void display() {
    String result = formatStart();

    _items.forEach((item) {
      result += formatItem(item);
    });

    result += formatEnd();
    print(result);
  }
}
