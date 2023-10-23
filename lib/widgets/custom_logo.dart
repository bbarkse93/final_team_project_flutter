import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  final String title;

  const CustomLogo({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/carrot_image.png",
          height: 100,
          width: 100,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
