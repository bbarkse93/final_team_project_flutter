import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/board/detail_page/board_detail_view_model.dart';

class BoardDetailReply extends ConsumerWidget {
  const BoardDetailReply({
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
        padding: const EdgeInsets.only(bottom: defaultPadding),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(),
              title: Text("${model.board.replies.}"),
              subtitle: Text("중동 인증 · 10시간 전"),
              trailing: Icon(Icons.more_vert),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: defaultPadding),
              child: Text("올봄부터 공사하던데 ㅋ8월말이면 완공된다는 공사가 아직까지군요 ㅠㅠ"),
            )
          ],
        ),
      ),
    );
  }
}
