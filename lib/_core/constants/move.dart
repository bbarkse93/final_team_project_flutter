import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/auth/join_page/join_page.dart';
import 'package:team_project/ui/pages/auth/login_page/login_page.dart';
import 'package:team_project/ui/pages/board/detail_page/board_detaill_page.dart';
import 'package:team_project/ui/pages/board/list_page/board_list_page.dart';
import 'package:team_project/ui/pages/board/write_page/board_write_page.dart';
import 'package:team_project/ui/pages/chatting/list_page/list_page_widgets/chatting_list_page.dart';
import 'package:team_project/ui/pages/chatting/room_page/chatting_room_page.dart';
import 'package:team_project/ui/pages/main_page.dart';
import 'package:team_project/ui/pages/my_carrot/my_carrot_page/my_carrot_page.dart';
import 'package:team_project/ui/pages/my_location/location_select_page/location_select_page.dart';
import 'package:team_project/ui/pages/my_profile/my_profile_page.dart';
import 'package:team_project/ui/pages/product/detail_page/product_detail_page.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_page.dart';
import 'package:team_project/ui/pages/product/update_page/product_update_page.dart';
import 'package:team_project/ui/pages/product/write_page/product_write_page.dart';
import 'package:team_project/ui/pages/splash/splash_page.dart';

class Move {
  // 바텀 네비게이터
  static String mainPage = "/main";

  // 로그인 관련
  static String splashPage = "/splash";
  static String loginPage = "/login";
  static String joinPage = "/join";
  static String locationSelectPage = "/location/select";
  static String myCarrotPage = "/mycarrot";

  // 상품 관련
  static String productListPage = "/product/list";
  static String productDetailPage = "/product/detail/";
  static String productWritePage = "/product/write";
  static String productUpdatePage = "/product/update";

  // 게시물 관련 (동네생활)
  static String boardListPage = "/board/list";
  static String boardWritePage = "/board/write";
  static String boardDetailPage = "/boards/detail";

  // 채팅관련
  static String chattingListPage = "/chat/list";
  static String chattingRoomPage = "/chat/room";

  //나의 정보
  static String myProfilePage = "/carrot/profile";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    // 네비 관련
    Move.mainPage: (context) => MainPage(),

    // 로그인 관련
    Move.splashPage: (context) => const SplashPage(),
    Move.loginPage: (context) => const LoginPage(),
    Move.joinPage: (context) => const JoinPage(),
    Move.locationSelectPage: (context) => const LocationSelectPage(),
    Move.myCarrotPage: (context) => const MyCarrotPage(),

    // 상품 관련
    Move.productListPage: (context) => ProductListPage(),
    Move.productDetailPage: (context) {
      final product = ParamStore().product;

      if (product != null) {
        return ProductDetailPage(product);
      } else {
        return Scaffold(
          body: Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                "What is problem",
                style: TextStyle(fontSize: fontLarge, color: Colors.white),
              ),
            ),
          ),
        );
      }
    },
    Move.productUpdatePage: (context) => ProductUpdatePage(),

    // 게시물 관련
    Move.boardListPage: (context) => BoardListPage(),
    Move.boardWritePage: (context) => BoardWritePage(),
    Move.boardDetailPage: (context) => BoardDetailPage(),

    // 채팅 관련
    Move.chattingListPage: (context) => ChattingListPage(),
    Move.chattingRoomPage: (context) => ChattingRoomPage(),

    // 나의정보관련
    Move.myProfilePage: (context) => MyProfilePage(),
  };
}
