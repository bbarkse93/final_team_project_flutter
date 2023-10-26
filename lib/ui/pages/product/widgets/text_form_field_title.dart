import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class TextFormFieldTitle extends StatelessWidget {
  const TextFormFieldTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: smallGap),
      child: Text(
        "제목",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
