import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class UserProfile extends StatelessWidget {
  final String username;
  final String location;
  const UserProfile({
    super.key,
    required this.username,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(),
            SizedBox(width: smallGap),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${username}",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text("${location}",
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
        Divider(thickness: 1, color: Colors.grey),
      ],
    );
  }
}
