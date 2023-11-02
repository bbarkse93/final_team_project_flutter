import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/model/board.dart';
import 'package:team_project/data/model/reply.dart';
import 'package:team_project/data/repository/board_repository.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/main.dart';

//창고 데이터
class BoardDetailModel {
  Board board;
  BoardDetailModel(this.board);
}

//창고
class BoardDetailViewModel extends StateNotifier<BoardDetailModel?> {
  BoardDetailViewModel(super._state, this.ref);

  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyInit(int id) async {
    ResponseDTO responseDTO = await BoardRepository().fetchBoardDetail(id);

    state = BoardDetailModel(responseDTO.response);
  }
}

//창고 관리자
final boardDetailProvider =
    StateNotifierProvider.autoDispose<BoardDetailViewModel, BoardDetailModel?>(
        (ref) {
  int boardId = ref.read(paramProvider).boardDetailId!;
  return BoardDetailViewModel(null, ref)..notifyInit(boardId);
});
