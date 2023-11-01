import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_category.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_content.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_pics.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_profile.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_reply_area.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_title.dart';

class BoardDetailTotal extends StatelessWidget {
  const BoardDetailTotal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BoardDetailCategory(),
              BoardDetailProfile(),
              BoardDetailTitle(),
              BoardDetailContent(),
              BoardDetailPics(),
              BoardDetailReplyArea(),
            ],
          ),
        ],
      ),
    );
  }
}
