import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/_core/utils/validator_util.dart';
import 'package:team_project/data/dto/user_request.dart';
import 'package:team_project/data/store/session_store.dart';
import 'package:team_project/widgets/custom_auth_text_form_field.dart';
import 'package:team_project/widgets/custom_elavated_button.dart';

class LoginForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>(); // 바텀네비게이션바
  final _username = TextEditingController();
  final _password = TextEditingController();

  LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Column(
            children: [
              CustomAuthTextFormField(
                text: "Username",
                obscureText: false,
                funValidator: validateUsername(),
                controller: _username,
              ),
              SizedBox(height: mediumGap),
              CustomAuthTextFormField(
                text: "Password",
                obscureText: true,
                funValidator: validatePassword(),
                controller: _password,
              ),
            ],
          ),
          SizedBox(height: largeGap),
          CustomElevatedButton(
              text: "로그인",
              funPageRoute: () {
                if (_formKey.currentState!.validate()) {
                  LoginReqDTO loginReqDTO = LoginReqDTO(username: _username.text, password: _password.text);
                  ref.read(sessionProvider).login(loginReqDTO);
                }
              })
        ],
      ),
    );
  }
}
