import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardListTitle extends StatelessWidget {
  final String title;
  const BoardListTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "${title}",
      style: TextStyle(fontSize: fontMedium),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
