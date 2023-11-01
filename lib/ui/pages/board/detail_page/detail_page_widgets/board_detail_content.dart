import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardDetailContent extends StatelessWidget {
  const BoardDetailContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Text(
          "근데 저녁 산책은 못하겠네요 통행가능 시간이 있더라고요 불꽃놀이 때도 통제한다고 합니다",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
