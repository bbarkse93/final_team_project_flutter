import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/move.dart';
import 'package:team_project/ui/widgets/buttons/custom_text_button.dart';

class LoginMoveButton extends StatelessWidget {
  const LoginMoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextButton("로그인 페이지로 이동", () {
      Navigator.pushNamed(context, Move.loginPage);
    });
  }
}
