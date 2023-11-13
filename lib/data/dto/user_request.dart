class JoinReqDTO {
  final String username;
  final String password;
  final String email;
  final String? location;

  JoinReqDTO(
      {required this.username,
      required this.password,
      required this.email,
      this.location});

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "email": email,
        "location": location,
      };
}

class LoginReqDTO {
  final String username;
  final String password;

  LoginReqDTO({
    required this.username,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
      };
}

// 유저정보변경
class UserChangeDTO {
  final String? userPicUrl;
  final String nickname;
  final String password;

  UserChangeDTO(
    this.userPicUrl,
    this.nickname,
    this.password,
  );
  Map<String, dynamic> toJson() => {
        "userPicUrl": userPicUrl,
        "nickname": nickname,
        "password": password,
      };
}
