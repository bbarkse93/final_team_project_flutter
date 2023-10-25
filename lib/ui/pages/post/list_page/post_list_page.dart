import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/ui/pages/post/list_page/list_page_widgets/post_build_appbar.dart';
import 'package:team_project/ui/pages/post/list_page/list_page_widgets/post_list_body.dart';
import 'package:team_project/ui/pages/post/list_page/post_list_view_model.dart';
import 'package:team_project/ui/widgets/custom_navigator.dart';

class PostListPage extends ConsumerWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final refreshKey = GlobalKey<RefreshIndicatorState>();

  PostListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // 스낵바, 드로어, 앱바 등을 관리하며, 이러한 요소들을 프로그래밍 방식으로 제어하려면 ScaffoldKey가 필요
      //Scaffold는 앱의 기본 레이아웃 구조를 나타내는 위젯
      key: scaffoldKey,

      drawer: CustomNavigation(scaffoldKey),
      appBar: PostBuildAppBar("부전"),

      body: RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {
          Logger().d("리플래시됨!");
          ref.read(postListProvider.notifier).notifyInit();
        },
        child: PostListBody(),
      ),
    );
  }
}
