import 'package:flutter/material.dart';

import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_more_button.dart';


class DetailTop extends StatelessWidget {
  const DetailTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(

      backgroundColor: Colors.transparent,
      leading: Icon(Icons.arrow_back_ios_new),
      actions: [
        IconButton(icon: Icon(Icons.ios_share), onPressed: () {}),
        SizedBox(width: smallGap),
        DetailMoreButton(),
      ],
      expandedHeight: 300,
      flexibleSpace: Container(
        // ToDo : 제품 이미지 넣기
        child: Image.network("https://picsum.photos/id/100/100",
            fit: BoxFit.cover),
      ),
    );
  }
}
