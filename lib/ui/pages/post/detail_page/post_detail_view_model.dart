import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/repository/post_repository.dart';
import 'package:team_project/main.dart';

import '../../../../data/mock/post.dart';

// 1. 창고 데이터
class PostModel {
  Post post;
  PostModel(this.post);
}

// 2. 창고
class PostDetailViewModel extends StateNotifier<PostModel?> {
  PostDetailViewModel(super._state, this.ref);

  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyInit() async {
    print("통신 테스트1");
    Post post = await PostRepository().fetchProductDetail();
    print("위치테스트2${post}");
    state = PostModel(post);
  }
}

// 3. 창고 관리자
final postDetailProvider = StateNotifierProvider.autoDispose<PostDetailViewModel, PostModel?>((ref) {
  return PostDetailViewModel(null, ref)..notifyInit();
});
