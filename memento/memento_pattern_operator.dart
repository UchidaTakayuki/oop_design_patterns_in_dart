import 'image.dart';
import 'image_point_memento.dart';

class MementoPatternOperator {
  static void operation() {
    Image img = Image('foo.png', 0, 0);
    ImagePointMemento initPoint = img.createMemento();

    // 画像表示
    img.draw();

    // 画像の移動と表示
    img.move(10, 20);
    img.draw();

    // 画像を初期位置に戻して表示
    img.setMemento(initPoint);
    img.draw();
  }
}
