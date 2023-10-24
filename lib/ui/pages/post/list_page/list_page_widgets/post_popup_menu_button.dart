import 'package:flutter/material.dart';

class PostPopupMenuButton extends StatelessWidget {
  final IconData iconName;

  PostPopupMenuButton(this.iconName);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        iconName,
        size: 15.0,
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
          const PopupMenuItem<String>(
            value: "location3",
            child: Text("location3"),
          )
        ];
      },
      onSelected: (String value) {
        // 항목을 선택했을 때 실행되는 코드

        print('Selected: $value');
      },
    );
  }
}
