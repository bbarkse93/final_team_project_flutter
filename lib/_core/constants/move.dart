import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/auth/join_page/join_page.dart';
import 'package:team_project/ui/pages/auth/login_page/login_page.dart';
import 'package:team_project/ui/pages/board/list_page/board_list_page.dart';
import 'package:team_project/ui/pages/board/write_page/board_write_page.dart';
import 'package:team_project/ui/pages/chatting/list_page/list_page_widgets/chatting_list_page.dart';
import 'package:team_project/ui/pages/chatting/room_page/chatting_room_page.dart';
import 'package:team_project/ui/pages/main_page.dart';
import 'package:team_project/ui/pages/product/detail_page/product_detail_page.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_page.dart';
import 'package:team_project/ui/pages/product/write_page/product_write_page.dart';
import 'package:team_project/ui/pages/splash_page/splash_page.dart';

class Move {
  // 바텀 네비게이터
  static String mainPage = "/main";

  // 로그인 관련
  static String splashPage = "/splash";
  static String loginPage = "/login";
  static String joinPage = "/join";

  // 상품 관련
  static String productListPage = "/post/list";
  static String productDetailPage = "/post/detail";
  static String productWritePage = "/product/write";

  // 게시물 관련 (동네생활)
  static String boardListPage = "/board/list";
  static String boardWritePage = "/board/write";

  // 채팅관련
  static String chattingListPage = "/chat/list";
  static String chattingRoomPage = "/chat/room";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    // 네비 관련
    Move.mainPage: (context) => MainPage(),

    // 로그인 관련
    Move.splashPage: (context) => const SplashPage(),
    Move.loginPage: (context) => const LoginPage(),
    Move.joinPage: (context) => const JoinPage(),

    // 상품 관련
    Move.productListPage: (context) => ProductListPage(),
    Move.productDetailPage: (context) => ProductDetailPage(),
    Move.productWritePage: (context) => ProductWritePage(),

    // 게시물 관련
    Move.boardListPage: (context) => BoardListPage(),
    Move.boardWritePage: (context) => BoardWritePage(),

    // 채팅 관련
    Move.chattingListPage: (context) => ChattingListPage(),
    Move.chattingRoomPage: (context) => ChattingRoomPage(),
  };
}
