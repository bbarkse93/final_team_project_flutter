import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/auth/login_page/login_page.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});
// 주석을 남깁니다 .
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedSplashScreen(
        splash: SizedBox(child: Image.asset("assets/carrot_image.png")),
        nextScreen: LoginPage(),
        duration: 3000,
      ),
    );
  }
}
