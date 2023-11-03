import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/ui/pages/board/detail_page/board_detail_view_model.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_category.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_content.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_pics.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_profile.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_reply_area.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_title.dart';

class BoardDetailBody extends StatefulWidget {
  const BoardDetailBody({
    super.key,
  });

  @override
  State<BoardDetailBody> createState() => _BoardDetailBodyState();
}

class _BoardDetailBodyState extends State<BoardDetailBody> {
  @override
  Widget build(BuildContext context) {
    // BoardDetailModel? model = ref.watch(boardDetailProvider);
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
