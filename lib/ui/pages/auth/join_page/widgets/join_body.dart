import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/auth/join_page/widgets/join_form_field.dart';
import 'package:team_project/ui/pages/auth/join_page/widgets/login_move_button.dart';
import 'package:team_project/ui/widgets/custom_logo.dart';

class JoinBody extends StatelessWidget {
  const JoinBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomLogo(title: "Carrot"),
        JoinFormField(),
        LoginMoveButton(),
      ],
    );
  }
}
