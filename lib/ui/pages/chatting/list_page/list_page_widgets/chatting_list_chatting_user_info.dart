import 'package:flutter/material.dart';

class ChattingUserInfo extends StatelessWidget {
  final String text;
  const ChattingUserInfo({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text("${text}");
  }
}
