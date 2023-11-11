import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/data/model/board.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/board/detail_page/board_detaill_page.dart';
import 'package:team_project/ui/pages/board/list_page/board_list_view_model.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_category_buttons.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_item.dart';

class BoardListBody extends ConsumerWidget {
  BoardListBody({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BoardListModel? model = ref.watch(boardListProvider);
    List<Board> boardList = [];

    if (model != null) {
      boardList = model.boardList;
    }

    return Column(
      children: [
        BoardListCategoryButtons(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.separated(
              itemCount: boardList.length - 1,
              itemBuilder: (context, index) {
                Logger().d(boardList.length);
                return InkWell(
                  onTap: () {
                    // 1. postId를 paramStore 에 저장
                    ParamStore paramStore = ref.read(paramProvider);
                    paramStore.boardDetailId = boardList[index].id;

                    // 2. 화면 이동
                    Navigator.push(context, MaterialPageRoute(builder: (_) => BoardDetailPage()));
                  },
                  child: BoardListItem(boardList[index]),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(thickness: 1, color: kHintColor);
              },
            ),
          ),
        ),
      ],
    );
  }
}
