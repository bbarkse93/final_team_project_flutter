import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardDetailReply extends StatelessWidget {
  const BoardDetailReply({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: defaultPadding),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(),
              title: Text("얍얍"),
              subtitle: Text("중동 인증 · 10시간 전"),
              trailing: Icon(Icons.more_vert),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: defaultPadding),
              child: Text("올봄부터 공사하던데 ㅋ8월말이면 완공된다는 공사가 아직까지군요 ㅠㅠ"),
            )
          ],
        ),
      ),
    );
  }
}
