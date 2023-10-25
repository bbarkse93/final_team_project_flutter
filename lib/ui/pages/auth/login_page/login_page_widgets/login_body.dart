import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/auth/login_page/login_page_widgets/join_move_button.dart';
import 'package:team_project/ui/pages/auth/login_page/login_page_widgets/login_form_field.dart';
import 'package:team_project/ui/widgets/custom_logo.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomLogo(title: "Carrot"),
        LoginFormField(),
        JoinMoveButton(),
      ],
    );
  }
}
