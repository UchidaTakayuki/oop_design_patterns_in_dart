import 'command.dart';
import 'document.dart';

class WriteCommand extends Command {
  Document _doc;
  String _writeText;

  WriteCommand(this._doc, this._writeText);

  void execute() => _doc.write(_writeText);
}
