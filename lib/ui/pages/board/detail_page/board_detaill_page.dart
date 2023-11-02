import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_app_bar.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_reply_form.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_total.dart';

class BoardDetailPage extends ConsumerWidget {
  const BoardDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int? clickedBoardDetailId = ref.read(paramProvider).boardDetailId;
    Logger().d("${clickedBoardDetailId}");
    return Scaffold(
      appBar: BoardDetailAppBar(),
      body: Column(
        children: [
          BoardDetailTotal(),
          BoardDetailReplyForm(),
        ],
      ),
    );
  }
}
