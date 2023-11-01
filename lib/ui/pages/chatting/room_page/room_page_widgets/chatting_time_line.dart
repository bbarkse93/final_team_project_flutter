import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class ChattingTimeLine extends StatelessWidget {
  final String time;
  const ChattingTimeLine({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(smallGap),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFF9cafbe),
      ),
      child: Text(
        time,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
