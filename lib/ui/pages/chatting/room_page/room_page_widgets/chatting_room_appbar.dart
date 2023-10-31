import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/chatting/room_page/room_page_widgets/chatting_room_appbar_button.dart';

class ChattingRoomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChattingRoomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(CupertinoIcons.arrow_left),
      ),
      backgroundColor: Colors.transparent,
      title: Text(
        "홍길동",
        style: TextStyle(fontSize: fontLarge),
      ),
      actions: [
        ChattingRoomAppBarButton(CupertinoIcons.ellipsis_vertical),
      ],
    );
  }
}
