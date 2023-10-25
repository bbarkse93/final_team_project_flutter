import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/ui/pages/post/detail_page/detail_page_widgets/detail_appbar_button.dart';
import 'package:team_project/ui/pages/post/detail_page/post_detail_view_model.dart';

class DetailProductHeader extends ConsumerWidget {
  const DetailProductHeader({
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
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        DetailAppbarButton(),
      ],
      expandedHeight: 300,
      flexibleSpace: Container(
        child: Image.asset("assets/carrot_image.png", fit: BoxFit.cover),
      ),
    );
  }
}
