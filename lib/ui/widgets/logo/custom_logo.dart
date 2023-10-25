import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class CustomLogo extends StatelessWidget {
  final String title;

  const CustomLogo({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: xlargeGap, bottom: largeGap),
      child: Column(
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
      ),
    );
  }
}
