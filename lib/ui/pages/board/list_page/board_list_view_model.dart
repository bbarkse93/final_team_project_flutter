import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/dto/board_request.dart';
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

  Future<void> notifyAdd(BoardWriteDTO boardWriteDTO) async {
    Logger().d("1단계 - noifyAdd계층에 접근했어요!");

    ResponseDTO responseDTO = await BoardRepository().fetchSave(boardWriteDTO);
    Logger().d("2단계 - 첫번째 디티오 파싱이 성공했어요!");

    // TODO 테스팅 - 동네생활 게시글 작성
    Logger().d(responseDTO.response);
    Logger().d(responseDTO.success);
    Logger().d(responseDTO.error);
    Logger().d("이미지는 이만큼 담겼어요! ${boardWriteDTO.photoList.length}");
    Logger().d(boardWriteDTO.userId);
    Logger().d(boardWriteDTO.boardContent);
    Logger().d(boardWriteDTO.boardTitle);
    Logger().d("boaedWirteDTO.categoryId :  ${boardWriteDTO.categoryId}");

    if (responseDTO.response is Map<String, dynamic>) {
      Board writeBoard = Board.fromJson(responseDTO.response);
      Logger().d("3단계 - 두번째 디티오 파싱에 성공했어요, Board객체가 생성 되었어요!");

      List<Board> newBoardList = [writeBoard, ...state!.boardList];
      Logger().d("4단계 - 세번째 파싱이 종료되었어요.");
      state = BoardListModel(newBoardList);

      Navigator.pop(mContext!);
    }
  }
}

// 3. 창고 관리자
final boardListProvider = StateNotifierProvider.autoDispose<BoardListViewModel, BoardListModel?>((ref) {
  return BoardListViewModel(null, ref)..notifyInit();
});
