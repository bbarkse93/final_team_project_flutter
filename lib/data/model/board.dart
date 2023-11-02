import 'package:team_project/data/model/board_pic.dart';
import 'package:team_project/data/model/reply.dart';
import 'package:team_project/data/model/user.dart';

class Board {
  int? id;
  String? boardTitle;
  String? boardContent;
  String? createdAt;
  String? boardCategory;
  User? user;
  List<BoardPic>? boardPics;
  List<Reply>? replies;

  Board(
      {required this.id,
      required this.boardTitle,
      required this.boardContent,
      required this.createdAt,
      required this.boardCategory,
      required this.user,
      required this.boardPics,
      List<Reply>? replies});

  // Dart 객체를 통신을 위한 Map 형태로 변환
  Map<String, dynamic> toJson() => {
        "id": id,
        "boardTitle": boardTitle,
        "boardContent": boardContent,
        "createdAt": createdAt,
        "boardCategory": boardCategory,
        "user": user,
        "boardPics": boardPics,
      };

  // Map 형태로 받아서 Dart 객체로 변환
  Board.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        boardTitle = json["boardTitle"],
        boardContent = json["boardContent"],
        createdAt = json["createdAt"],
        boardCategory = json["boardCategory"],
        user = User.fromJson(json["user"]),
        boardPics = (json["boardPics"] as List<dynamic>? ?? []).map((picJson) => BoardPic.fromJson(picJson)).toList();

// String getUpdated() {
//   // 출력시 -> 값을 Oct 23 이렇게 만든다.
//   return DateFormat.MMMd().format(updated);
// }
}
