import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_appbar.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_body.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_category_buttons.dart';

class BoardListPage extends StatelessWidget {
  const BoardListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BoardListAppBar("부전"),
      body: RefreshIndicator(
        child: BoardListBody(),
        onRefresh: () async {},
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kCarrotColor,
        onPressed: () {},
        label: Text("글 쓰기"),
      ),
    );
  }
}
