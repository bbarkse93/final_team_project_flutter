import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/auth/login_page/login_page_widgets/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }
}
