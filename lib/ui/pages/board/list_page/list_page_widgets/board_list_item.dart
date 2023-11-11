import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/mock/board.dart';
import 'package:team_project/data/model/board.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_category.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_content.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_info.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_title.dart';

class BoardListItem extends StatelessWidget {
  final Board board;
  BoardListItem(this.board);

  String? boardImage = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  BoardListCategory(category: "${board.boardCategory}"),
                  SizedBox(height: 15),
                  BoardListTitle(title: "${board.boardTitle}"),
                  SizedBox(height: 15),
                  BoardListContent(content: "${board.boardContent}"),
                  SizedBox(height: 15),
                ],
              ),
            ),
            Column(
              children: [
                Visibility(
                  visible: boardImage != null,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: boardImage != null
                        ? Image.network(
                            "https://picsum.photos/200/300",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          )
                        : null, // 또는 다른 위젯을 여기에 배치
                  ),
                ),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: BoardListInfo(
                location: "${board.user!.location}",
                time: "",
                select: 3,
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Visibility(
                      visible: mockBoard.fingerGood != 0,
                      child: Row(
                        children: [
                          Icon(Icons.thumb_up_alt_outlined, size: 15),
                          Text("${mockBoard.fingerGood}"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Visibility(
                      visible: mockBoard.replyCount != 0,
                      child: Row(
                        children: [
                          Icon(CupertinoIcons.chat_bubble_text, size: 15),
                          Text("${mockBoard.replyCount}")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: smallGap),
        // Divider(thickness: 1, color: kHintColor),
      ],
    );
  }
}
