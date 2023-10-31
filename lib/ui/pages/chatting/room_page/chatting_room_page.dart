import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/chatting/room_page/room_page_widgets/chatting_room_body.dart';

class ChattingRoomPage extends StatelessWidget {
  const ChattingRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChattingRoomBody(),
    );
  }
}
