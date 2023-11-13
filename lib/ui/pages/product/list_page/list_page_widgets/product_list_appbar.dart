import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/ui/pages/product/list_page/list_page_widgets/product_list_appbar_button.dart';

class ProductListAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String location;

  ProductListAppBar(this.location, {Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Text(location),
          const SizedBox(width: 4.0),
          ProductListAppBarButton(CupertinoIcons.chevron_down),
        ],
      ),
      actions: [
        ProductListAppBarButton(CupertinoIcons.search),
        ProductListAppBarButton(CupertinoIcons.list_dash),
        ProductListAppBarButton(CupertinoIcons.bell),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.5),
        child: Divider(thickness: 0.5, height: 0.5, color: kHintColor),
      ),
    );
  }
}
