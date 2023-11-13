import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/dto/user_request.dart';
import 'package:team_project/ui/pages/my_profile/my_profile_widgets/user_nickname.dart';
import 'package:team_project/ui/pages/my_profile/my_profile_widgets/user_password.dart';
import 'package:team_project/ui/pages/my_profile/my_profile_widgets/user_password_confirm.dart';
import 'package:team_project/ui/pages/my_profile/my_profile_widgets/user_pic.dart';

class UserChangeForm extends StatelessWidget {
  UserChangeForm({super.key});

  final formKey = GlobalKey<FormState>();
  final userPicUrl = ValueNotifier<String?>(null);
  final nickname = TextEditingController();
  final password = TextEditingController();
  final passwordConfirm = TextEditingController();

  void submit(WidgetRef ref) {
    if (formKey.currentState!.validate()) {
      UserChangeDTO userChangeDTO = UserChangeDTO(
        userPicUrl.value,
        nickname.text,
        password.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: 40),
          UserPic(
            userPicUrl: userPicUrl,
            onImageSelected: (imageUrl) {
              userPicUrl.value = imageUrl;
            },
          ),
          SizedBox(height: 40),
          UserNickname(controller: nickname),
          UserPassword(controller: password),
          UserPasswordConfirm(controller: passwordConfirm),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
