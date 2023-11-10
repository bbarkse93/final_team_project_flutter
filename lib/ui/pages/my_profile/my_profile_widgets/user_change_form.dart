import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/my_profile/my_profile_widgets/user_nickname.dart';
import 'package:team_project/ui/pages/my_profile/my_profile_widgets/user_password.dart';
import 'package:team_project/ui/pages/my_profile/my_profile_widgets/user_password_confirm.dart';
import 'package:team_project/ui/pages/my_profile/my_profile_widgets/user_pic.dart';

class UserChangeForm extends StatelessWidget {
  const UserChangeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        UserPic(),
        SizedBox(height: 40),
        UserNickname(),
        UserPassword(),
        UserPasswordConfirm(),
        SizedBox(height: 40),
      ],
    );
  }
}
