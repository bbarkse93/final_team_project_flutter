import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_app_bar.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_reply_form.dart';
import 'package:team_project/ui/pages/board/detail_page/detail_page_widgets/board_detail_total.dart';

class BoardDetailPage extends StatelessWidget {
  const BoardDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
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
