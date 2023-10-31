import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/chatting/list_page/list_page_widgets/chatting_list_chatting_user_info.dart';
import 'package:team_project/ui/pages/chatting/list_page/list_page_widgets/chatting_llist_chatting_last_message.dart';

class ChattingListItem extends StatelessWidget {
  const ChattingListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/flower.jpeg"),
                  radius: 25,
                ),
                SizedBox(width: smallGap),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChattingUserInfo(text: "그린이2"),
                      SizedBox(height: 10),
                      ChattingLastMessage(
                          text: "싸게내놓습니다다다다다남암나안ㅁㅇㅁㄴㄹㅁㄴㄹㅁㄴㄹㄹ111"),
                    ],
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: kCarrotColor, shape: BoxShape.circle),
                  child: TextButton(
                    child: Text("1", style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
