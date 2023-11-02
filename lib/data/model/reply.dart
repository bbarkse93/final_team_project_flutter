import 'package:team_project/data/model/user.dart';

class Reply {
  int? replyId;
  String? comment;
  String? replyCreatedAt;
  User? user;

  Reply({this.replyId, this.comment, this.replyCreatedAt, this.user});

  // Dart 객체를 통신을 위한 Map 형태로 변환
  Map<String, dynamic> toJson() => {
        "replyId": replyId,
        "comment": comment,
        "replyCreatedAt": replyCreatedAt,
        "user": user,
      };

  // Map 형태로 받아서 Dart 객체로 변환
  Reply.fromJson(Map<String, dynamic> json)
      : replyId = json["replyId"],
        comment = json["comment"],
        replyCreatedAt = json["replyCreatedAt"],
        user = User.fromJson(json["user"]);
}
