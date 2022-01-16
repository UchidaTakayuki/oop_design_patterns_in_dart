import 'case.dart';

class Sentence {
  String _sentence;
  Case _case;

  Sentence(this._sentence, this._case);

  String formatCase() => _sentence == '' ? '' : _case.format(_sentence);
}
