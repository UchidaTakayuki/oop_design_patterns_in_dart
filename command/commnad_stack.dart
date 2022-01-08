import 'command.dart';

class CommandStack {
  List<Command> _stack = <Command>[];

  void add(Command command) => _stack.add(command);
  void undo() => _stack.removeLast();
  void execute() => _stack.forEach((command) => command.execute());
}
