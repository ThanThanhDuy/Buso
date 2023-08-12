import 'package:buso/models/room.dart';
import 'package:buso/models/user.dart';

class Message {
  String id;
  String content;
  Room room;
  User userSendLast;
  DateTime timeSend;

  Message({
    required this.id,
    required this.content,
    required this.room,
    required this.userSendLast,
    required this.timeSend,
  });
}
