import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/board/detail_page/board_detail_view_model.dart';

class BoardDetailTitle extends ConsumerWidget {
  const BoardDetailTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BoardDetailModel? model = ref.watch(boardDetailProvider);

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    }
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Text(
          "${model.board.boardTitle}",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
