import 'package:flutter/material.dart';

class BoardDetailProfile extends StatelessWidget {
  const BoardDetailProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(),
        title: Text("얍얍"),
        subtitle: Text("중동 인증 · 10시간 전"),
      ),
    );
  }
}
