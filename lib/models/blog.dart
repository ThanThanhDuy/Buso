import 'package:buso/models/comment.dart';

class Blog {
  String id;
  String avatarUrl;
  String userName;
  String fullName;
  String content;
  List<String> listImage;
  int totalLike;
  List<Comment> listComment;
  DateTime createAt;
  bool isLike;
  bool isSave;
  int totalComment;
  int totalSave;

  Blog({
    required this.id,
    required this.avatarUrl,
    required this.userName,
    required this.fullName,
    required this.content,
    required this.listImage,
    required this.totalLike,
    required this.listComment,
    required this.createAt,
    required this.isLike,
    required this.isSave,
    required this.totalComment,
    required this.totalSave,
  });
}
