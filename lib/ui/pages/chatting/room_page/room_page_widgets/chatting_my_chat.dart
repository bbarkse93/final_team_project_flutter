import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';

class ChattingMyChat extends StatelessWidget {
  ChattingMyChat({
    Key? key,
    required this.text,
    required this.time,
  }) : super(key: key);

  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: smallGap),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("${time}", style: const TextStyle(fontSize: fontSmall)),
          const SizedBox(width: 5),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(smallGap),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(mediumGap),
                color: kCarrotColor,
              ),
              child: Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
