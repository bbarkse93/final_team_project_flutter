import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';

class ChattingOtherChat extends StatelessWidget {
  const ChattingOtherChat({
    Key? key,
    required this.name,
    required this.text,
    required this.time,
  }) : super(key: key);

  final String name;
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: mediumGap),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://pbs.twimg.com/profile_images/502155195124436993/7oj7J64O_400x400.jpeg"),
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: xsmallGap),
                  child: Text(name),
                ),
                Container(
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.black),
                  ),
                  padding: const EdgeInsets.all(smallGap),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(mediumGap),
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              time,
              style: const TextStyle(fontSize: fontSmall),
            ),
          ),
        ],
      ),
    );
  }
}
