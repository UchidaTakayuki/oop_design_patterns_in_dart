import 'context.dart';
import 'glyph.dart';
import 'glyph_factory.dart';
import 'text.dart';

class FlyweightPatternOperator {
  static void operation() {
    // textオブジェクトの生成
    Text text = Text();
    String drawText = 'Hello World';
    GlyphFactory factory = GlyphFactory();
    drawText.split('').forEach((char) {
      Glyph glyph = factory.getGlyph(char);
      text.insert(glyph);
    });

    // contextオブジェクトの生成
    Context context = Context();
    // "Hello "は赤色でサイズは10、"World"は青色でサイズは20
    context.setContext('red', 10, 6);
    context.setContext('blue', 20, 5);

    // textの出力
    text.draw(context);

    // contextを初期化しHelloは青色でサイズは20、Worldは赤色でサイズは10
    context.first();
    while (!context.isLast) {
      context.remove();
      context.next();
    }
    context.setContext('blue', 20, 5);
    context.setContext('red', 10, 5);

    // textの出力
    text.draw(context);
  }
}
