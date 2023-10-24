import 'package:team_project/data/model/user.dart';

class Post {
  int id;
  String title;
  String content;
  User user;
  int price;
  String created;
  String updated;
  int heartCount;
  int commentCount;

  Post({
    required this.id,
    required this.title,
    required this.content,
    required this.user,
    required this.price,
    required this.created,
    required this.updated,
    required this.heartCount,
    required this.commentCount,
  });

  // Dart 객체를 통신을 위한 Map 형태로 변환
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "content": content,
        "user": user,
        "price": price,
        "created": created,
        "updated": updated,
        "heartCount": heartCount,
        "commentCount": commentCount,
      };

  // Map 형태로 받아서 Dart 객체로 변환
  Post.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        content = json["content"],
        price = json["price"],
        user = User.fromJson(json["user"]),
        created = json["created"],
        updated = json["updated"],
        heartCount = json["heartCount"],
        commentCount = json["commentCount"];

  // String getUpdated() {
  //   // 출력시 -> 값을 Oct 23 이렇게 만든다.
  //   return DateFormat.MMMd().format(updated);
  // }
}
