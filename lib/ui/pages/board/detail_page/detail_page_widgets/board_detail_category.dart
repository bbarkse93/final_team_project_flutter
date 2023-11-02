import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/model/board.dart';
import 'package:team_project/ui/pages/board/detail_page/board_detail_view_model.dart';

class BoardDetailCategory extends ConsumerWidget {
  const BoardDetailCategory({
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
        padding: const EdgeInsets.only(left: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 70,
                  child: Row(
                    children: [
                      Icon(Icons.library_books_sharp,
                          size: fontSmall, color: Colors.black54),
                      SizedBox(
                        width: xsmallGap,
                      ),
                      Text("${model.board.boardCategory}",
                          style: TextStyle(
                              fontSize: fontSmall, color: Colors.black54)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
