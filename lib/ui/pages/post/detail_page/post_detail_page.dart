import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_bottom_button.dart';
import 'package:team_project/ui/pages/post/detail_page/post_detail_body.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PostDetailBody(),
      bottomNavigationBar: DetailBottomButton(),
    );
  }
}