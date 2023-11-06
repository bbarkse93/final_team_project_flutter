import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/my_carrot/my_carrot_page/my_carrot_page_widgets/my_carrot_activity_items.dart';

class MyCarrotActivity extends StatelessWidget {
  const MyCarrotActivity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
            top: mediumGap,
            bottom: defaultPadding,
            left: defaultPadding,
            right: defaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyCarrotActivityItems(icon: Icons.receipt, title: "판매 내역"),
            MyCarrotActivityItems(icon: Icons.shopping_bag, title: "구매 내역"),
            MyCarrotActivityItems(icon: Icons.receipt, title: "관심 목록"),
          ],
        ),
      ),
    );
  }
}
