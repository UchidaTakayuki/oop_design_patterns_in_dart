class Context {
  List<String> _colorList = [];
  List<int> _sizeList = [];
  int _index = 0;

  String get color => _colorList[_index];

  int get size => _sizeList[_index];

  bool get isLast =>
      _colorList.length - 1 == _index && _sizeList.length - 1 == _index;

  void set index(int index) => _index = index;

  void first() => _index = 0;
  void next() => _index++;

  void remove() {
    _colorList.removeAt(_index);
    _sizeList.removeAt(_index);
  }

  void setContext(String color, int size, int end) {
    for (int start = 0; start < end; start++) {
      _colorList.add(color);
      _sizeList.add(size);
      _index++;
    }
  }
}
