import 'package:flutter/material.dart';
import 'package:team_project/data/model/post.dart';

class PostListItemDetail extends StatelessWidget {
  final Post post;

  const PostListItemDetail(this.post, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(post.title, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.black)),
          const SizedBox(height: 4.0),
          Text("${post.content}"),
          const SizedBox(height: 4.0),
        ],
      ),
    );
  }
}
