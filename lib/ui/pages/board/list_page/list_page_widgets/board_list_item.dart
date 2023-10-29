import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_category.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_content.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_info.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_title.dart';

class BoardListItem extends StatelessWidget {
  String? boardImage = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoardListCategory(),
                    SizedBox(height: 15),
                    BoardListTitle(
                        title: "글제목asdasdasdasdasdasdasㅁㄴㅇㄴㅁㅇdsadasdasdasda"),
                    SizedBox(height: 15),
                    BoardListContent(content: "글 내용이요"),
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
                          ? Image.asset(
                              "assets/flower.jpeg",
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
              BoardListInfo(location: "부전", time: "1시간전", select: 3),
              Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined, size: 15),
                  Text("10"),
                  SizedBox(width: 5),
                  Icon(CupertinoIcons.chat_bubble_text, size: 15),
                  Text("10")
                ],
              ),
            ],
          ),
          SizedBox(height: smallGap),
          Divider(thickness: 1, color: kHintColor),
        ],
      ),
    );
  }
}
