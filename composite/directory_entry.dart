import 'entry.dart';

class DirectoryEntry extends Entry {
  String _name;
  Entry? _parent;
  List<Entry> _children;

  DirectoryEntry(this._name, this._parent) : _children = [];

  int get depth {
    int depth = 1;
    if (_parent != null) depth += _parent!.depth + 1;
    return depth;
  }

  void addChildren(Entry entry) {
    _children.add(entry);
  }

  String tree() {
    String depthShow = _name + '/\n';
    String space = ' ';
    String spaces = List.generate(depth, (i) => space).join();
    _children.asMap().forEach((int i, Entry entry) {
      if (i == _children.length - 1) {
        depthShow += spaces + entry.tree();
      } else {
        depthShow += spaces + entry.tree();
      }
    });
    return depthShow;
  }
}
