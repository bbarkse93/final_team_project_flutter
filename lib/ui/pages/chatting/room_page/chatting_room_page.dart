import 'package:flutter/material.dart';
import 'package:team_project/data/model/chat_room.dart';
import 'package:team_project/ui/pages/chatting/room_page/room_page_widgets/chatting_room_body.dart';

class ChattingRoomPage extends StatelessWidget {
  ChatRoom chatRoom;

  ChattingRoomPage(this.chatRoom, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChattingRoomBody(chatRoom),
    );
  }
}
