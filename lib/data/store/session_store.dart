import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/_core/constants/move.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/dto/user_request.dart';
import 'package:team_project/data/model/user.dart';
import 'package:team_project/data/repository/user_repository.dart';
import 'package:team_project/main.dart';

// 1. 창고 데이터
class SessionUser {
  User? user;
  String? jwt;
  bool isLogin;
  SessionUser({this.user, this.jwt, this.isLogin = false});
}

// 2. 창고
class SessionStore extends SessionUser {
  // 1. 화면 context에 접근하는 법
  final mContext = navigatorKey.currentContext;

  Future<void> join(JoinReqDTO joinReqDTO) async {
    // 1. 통신 코드
    ResponseDTO responseDTO = await UserRepository().fetchJoin(joinReqDTO);

    // 2. 비지니스 로직
    if (responseDTO.success == true) {
      Navigator.pushNamed(mContext!, Move.loginPage);
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text(responseDTO.error)));
    }
  }

  Future<void> login(LoginReqDTO loginReqDTO) async {
    // Logger().d("창고 코드로 넘어왔어요!");
    // 1. 통신 코드
    ResponseDTO responseDTO = await UserRepository().fetchLogin(loginReqDTO);

    // Logger().d("통신코드를 넘어왔어요!");

    // 2. 비지니스 로직
    if (responseDTO.success == true) {
      //   // 1. 세션값 갱신
      this.user = responseDTO.response as User;
      this.jwt = responseDTO.token;
      this.isLogin = true;

      // Logger().d("user!.id : ${user!.id}");
      // Logger().d("user!.location : ${user!.location}");

      // 2. 디바이스에 JWT 저장 (자동 로그인)
      await secureStorage.write(key: "jwt", value: responseDTO.token);
      // Logger().d("고지가 눈앞이에요!");

      // 3. 페이지 이동
      Navigator.pushNamed(mContext!, Move.mainPage);

      // Logger().d("뭔가 문제가 있어요!");
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text(responseDTO.error)));
    }
  }

// JWT는 로그아웃할 때 서버측으로 요청할 필요가 없음.
  Future<void> logout() async {
    this.jwt = null;
    this.isLogin = false;
    this.user = null;

    await secureStorage.delete(key: "jwt");

    Navigator.pushNamedAndRemoveUntil(mContext!, "/login", (route) => false);
  }

  Future<void> notifyUpdate(User user) async {}
}

// 3. 창고 관리자
final sessionProvider = Provider<SessionStore>((ref) {
  return SessionStore();
});
