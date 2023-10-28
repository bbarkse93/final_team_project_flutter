import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_appbar_button.dart';
import 'package:team_project/ui/pages/product/list_page/list_page_widgets/product_list_appbar_button.dart';

class BoardListAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String location;

  BoardListAppBar(this.location, {Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Text(location),
          const SizedBox(width: 4.0),
          BoardListAppBarButton(CupertinoIcons.chevron_down),
        ],
      ),
      actions: [
        BoardListAppBarButton(CupertinoIcons.search),
        BoardListAppBarButton(CupertinoIcons.bell),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.5),
        child: Divider(thickness: 0.5, height: 0.5, color: kHintColor),
      ),
    );
  }
}
