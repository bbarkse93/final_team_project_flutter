import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class ChattingIconButton extends StatelessWidget {
  const ChattingIconButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.symmetric(horizontal: mediumGap),
      icon: icon,
      iconSize: 25,
      onPressed: () {},
    );
  }
}
