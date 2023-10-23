import 'package:intl/intl.dart';

class User {
  int id;
  String username;
  String email;
  DateTime created;
  DateTime updated;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.created,
    required this.updated,
  });

  // 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "created": created,
        "updated": updated
      };

  // 2. Map 형태로 받아서 Dart 객체로 변환합니다.
  User.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        username = json["username"],
        email = json["email"],
        created = DateFormat("yyyy-mm-dd").parse(json["created"]), // 3
        updated = DateFormat("yyyy-mm-dd").parse(json["updated"]);

  @override
  String toString() {
    return 'User{id: $id, username: $username, email: $email, created: $created, updated: $updated}';
  }
}
