import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class MyCarrotItems extends StatelessWidget {
  final IconData icon;
  final String title;
  MyCarrotItems({
    super.key,
    required this.icon,
    required this.title,
  });

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
      onTap: () {},
    );
  }
}
