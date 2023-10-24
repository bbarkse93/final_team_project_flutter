import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/mock/post.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_more_button.dart';
import 'package:team_project/ui/pages/post/detail_page/post_detail_view_model.dart';

class DetailTop extends ConsumerWidget {
  const DetailTop({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostModel? model = ref.watch(postDetailProvider);
    if (model == null) {
      return Center(child: CircularProgressIndicator());
    }
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
        child: Image.network("${post.productPicUrl}", fit: BoxFit.cover),
      ),
    );
  }
}
