import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class TextFormFieldTitle extends StatelessWidget {
  final String headName;

  TextFormFieldTitle(this.headName);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: smallGap),
      child: Text(
        "${headName}",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
