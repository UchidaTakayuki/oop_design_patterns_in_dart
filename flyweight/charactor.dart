import 'context.dart';
import 'glyph.dart';

class Charactor extends Glyph {
  String _char;

  Charactor(this._char);

  void draw(Context context) {
    if (_char.trim() == '') {
      print('The character is empty.');
    } else {
      print('color:${context.color}, size:${context.size}, char:${_char}');
    }
  }
}
