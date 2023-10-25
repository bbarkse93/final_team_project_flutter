import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/post/list_page/list_page_widgets/post_list_appbar_button.dart';

class PostListAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String location;

  PostListAppBar(this.location, {Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Text(location),
          const SizedBox(width: 4.0),
          PostListAppBarButton(CupertinoIcons.chevron_down),
        ],
      ),
      actions: [
        PostListAppBarButton(CupertinoIcons.search),
        PostListAppBarButton(CupertinoIcons.list_dash),
        PostListAppBarButton(CupertinoIcons.bell),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.5),
        child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
      ),
    );
  }
}
