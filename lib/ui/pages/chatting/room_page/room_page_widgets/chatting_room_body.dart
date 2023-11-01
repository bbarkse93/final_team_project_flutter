import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:team_project/ui/pages/chatting/room_page/room_page_widgets/chatting_content.dart';
import 'package:team_project/ui/pages/chatting/room_page/room_page_widgets/chatting_form.dart';
import 'package:team_project/ui/pages/chatting/room_page/room_page_widgets/chatting_icon_button.dart';
import 'package:team_project/ui/pages/chatting/room_page/room_page_widgets/chatting_my_chat.dart';
import 'package:team_project/ui/pages/chatting/room_page/room_page_widgets/chatting_room_appbar.dart';

class ChattingRoomBody extends StatefulWidget {
  ChattingRoomBody({super.key});

  @override
  State<ChattingRoomBody> createState() => _ChattingRoomBodyState();
}

class _ChattingRoomBodyState extends State<ChattingRoomBody> {
  final List<ChattingMyChat> chats = [];

  @override
  Widget build(BuildContext context) {
    double chattingRoomPageHeight = MediaQuery.of(context).size.height * 0.81;

    return Container(
      color: const Color(0xFFb2c7da),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: ChattingRoomAppBar(),
        body: Column(
          children: [
            Expanded(
              child: ChattingContent(chattingRoomPageHeight: chattingRoomPageHeight, chats: chats),
            ),
            Container(
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  const ChattingIconButton(icon: Icon(FontAwesomeIcons.plusSquare)),
                  ChattingForm(
                    onSubmitted: _handleSubmitted,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(text) {
    setState(() {
      chats.add(
        ChattingMyChat(
          text: text,
          time: DateFormat("a K:m").format(new DateTime.now()).replaceAll("AM", "오전").replaceAll("PM", "오후"),
        ),
      );
    });
  }
}
