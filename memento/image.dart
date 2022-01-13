import 'image_point_memento.dart';

class Image {
  String _imageName;
  int _x;
  int _y;

  Image(this._imageName, this._x, this._y);

  draw() => print('{$_imageName} : point({$_x}, {$_y})');

  ImagePointMemento createMemento() {
    ImagePointMemento memento = ImagePointMemento();
    memento.x = _x;
    memento.y = _y;
    return memento;
  }

  void move(int x, int y) {
    _x += x;
    _y += y;
  }

  void setMemento(ImagePointMemento memento) {
    _x = memento.x;
    _y = memento.y;
  }
}
