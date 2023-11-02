class User {
  int? id;
  String? username;
  String? password;
  String? email;
  String? userPicUrl;
  String? location;
  bool? distinguish;
  String? userCreatedAt;
  int? replyUserId;
  String? nickname;

  User({
    this.id,
    this.username,
    this.password,
    this.email,
    this.userPicUrl,
    this.location,
    this.distinguish,
    this.userCreatedAt,
    this.replyUserId,
    this.nickname,
  });

  // 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "password": password,
        "email": email,
        "userPicUrl": userPicUrl,
        "location": location,
        "distinguish": distinguish,
        "userCreatedAt": userCreatedAt,
        "replyUserId": replyUserId,
        "nickname": nickname,
      };

  // 2. Map 형태로 받아서 Dart 객체로 변환합니다.
  User.fromJson(Map<String, dynamic> json)
      : id = json["userId"],
        username = json["username"],
        password = json["password"],
        email = json["email"],
        userPicUrl = json["userPicUrl"],
        location = json["location"],
        distinguish = json["distinguish"],
        userCreatedAt = json["userCreatedAt"],
        replyUserId = json["replyUserId"],
        nickname = json["nickname"];
}
