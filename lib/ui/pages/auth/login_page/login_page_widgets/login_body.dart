import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/move.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/auth/login_page/login_page_widgets/login_form.dart';
import 'package:team_project/widgets/custom_logo.dart';
import 'package:team_project/widgets/custom_text_button.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CustomLogo(title: "Login"),
              const SizedBox(height: largeGap),
              LoginForm(),
              CustomTextButton(
                "회원가입 페이지로 이동",
                () {
                  Navigator.pushNamed(context, Move.joinPage);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
