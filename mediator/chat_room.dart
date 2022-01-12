import 'chat_mediator.dart';
import 'user.dart';

class ChatRoom extends ChatMediator {
  Map<String, User> _userMap = {};

  void sendMessage(String msg, String userId) {
    User u = _userMap[userId] as User;
    u.receive(msg);
  }

  void addUser(User user) => _userMap[user.id] = user;
}
