import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/_core/utils/validator_util.dart';
import 'package:team_project/data/dto/user_request.dart';
import 'package:team_project/data/store/session_store.dart';
import 'package:team_project/ui/widgets/custom_auth_text_form_field.dart';
import 'package:team_project/ui/widgets/custom_elavated_button.dart';

class JoinForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  JoinForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomAuthTextFormField(
            text: "Username",
            obscureText: false,
            funValidator: validateUsername(),
            controller: _username,
          ),
          const SizedBox(height: mediumGap),
          CustomAuthTextFormField(
            text: "Email",
            obscureText: false,
            funValidator: validateEmail(),
            controller: _email,
          ),
          const SizedBox(height: mediumGap),
          CustomAuthTextFormField(
            text: "Password",
            obscureText: true,
            funValidator: validatePassword(),
            controller: _password,
          ),
          const SizedBox(height: mediumGap),
          CustomElevatedButton(
              text: "회원가입",
              funPageRoute: () {
                if (_formKey.currentState!.validate()) {
                  JoinReqDTO joinReqDTO = JoinReqDTO(username: _username.text, password: _password.text, email: _email.text);
                  ref.read(sessionProvider).join(joinReqDTO);
                }
              }),
        ],
      ),
    );
  }
}
