import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/mock/post.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_product_info.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_top.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_user_profile.dart';
import 'package:team_project/ui/pages/post/detail_page/post_detail_view_model.dart';

class DetailPostBody extends ConsumerWidget {
  const DetailPostBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostModel? model = ref.watch(postDetailProvider);
    if (model == null) {
      return Center(child: CircularProgressIndicator());
    }

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
                    child: UserProfile(
                        username: "${post.user.username}",
                        location: "${post.user.location}"),
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
