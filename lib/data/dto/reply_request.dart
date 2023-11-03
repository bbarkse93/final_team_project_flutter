import '../model/user.dart';

class ReplyWriteDTO {
  final String? boardReply;
  final int? boardId;
  final int? userId;

  ReplyWriteDTO({
    this.boardId,
    this.userId,
    required this.boardReply,
  });

  Map<String, dynamic> toJson() {
    return {
      "comment": boardReply,
      "boardId": boardId,
      "userId": userId,
    };
  }
}
