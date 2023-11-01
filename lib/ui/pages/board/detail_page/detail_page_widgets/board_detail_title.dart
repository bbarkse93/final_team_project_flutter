import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardDetailTitle extends StatelessWidget {
  const BoardDetailTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Text(
          "미포 산책로 열리긴 했어요",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
