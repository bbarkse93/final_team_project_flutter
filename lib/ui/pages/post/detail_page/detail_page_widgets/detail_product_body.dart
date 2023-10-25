import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/mock/post.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_product_info.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_user_profile.dart';
import 'package:team_project/ui/pages/post/detail_page/post_detail_view_model.dart';

class DetailProductBody extends ConsumerWidget {
  const DetailProductBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostModel? model = ref.watch(postDetailProvider);

    Post post;
    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            post = model.post;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserProfile(
                    username: "${post.user.username}",
                    location: "${post.user.location}",
                  ),
                  DetailProductInfo(),
                ],
              ),
            );
          },
          childCount: 1,
        ),
      );
    }
  }
}
