import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';

class ChattingLastMessage extends StatelessWidget {
  final String text;
  const ChattingLastMessage({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text("${text}",
        style: TextStyle(color: kHintColor), overflow: TextOverflow.ellipsis);
  }
}
