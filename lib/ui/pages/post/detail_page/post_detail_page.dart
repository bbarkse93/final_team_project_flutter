import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_bottom_button.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_post_body.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailPostBody(),
      bottomNavigationBar: DetailBottomButton(),
    );
  }
}
