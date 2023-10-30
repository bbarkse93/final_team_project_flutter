import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardWriteWarn extends StatelessWidget {
  const BoardWriteWarn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(mediumGap),
      child: Container(
        height: 60,
        color: Colors.grey[200],
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
            child: Text(
              "안내 - 광고/홍보 목적의 글은 올릴 수 없어요.",
              style: TextStyle(fontSize: fontMedium),
              textAlign: TextAlign.center, // 이 부분을 수정
            ),
          ),
        ),
      ),
    );
  }
}
