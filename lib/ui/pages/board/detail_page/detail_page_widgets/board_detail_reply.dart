import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/model/reply.dart';
import 'package:team_project/ui/pages/board/detail_page/board_detail_view_model.dart';

class BoardDetailReply extends ConsumerWidget {
  const BoardDetailReply({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BoardDetailModel? model = ref.watch(boardDetailProvider);

    Logger().d("너가 널이야 ? model : ${model.toString()}");
    Logger().d("너가 널이야 ? model?.board.replies : ${model?.board.replies}");

    if (model == null || model.board.replies == null) {
      // model 또는 model.board.replies가 null인 경우 에러 핸들링
      return Center(child: CircularProgressIndicator());
    }

    List<Reply> ReplyList = model.board.replies?.map((e) => e).toList() ?? [];

    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: defaultPadding),
        child: Column(
          children: [
            ListView.builder(
              itemCount: ReplyList.length,
              itemBuilder: (context, index) {
                Reply reply = ReplyList[index]; // 현재 인덱스의 Reply 객체 가져오기
                return ListTile(
                  leading: CircleAvatar(),
                  title: Text("${reply.user!.username}"), // 작성자 표시
                  subtitle: Text("${reply.replyCreatedAt}"), // 타임스탬프 표시
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
