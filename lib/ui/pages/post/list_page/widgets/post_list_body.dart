import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/mock/post.dart';
import 'package:team_project/ui/pages/post/list_page/post_list_view_model.dart';
import 'package:team_project/ui/pages/post/list_page/widgets/post_list_item.dart';

class PostListBody extends ConsumerWidget {
  const PostListBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // WidgetRef - 통신을하겠다라는 의미임, 정확히는 창고관리자에게 접근하겠다.
    PostListModel? model = ref.watch(postListProvider);
    List<Post> postList = [];
    if (model == null) {
      return Center(child: CircularProgressIndicator());
    }

    if (model != null) {
      postList = model.postList;
    }

    return ListView.separated(
      itemCount: postList.length,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () {
              // 1. postId를 paramStore 에 저장
              // ParamStore paramStore = ref.read(paramProvider);
              // paramStore.postDetailId = posts[index].id;

              // 2. 화면 이동
              // Navigator.push(context, MaterialPageRoute(builder: (_) => PostDetailPage()));
            },
            child: PostListItem(postList[index]));
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }
}
