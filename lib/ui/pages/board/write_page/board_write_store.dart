// 1. 창고 데이터
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/move.dart';
import 'package:team_project/data/dto/board_request.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/repository/board_repository.dart';
import 'package:team_project/main.dart';

class BoardWriteModel {
  final String? boardTitle;
  final String? boardContent;
  final List<String>? photoList;

  BoardWriteModel({
    this.boardTitle,
    this.boardContent,
    this.photoList,
  });
}

// 2. 창고
class BoardWriteStore extends BoardWriteModel {
  // 1. 화면 context에 접근하는 법
  final mContext = navigatorKey.currentContext;

  Future<void> save(BoardWriteDTO boardWriteDTO) async {
    // 1. 통신 코드
    ResponseDTO responseDTO = await BoardRepository().fetchSave(boardWriteDTO);

    // 2. 비지니스 로직
    if (responseDTO.success == true) {
      Navigator.pushNamed(mContext!, Move.productListPage);
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text(responseDTO.error)));
    }
  }
}

// 3. 창고 관리자
final productWriteProvider = Provider<BoardWriteStore>((ref) {
  return BoardWriteStore();
});
