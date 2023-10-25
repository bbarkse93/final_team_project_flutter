import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_bottom_button.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_post_body.dart';
import 'package:team_project/ui/pages/post/detail_page/post_detail_view_model.dart';

class PostDetailPage extends ConsumerWidget {
  const PostDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: RefreshIndicator(
        child: DetailPostBody(),
        onRefresh: () async {
          ref.read(postDetailProvider.notifier).notifyInit();
        },
      ),
      bottomNavigationBar: DetailBottomButton(),
    );
  }
}
