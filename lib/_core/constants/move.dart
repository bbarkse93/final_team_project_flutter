import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/auth/join_page/join_page.dart';
import 'package:team_project/ui/pages/auth/login_page/login_page.dart';
import 'package:team_project/ui/pages/main_page.dart';
import 'package:team_project/ui/pages/product/detail_page/post_detail_page.dart';
import 'package:team_project/ui/pages/product/list_page/post_list_page.dart';
import 'package:team_project/ui/pages/product/write_page/product_write_page.dart';

import 'package:team_project/ui/pages/splash_page/splash_page.dart';

class Move {
  static String loginPage = "/login";
  static String joinPage = "/join";
  static String splashPage = "/splash";
  static String productListPage = "/post/list";
  static String productDetailPage = "/post/detail";
  static String mainPage = "/main";
  static String productWritePage = "/product/write";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.loginPage: (context) => const LoginPage(),
    Move.joinPage: (context) => const JoinPage(),
    Move.splashPage: (context) => const SplashPage(),
    Move.productListPage: (context) => ProductListPage(),
    Move.productDetailPage: (context) => ProductDetailPage(),
    Move.mainPage: (context) => MainPage(),
    Move.productWritePage: (context) => ProductWritePage(),
  };
}
