import 'command.dart';
import 'document.dart';

class CreateCommand extends Command {
  Document _doc;

  CreateCommand(this._doc);

  void execute() => _doc.create();
}
