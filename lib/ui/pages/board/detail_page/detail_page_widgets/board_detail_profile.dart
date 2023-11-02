import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/ui/pages/board/detail_page/board_detail_view_model.dart';

class BoardDetailProfile extends ConsumerWidget {
  const BoardDetailProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BoardDetailModel? model = ref.watch(boardDetailProvider);

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    }
    return Container(
      child: ListTile(
        leading: CircleAvatar(),
        title: Text("${model.board.user!.username}"),
        subtitle:
            Text("${model.board.user!.location} 인증 · ${model.board.createdAt}"),
      ),
    );
  }
}
