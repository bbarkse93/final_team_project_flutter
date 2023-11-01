import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_reply.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_reply_count.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_reply_report.dart';

class BoardDetailReplyArea extends StatelessWidget {
  const BoardDetailReplyArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(thickness: smallGap),
        BoardDetailReplyReport(),
        BoardDetailReplyCount(),
        BoardDetailReply(),
      ],
    );
  }
}
