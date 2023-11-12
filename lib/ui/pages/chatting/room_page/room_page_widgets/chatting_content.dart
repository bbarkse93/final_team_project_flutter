import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/chatting/room_page/room_page_widgets/chatting_my_chat.dart';
import 'package:team_project/ui/pages/chatting/room_page/room_page_widgets/chatting_other_chat.dart';
import 'package:team_project/ui/pages/chatting/room_page/room_page_widgets/chatting_time_line.dart';

class ChattingContent extends StatelessWidget {
  const ChattingContent({
    super.key,
    required this.chattingRoomPageHeight,
    required this.chats,
  });

  final double chattingRoomPageHeight;
  final List<ChattingMyChat> chats;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: chattingRoomPageHeight,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: smallGap),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: smallGap),
                    child: const ChattingTimeLine(time: "2021년 1월 1일 금요일"),
                  ),
                  const ChattingOtherChat(name: "홍길동", text: "티바로우?", time: "오전 01:10"),
                  // const ChattingMyChat(
                  // text: "ㅇㅋ, 오늘 등신되는 날임 ㄱㄱ",
                  // time: "오전 01:15",
                  // ),
                  ...List.generate(chats.length, (index) => chats[index]),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
