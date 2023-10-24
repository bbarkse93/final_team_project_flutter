// 1. 창고 데이터
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/repository/post_repository.dart';
import 'package:team_project/main.dart';

import '../../../../data/mock/post.dart';

// 1. 창고 데이터
class PostListModel {
  List<Post> postList;
  PostListModel(this.postList);
}

// 2. 창고
class PostListViewModel extends StateNotifier<PostListModel?> {
  PostListViewModel(super._state, this.ref);

  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyInit() async {
    print("통신 시작");
    List<Post> postList = await PostRepository().fetchProductList();
    print("통신 끝 ${postList.length}");
    state = PostListModel(postList);
  }
}

// 3. 창고 관리자
final postListProvider = StateNotifierProvider.autoDispose<PostListViewModel, PostListModel?>((ref) {
  return PostListViewModel(null, ref)..notifyInit();
});
