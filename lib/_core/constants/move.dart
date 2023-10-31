import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/auth/join_page/join_page.dart';
import 'package:team_project/ui/pages/auth/login_page/login_page.dart';
import 'package:team_project/ui/pages/board/detail_page/board_detaill_page.dart';
import 'package:team_project/ui/pages/board/list_page/board_list_page.dart';
import 'package:team_project/ui/pages/board/write_page/board_write_page.dart';
import 'package:team_project/ui/pages/chatting/list_page/list_page_widgets/chatting_list_page.dart';
import 'package:team_project/ui/pages/main_page.dart';
import 'package:team_project/ui/pages/product/detail_page/product_detail_page.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_page.dart';
import 'package:team_project/ui/pages/product/write_page/product_write_page.dart';
import 'package:team_project/ui/pages/splash_page/splash_page.dart';

class Move {
  static String loginPage = "/login";
  static String joinPage = "/join";
  static String splashPage = "/splash";
  static String productListPage = "/post/list";
  static String boardListPage = "/board/list";
  static String chattingListPage = "/chat/list";
  static String productDetailPage = "/post/detail";
  static String mainPage = "/main";
  static String productWritePage = "/product/write";
  static String boardWritePage = "/board/write";
  static String boardDetailPage = "/board/detail";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.loginPage: (context) => const LoginPage(),
    Move.joinPage: (context) => const JoinPage(),
    Move.splashPage: (context) => const SplashPage(),
    Move.productListPage: (context) => ProductListPage(),
    Move.boardListPage: (context) => BoardListPage(),
    Move.chattingListPage: (context) => ChattingListPage(),
    Move.productDetailPage: (context) => ProductDetailPage(),
    Move.mainPage: (context) => MainPage(),
    Move.productWritePage: (context) => ProductWritePage(),
    Move.boardWritePage: (context) => BoardWritePage(),
    Move.boardDetailPage: (context) => BoardDetailPage()
  };
}
