import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardDetailReplyCount extends StatelessWidget {
  const BoardDetailReplyCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("댓글 0"),
          Row(
            children: [
              Text("등록순"),
              SizedBox(width: smallGap),
              Text("최신순"),
            ],
          )
        ],
      ),
    );
  }
}
