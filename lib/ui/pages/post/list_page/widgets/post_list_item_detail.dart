import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:team_project/data/mock/post.dart';
import 'package:team_project/ui/pages/post/list_page/widgets/post_build_icons.dart';

class PostListItemDetail extends StatelessWidget {
  final Post post;

  const PostListItemDetail(this.post, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${post.productName}", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.black)),
          const SizedBox(height: 4.0),
          Text("${post.content}"),
          const SizedBox(height: 4.0),
          Text(
            "${numberFormat(post.price)}원",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24.0, color: Colors.black),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                visible: post.commentCount > 0,
                child: PostListBuildIcons(
                  CupertinoIcons.chat_bubble_2,
                  post.commentCount,
                ),
              ),
              const SizedBox(width: 8.0),
              Visibility(
                visible: post.heartCount > 0,
                child: PostListBuildIcons(
                  CupertinoIcons.heart_fill,
                  post.commentCount,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

String numberFormat(int price) {
  final formatter = NumberFormat("#,###");
  return formatter.format(price);
}
