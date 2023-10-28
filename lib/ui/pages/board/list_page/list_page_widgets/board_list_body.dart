import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_category_buttons.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_item.dart';

class BoardListBody extends StatelessWidget {
  const BoardListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BoardListCategoryButtons(),
        BoardListItem(),
      ],
    );
  }
}
