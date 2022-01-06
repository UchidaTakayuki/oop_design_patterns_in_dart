import 'charactor.dart';
import 'glyph.dart';

class GlyphFactory {
  Map<String, Glyph> pool = {};

  Glyph getGlyph(String char) {
    if (!pool.containsKey(char)) {
      pool[char] = Charactor(char);
    }
    return pool[char] as Glyph;
  }
}
