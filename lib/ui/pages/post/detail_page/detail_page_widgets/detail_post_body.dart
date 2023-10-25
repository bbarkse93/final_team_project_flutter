import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/mock/post.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_product_body.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_product_header.dart';
import 'package:team_project/ui/pages/post/detail_page/post_detail_view_model.dart';

class DetailPostBody extends ConsumerWidget {
  const DetailPostBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostModel? model = ref.watch(postDetailProvider);

    Post post;

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return CustomScrollView(
        slivers: [
          DetailProductHeader(),
          DetailProductBody(),
        ],
      );
    }
  }
}
