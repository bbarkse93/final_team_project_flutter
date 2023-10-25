import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/data/mock/post.dart';
import 'package:team_project/ui/pages/post/list_page/list_page_widgets/post_list_comment_icons.dart';

import '../../../../../_core/constants/size.dart';

class PostListItemDetail extends StatelessWidget {
  final Post post;

  const PostListItemDetail(this.post, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${post.productName}", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0, color: kDarkColor)),
          const SizedBox(height: 4.0),
          Text(
            "${post.content}",
            style: TextStyle(color: kHintColor),
          ),
          const SizedBox(height: 4.0),
          Text(
            "${numberFormat(post.price)}원",
            style: TextStyle(fontSize: fontXlarge, color: Colors.black),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                visible: post.commentCount > 0,
                child: PostListCommentIcons(
                  CupertinoIcons.chat_bubble_2,
                  post.commentCount,
                ),
              ),
              const SizedBox(width: 8.0),
              Visibility(
                visible: post.heartCount > 0,
                child: PostListCommentIcons(
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
