import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/move.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/my_carrot/my_carrot_page/my_carrot_page_widgets/my_carrot_items_agree_page.dart';

class MyCarrotItemsAgree extends StatelessWidget {
  IconData icon;
  String title;
  MyCarrotItemsAgree({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: Colors.black54,
            ),
            SizedBox(width: xsmallGap),
            Text(
              "$title",
              style: TextStyle(fontSize: fontXlarge),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, Move.myCarrotAgreePage);
      },
    );
  }
}
