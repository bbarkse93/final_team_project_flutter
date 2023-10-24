import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_product_info.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_top.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_user_profile.dart';

class PostDetailBody extends StatelessWidget {
  const PostDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        DetailTop(),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: UserProfile(username: "쌀", location: "부전"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: DetailProductInfo(),
                  ),
                ],
              );
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }
}
