import 'entry.dart';

class FileEntry extends Entry {
  String _name;
  Entry _parent;

  FileEntry(this._name, this._parent);

  int get depth {
    int depth = 1;
    if (_parent != null) depth += _parent.depth;
    return depth;
  }

  String tree() => _name + '\n';
}
