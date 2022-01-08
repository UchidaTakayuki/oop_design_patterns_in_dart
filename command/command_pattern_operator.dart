import 'command.dart';
import 'commnad_stack.dart';
import 'document.dart';
import 'create_command.dart';
import 'write_command.dart';

class CommandPatternOperator {
  static void operation() {
    Document doc = Document('/var/sample/text.txt');
    Command createCommand = CreateCommand(doc);
    Command writeCommand1 = WriteCommand(doc, 'hoge\n');
    Command writeCommand2 = WriteCommand(doc, 'fuga\n');
    CommandStack stack = CommandStack();

    // コマンドの登録と実行
    stack.add(createCommand);
    stack.add(writeCommand1);
    stack.add(writeCommand2);
    stack.undo(); // 直前のコマンド取り消し
    stack.add(writeCommand1);
    stack.execute();
  }
}
