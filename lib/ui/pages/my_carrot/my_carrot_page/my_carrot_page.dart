import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/my_carrot/my_carrot_page/my_carrot_page_widgets/my_carrot_activity.dart';
import 'package:team_project/ui/pages/my_carrot/my_carrot_page/my_carrot_page_widgets/my_carrot_app_bar.dart';
import 'package:team_project/ui/pages/my_carrot/my_carrot_page/my_carrot_page_widgets/my_carrot_info.dart';
import 'package:team_project/ui/pages/my_carrot/my_carrot_page/my_carrot_page_widgets/my_carrot_items.dart';
import 'package:team_project/ui/pages/my_carrot/my_carrot_page/my_carrot_view_model.dart';

class MyCarrotPage extends ConsumerWidget {
  const MyCarrotPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.read(myCarrotProviderProvider);
    return Scaffold(
      appBar: MyCarrotAppBar(),
      body: ListView(
        children: [
          MyCarrotInfo(nickname: "${model?.user.nickname}", imageUrl: "${dio.options.baseUrl}/${model?.user.userPicUrl}"),
          MyCarrotActivity(),
          Divider(thickness: 5),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: 8),
              child: Column(
                children: [
                  MyCarrotItems(icon: Icons.fmd_good, title: "내 동네 설정"),
                  MyCarrotItems(icon: Icons.gps_fixed, title: "동네 인증하기"),
                  MyCarrotItems(icon: Icons.sell, title: "키워드 알림"),
                  MyCarrotItems(icon: Icons.tune, title: "관심 카테고리 설정")
                ],
              ),
            ),
          ),
          Divider(thickness: 5),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: 8),
              child: Column(
                children: [
                  MyCarrotItems(icon: Icons.support_agent, title: "자주 묻는 질문"),
                  MyCarrotItems(icon: Icons.assignment, title: "공지사항"),
                  MyCarrotItems(icon: Icons.info_outline, title: "약관 및 정책"),
                  MyCarrotItems(icon: Icons.logout_outlined, title: "로그아웃"),
                  MyCarrotItems(icon: Icons.person_off, title: "회원탈퇴")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
