import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/model/chat.dart';
import 'package:team_project/data/model/chat_room.dart';
import 'package:team_project/ui/pages/chatting/list_page/list_page_widgets/chatting_list_chatting_user_info.dart';
import 'package:team_project/ui/pages/chatting/list_page/list_page_widgets/chatting_llist_chatting_last_message.dart';
import 'package:team_project/ui/pages/chatting/room_page/chatting_room_view_model.dart';

class ChattingListItem extends StatefulWidget {
  ChatRoom chatRoom;

  ChattingListItem(this.chatRoom, {Key? key}) : super(key: key);

  @override
  State<ChattingListItem> createState() => _ChattingListItemState();
}

class _ChattingListItemState extends State<ChattingListItem> {
  bool isContainerVisible = true;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        // 채팅방의 마지막 대화를 화면에 그려주기 위해 이 데이터가 필요함
        // ========================================================
        ChatModel? model = ref.watch(chatProvider(widget.chatRoom.productId!));
        List<Chat> chatList = [];
        if (model != null) {
          chatList = model.chatList;
        }
        // ========================================================

        return GestureDetector(
          onTap: () {
            setState(() {
              isContainerVisible = !isContainerVisible;
            });
          },
          child: Container(
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
                            ChattingUserInfo(
                                text: "${widget.chatRoom.productName}"),
                            SizedBox(height: 10),
                            if (chatList.isNotEmpty)
                              ChattingLastMessage(
                                  text: "${chatList[0].message}"),
                          ],
                        ),
                      ),
                      if (isContainerVisible)
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: kCarrotColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text("!",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
