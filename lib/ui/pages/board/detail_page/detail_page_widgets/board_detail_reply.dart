import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/model/replies.dart';
import 'package:team_project/ui/pages/board/detail_page/board_detail_view_model.dart';

class BoardDetailReply extends ConsumerWidget {
  const BoardDetailReply({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BoardDetailModel? model = ref.watch(boardDetailProvider);

    if (model == null || model.board.replies == null) {
      // model 또는 model.board.replies가 null인 경우 에러 핸들링
      return Center(child: CircularProgressIndicator());
    }

    List<Replies> ReplyList = model.board.replies?.map((e) => e).toList() ?? [];

    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: defaultPadding),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: ReplyList.length,
              itemBuilder: (context, index) {
                Replies replies = ReplyList[index];
                return ListTile(
                  leading: CircleAvatar(),
                  title: replies.user?.nickname != null
                      ? Text(
                          "${replies.user!.nickname}") // username이 null이 아닌 경우에만 출력
                      : null, // username이 null인 경우 ListTile에서 렌더링하지 않음
                  subtitle: Text("${replies.comment}"),
                  trailing: Icon(Icons.more_vert),
                  onTap: () {
                    // ListTile을 탭했을 때 수행할 작업 추가 가능
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
