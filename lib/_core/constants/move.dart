import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/auth/join_page/join_page.dart';
import 'package:team_project/ui/pages/auth/login_page/login_page.dart';
import 'package:team_project/ui/pages/main_page.dart';
import 'package:team_project/ui/pages/post/list_page/post_list_page.dart';
import 'package:team_project/ui/pages/splash_page/splash_page.dart';

class Move {
  static String loginPage = "/login";
  static String joinPage = "/join";
  static String splashPage = "/splash";
  static String postListPage = "/post/list";
  static String mainPage = "/main";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.loginPage: (context) => const LoginPage(),
    Move.joinPage: (context) => const JoinPage(),
    Move.splashPage: (context) => const SplashPage(),
    Move.postListPage: (context) => PostListPage(),
    Move.mainPage: (context) => MainPage(),
  };
}
