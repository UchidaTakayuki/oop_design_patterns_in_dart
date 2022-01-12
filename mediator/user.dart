import 'chat_room.dart';

abstract class User {
  ChatRoom _mediator;
  String _id;
  String _name;

  User(this._mediator, this._id, this._name);

  ChatRoom get mediator => _mediator;
  String get id => _id;
  String get name => _name;

  void send(String msg, String userId);
  void receive(String msg);
}
