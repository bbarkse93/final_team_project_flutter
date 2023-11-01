import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class ChattingRoomAppBarButton extends StatelessWidget {
  final IconData iconName;

  ChattingRoomAppBarButton(this.iconName);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        iconName,
        size: fontLarge,
      ),
      position: PopupMenuPosition.over,
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: "location1",
            child: Text("location1"),
          ),
          const PopupMenuItem<String>(
            value: "location2",
            child: Text("location2"),
          ),
        ];
      },
      onSelected: (String value) {
        // 항목을 선택했을 때 실행되는 코드

        print('Selected: $value');
      },
    );
  }
}
