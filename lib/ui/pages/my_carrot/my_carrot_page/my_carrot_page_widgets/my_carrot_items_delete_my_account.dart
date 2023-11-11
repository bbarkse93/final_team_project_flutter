import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/store/session_store.dart';

class MyCarrotItemsDeleteMyAccount extends StatelessWidget {
  final IconData icon;
  final String title;

  MyCarrotItemsDeleteMyAccount({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: Colors.black54,
            ),
            SizedBox(width: xsmallGap),
            Text(
              "$title",
              style: TextStyle(fontSize: fontXlarge),
            ),
          ],
        ),
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Consumer(
              builder: (context, ref, child) {
                return (AlertDialog(
                  content: Padding(
                    padding: const EdgeInsets.all(xsmallGap),
                    child: const Text(
                      '정말로 떠나실꺼에요 😭?\n제가 더 잘할게요!🥕',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: fontLarge),
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('취소',
                          style: TextStyle(
                              color: kDarkColor, fontSize: fontMedium)),
                    ),
                    TextButton(
                      onPressed: () {
                        ref.read(sessionProvider).logout();
                      },
                      child: const Text('삭제하기',
                          style: TextStyle(
                              color: kDarkColor, fontSize: fontMedium)),
                    ),
                  ],
                ));
              },
            );
          },
        );
      },
    );
  }
}
