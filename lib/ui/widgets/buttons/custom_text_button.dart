import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback function;

  const CustomTextButton(this.text, this.function, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      child: Text(text,
          style: const TextStyle(
              color: kDarkColor, decoration: TextDecoration.underline)),
    );
  }
}
