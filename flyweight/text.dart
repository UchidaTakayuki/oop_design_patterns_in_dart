import 'context.dart';
import 'glyph.dart';

class Text extends Glyph {
  List<Glyph> _glyphList = [];

  int get length => _glyphList.length;

  void insert(Glyph glyph) => _glyphList.add(glyph);

  void remove(int index) => _glyphList.removeAt(index);

  void draw(Context context) {
    context.first();
    _glyphList.forEach((glyph) {
      glyph.draw(context);
      context.next();
    });
  }
}
