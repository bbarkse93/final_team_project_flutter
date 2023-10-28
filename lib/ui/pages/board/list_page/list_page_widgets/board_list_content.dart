import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';

class BoardListContent extends StatelessWidget {
  final String content;
  const BoardListContent({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Text("${content}",
        style: TextStyle(color: kHintColor),
        maxLines: 1,
        overflow: TextOverflow.ellipsis);
  }
}
