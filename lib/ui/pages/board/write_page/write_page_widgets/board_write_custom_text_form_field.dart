import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardWriteCustomTextFormField extends StatelessWidget {
  final String hint;
  final funValidator;
  final controller;

  const BoardWriteCustomTextFormField({
    required this.hint,
    required this.funValidator,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: mediumGap, left: smallGap),
      child: TextFormField(
        controller: controller,
        validator: funValidator,
        obscureText: false,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "$hint",
          hintStyle: TextStyle(color: kHintColor),
        ),
      ),
    );
  }
}
