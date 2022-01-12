import 'user.dart';

abstract class ChatMediator {
  void sendMessage(String msg, String userId);
  void addUser(User user);
}
