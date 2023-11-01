import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      actions: [
        Icon(CupertinoIcons.bell_slash, color: Colors.black),
        SizedBox(width: smallGap),
        Icon(Icons.share_outlined, color: Colors.black),
        PopupMenuButton(
          color: Colors.black,
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Column(
                  children: [
                    TextButton(
                        child: Text("수정하기",
                            style: TextStyle(
                                fontSize: fontMedium, color: kDarkColor)),
                        onPressed: () {}),
                    TextButton(
                        child: Text("삭제하기",
                            style: TextStyle(
                                fontSize: fontMedium, color: kDarkColor)),
                        onPressed: () {}),
                  ],
                ),
              ),
            ];
          },
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
