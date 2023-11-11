import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/board/detail_page/board_detail_view_model.dart';

class BoardDetailPics extends ConsumerWidget {
  const BoardDetailPics({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BoardDetailModel? model = ref.watch(boardDetailProvider);

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    }
    return SizedBox(
      height: MediaQuery.of(context).size.height - kToolbarHeight - 100,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(defaultPadding),
            child: Center(
              child: Image.network(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                "http://172.20.10.3:8080/${model.board.boardPics?[index].boardPicUrl}",
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
