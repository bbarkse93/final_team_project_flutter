import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/dto/reply_request.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/model/board.dart';
import 'package:team_project/data/model/replies.dart';
import 'package:team_project/data/repository/board_repository.dart';
import 'package:team_project/data/repository/reply_repository.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/main.dart';
import 'package:team_project/ui/pages/board/detail_page/board_detaill_page.dart';

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

  Future<void> notifyAdd(ReplyWriteDTO dto) async {
    final int? currentBoard = ref.read(paramProvider).boardDetailId;
    final boardNumber = currentBoard.toString();
    Logger().d("현재페이지는?!?? ${currentBoard}");
    Logger().d("창고에 접근했어요1111!!");
    // SessionStore sessionStore = ref.read(sessionProvider);
    // ResponseDTO responseDTO =
    // await PostRepository().savePost(sessionStore.jwt!, dto);

    Logger().d("창고에 접근했어요2!!!");
    ResponseDTO responseDTO = await ReplyRepository().fetchSave(dto);
    if (responseDTO.success == true) {
      if (responseDTO.response is Map<String, dynamic>) {
        Replies writeReplies = Replies.fromJson(responseDTO.response);
        List<Replies> newRepliesList = [
          writeReplies,
          ...?state!.board.replies,
        ];
        Board board = Board(
          id: state!.board.id,
          boardTitle: state!.board.boardTitle,
          boardContent: state!.board.boardContent,
          createdAt: state!.board.createdAt,
          boardCategory: state!.board.boardCategory,
          user: state!.board.user,
          boardPics: state!.board.boardPics,
          replies: newRepliesList,
        );

        state = BoardDetailModel(board);
      }
    }
  }
}

//창고 관리자b
final boardDetailProvider =
    StateNotifierProvider.autoDispose<BoardDetailViewModel, BoardDetailModel?>(
        (ref) {
  int boardId = ref.read(paramProvider).boardDetailId!;
  return BoardDetailViewModel(null, ref)..notifyInit(boardId);
});
