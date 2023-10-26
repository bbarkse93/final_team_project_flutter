import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class TextFormFieldTitle extends StatelessWidget {
  final text;
  const TextFormFieldTitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: smallGap),
      child: Text(
        "$text",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
