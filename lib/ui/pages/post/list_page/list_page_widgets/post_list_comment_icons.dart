import 'package:flutter/material.dart';

class PostListCommentIcons extends StatelessWidget {
  final IconData iconData;
  final int count;

  const PostListCommentIcons(this.iconData, this.count, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, size: 14.0),
        const SizedBox(width: 4.0),
        Text('$count'),
      ],
    );
  }
}
