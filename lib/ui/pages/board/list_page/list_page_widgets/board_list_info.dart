import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';

class BoardListInfo extends StatelessWidget {
  final String location;
  final String time;
  final int select;
  const BoardListInfo({
    super.key,
    required this.location,
    required this.time,
    required this.select,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${location} ${time} 조회수 ${select}",
          style: TextStyle(color: kHintColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
