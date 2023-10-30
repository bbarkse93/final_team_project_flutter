import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardWriteCustomTextFormField extends StatelessWidget {
  final String hint;
  final bool obscureText;
  final funValidator;
  final TextEditingController controller;
  final String? initValue;

  const BoardWriteCustomTextFormField({
    Key? key,
    required this.hint,
    this.obscureText = false,
    required this.funValidator,
    required this.controller,
    this.initValue = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (initValue != null) {
      controller.text = initValue!;
    }
    return Padding(
      padding: const EdgeInsets.only(top: mediumGap, left: smallGap),
      child: TextFormField(
        controller: controller,
        validator: funValidator,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "$hint",
          hintStyle: TextStyle(color: kHintColor),
        ),
      ),
    );
  }
}
