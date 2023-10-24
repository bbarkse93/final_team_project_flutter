// 1. 창고 데이터
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/model/post.dart';
import 'package:team_project/data/repository/post_repository.dart';
import 'package:team_project/data/store/session_store.dart';
import 'package:team_project/main.dart';

class PostListModel {
  List<Post> posts;
  PostListModel(this.posts);
}

// 2. 창고
class PostListViewModel extends StateNotifier<PostListModel?> {
  PostListViewModel(super._state, this.ref);

  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyInit() async {
    // jwt 가져오기
    SessionStore sessionStore = ref.read(sessionProvider);

    ResponseDTO responseDTO = await PostRepository().fetchPostList(sessionStore.jwt!);

    state = PostListModel(responseDTO.data);
  }
}

// 3. 창고 관리자
final postListProvider = StateNotifierProvider.autoDispose<PostListViewModel, PostListModel?>((ref) {
  return PostListViewModel(null, ref)..notifyInit();
});
