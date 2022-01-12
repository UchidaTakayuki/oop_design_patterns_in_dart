import 'chat_mediator.dart';
import 'chat_room.dart';
import 'chat_user.dart';
import 'user.dart';

class MediatorPatternOperator {
  static void operation() {
    ChatMediator chatroom = ChatRoom();

    User user1 = ChatUser(chatroom, "1", "User1");
    User user2 = ChatUser(chatroom, "2", "User2");
    User user3 = ChatUser(chatroom, "3", "User3");
    User user4 = ChatUser(chatroom, "4", "User4");

    chatroom.addUser(user1);
    chatroom.addUser(user2);
    chatroom.addUser(user3);
    chatroom.addUser(user4);

    // メッセージの通信処理
    user1.send("Hello", "2");
    user2.send("Hey", "1");
  }
}
