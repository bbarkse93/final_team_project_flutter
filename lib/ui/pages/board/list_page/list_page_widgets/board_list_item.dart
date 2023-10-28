import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_category.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_content.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_info.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_title.dart';

class BoardListItem extends StatelessWidget {
  const BoardListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                // TODO : 컨테이너랑 옐로 지우기
                child: Container(
                  color: Colors.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoardListCategory(),
                      SizedBox(height: smallGap),
                      BoardListTitle(title: "글제목"),
                      SizedBox(height: smallGap),
                      BoardListContent(content: "글 내용이요"),
                      SizedBox(height: smallGap),
                      BoardListInfo(
                        location: "부전",
                        time: "1시간전",
                        select: 3,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/flower.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            size: 20,
                          ),
                          SizedBox(width: 30),
                          Icon(
                            CupertinoIcons.chat_bubble_text,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
