import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/move.dart';
import 'package:team_project/_core/constants/size.dart';

class MyCarrotInfo extends StatelessWidget {
  final String nickname;
  final String imageUrl;
  const MyCarrotInfo({
    super.key,
    required this.nickname,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: (AssetImage("assets/$imageUrl")),
        ),
        title: Text(
          "$nickname",
          style: TextStyle(fontSize: fontLarge, fontWeight: FontWeight.bold),
        ),
        trailing: Container(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.grey[300]),
            child: TextButton(
              child: Text(
                "프로필보기",
                style: TextStyle(fontSize: fontMedium, color: Colors.black),
              ),
              onPressed: () {
                Navigator.pushNamed(context, Move.myProfilePage);
              },
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
