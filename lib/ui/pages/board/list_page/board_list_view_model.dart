import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/model/board.dart';
import 'package:team_project/data/repository/board_repository.dart';
import 'package:team_project/main.dart';

// 1. 창고 데이터
class BoardListModel {
  List<Board> boardList;
  BoardListModel(this.boardList);
}

// 2. 창고
class BoardListViewModel extends StateNotifier<BoardListModel?> {
  BoardListViewModel(super._state, this.ref);

  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyInit() async {
    //jwt 가져오기
    // SessionStore sessionStore = ref.read(sessionProvider);

    print("통신 시작");
    ResponseDTO responseDTO = await BoardRepository().fetchBoardList();
    print("통신 끝");
    state = BoardListModel(responseDTO.response);
  }
}

// 3. 창고 관리자
final boardListProvider =
    StateNotifierProvider.autoDispose<BoardListViewModel, BoardListModel?>(
        (ref) {
  return BoardListViewModel(null, ref)..notifyInit();
});
