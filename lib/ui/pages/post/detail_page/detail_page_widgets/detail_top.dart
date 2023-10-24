import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class DetailTop extends StatelessWidget {
  const DetailTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      //ToDo : 제품사진 받으면 주석 풀기
      // backgroundColor: Colors.transparent,
      leading: Icon(Icons.arrow_back_ios_new),
      actions: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(Icons.ios_share),
              SizedBox(width: smallGap),
              Icon(Icons.more_vert),
            ],
          ),
        ),
      ],
      expandedHeight: 300,
      flexibleSpace: Container(
          // ToDo : 제품 이미지 넣기
          // child: Image.network(),
          ),
    );
  }
}
