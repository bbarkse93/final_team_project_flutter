import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/model/product.dart';

class UserProfile extends StatelessWidget {
  final String username;
  final String location;
  final String userPicUrl;
  const UserProfile({
    super.key,
    required this.username,
    required this.location,
    required this.userPicUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("$userPicUrl"),
            ),
            SizedBox(width: smallGap),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$username",
                    style: TextStyle(
                        fontSize: fontMedium, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$location",
                    style: TextStyle(fontSize: fontSmall, color: kHintColor),
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(thickness: 1, color: kHintColor),
      ],
    );
  }
}
