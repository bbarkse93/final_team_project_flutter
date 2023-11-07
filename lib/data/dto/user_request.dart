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
