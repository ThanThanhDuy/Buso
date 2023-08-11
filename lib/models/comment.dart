class Comment {
  String id;
  String avatarUrl;
  String userName;
  String fullName;
  String content;
  String userId;
  String? replyId;
  DateTime createAt;
  List<Comment>? listComments;

  Comment({
    required this.id,
    required this.avatarUrl,
    required this.userName,
    required this.fullName,
    required this.content,
    required this.userId,
    this.replyId,
    required this.createAt,
    this.listComments,
  });
}
