import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/login_page.dart';

class Move {
  static String loginPage = "/login";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {Move.loginPage: (p0) => LoginPage()};
}
