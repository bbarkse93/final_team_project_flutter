import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';

class MyCarrotActivityItems extends StatelessWidget {
  final IconData icon;
  final String title;

  MyCarrotActivityItems({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          child: Icon(icon, size: 30, color: kCarrotColor),
          decoration: BoxDecoration(
            // color: Color.fromRGBO(255, 152, 0, 0.5),
            color: Color.fromRGBO(255, 126, 0, 0.5),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        SizedBox(height: smallGap),
        Text(
          "$title",
          style: TextStyle(fontSize: fontLarge),
        )
      ],
    );
  }
}
