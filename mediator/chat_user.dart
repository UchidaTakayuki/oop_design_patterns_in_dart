import 'user.dart';

class ChatUser extends User {
  ChatUser(mediator, id, name) : super(mediator, id, name);

  void send(String msg, String userId) {
    print(name + " :: Sending Message : " + msg);
    mediator.sendMessage(msg, userId);
  }

  void receive(String msg) => print(name + " :: Received Message : " + msg);
}
