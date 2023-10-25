import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/move.dart';
import 'package:team_project/ui/widgets/custom_text_button.dart';

class JoinMoveButton extends StatelessWidget {
  const JoinMoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextButton("회원가입 페이지로 이동", () {
      Navigator.pushNamed(context, Move.joinPage);
    });
  }
}
