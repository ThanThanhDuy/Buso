import 'package:buso/models/user.dart';

class Room {
  String id;
  String name;
  List<User> listMember;

  Room({
    required this.id,
    required this.name,
    required this.listMember,
  });
}
