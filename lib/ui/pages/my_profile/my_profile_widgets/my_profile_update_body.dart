import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/my_profile/my_profile_widgets/user_change_form.dart';
import 'package:team_project/ui/pages/my_profile/my_profile_widgets/user_nickname.dart';
import 'package:team_project/ui/pages/my_profile/my_profile_widgets/user_password.dart';
import 'package:team_project/ui/pages/my_profile/my_profile_widgets/user_password_confirm.dart';
import 'package:team_project/ui/pages/my_profile/my_profile_widgets/user_pic.dart';

class MyProfileUpdateBody extends StatelessWidget {
  const MyProfileUpdateBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          UserChangeForm(),
          Consumer(
            builder: (context, ref, child) {
              return Padding(
                padding: EdgeInsets.only(top: smallGap),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Color.fromRGBO(255, 126, 0, 1),
                  ),
                  child: Text(
                    '변경하기',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
