import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/data/mock/board.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_item.dart';

import '../../../../../data/model/user.dart';

class BoardListBody extends StatelessWidget {
  BoardListBody({super.key});
  @override
  MockBoard mockBoard = MockBoard(
    id: 0,
    boardTitle: "글제목입니다1",
    boardContent: "글내용입니다1",
    user: User(
      id: 0,
      username: "유저네임0",
      password: "패스워드0",
      userPicUrl: "유저이미지0",
      location: "지역0",
    ),
    boardCreatedAt: DateTime.now(),
    fingerGood: 1,
    replyCount: 2,
  );

  List<MockBoard> mockBoardList = [
    MockBoard(
      id: 1,
      boardTitle: "고양이기여워",
      boardContent: "고양이너무기여워요",
      user: User(
        id: 1,
        username: "유저네임1",
        password: "패스워드1",
        userPicUrl: "유저이미지1",
        location: "지역1",
      ),
      boardCreatedAt: DateTime.now(),
      fingerGood: 0,
      replyCount: 0,
    ),
    MockBoard(
      id: 1,
      boardTitle: "고양이기여워",
      boardContent: "고양이너무기여워요",
      user: User(
        id: 1,
        username: "유저네임1",
        password: "패스워드1",
        userPicUrl: "유저이미지1",
        location: "지역1",
      ),
      boardCreatedAt: DateTime.now(),
      fingerGood: 0,
      replyCount: 0,
    ),
    MockBoard(
      id: 1,
      boardTitle: "고양이기여워",
      boardContent: "고양이너무기여워요",
      user: User(
        id: 1,
        username: "유저네임1",
        password: "패스워드1",
        userPicUrl: "유저이미지1",
        location: "지역1",
      ),
      boardCreatedAt: DateTime.now(),
      fingerGood: 0,
      replyCount: 0,
    ),
    MockBoard(
      id: 1,
      boardTitle: "고양이기여워",
      boardContent: "고양이너무기여워요",
      user: User(
        id: 1,
        username: "유저네임1",
        password: "패스워드1",
        userPicUrl: "유저이미지1",
        location: "지역1",
      ),
      boardCreatedAt: DateTime.now(),
      fingerGood: 0,
      replyCount: 0,
    ),
    MockBoard(
      id: 1,
      boardTitle: "고양이기여워",
      boardContent: "고양이너무기여워요",
      user: User(
        id: 1,
        username: "유저네임1",
        password: "패스워드1",
        userPicUrl: "유저이미지1",
        location: "지역1",
      ),
      boardCreatedAt: DateTime.now(),
      fingerGood: 0,
      replyCount: 0,
    ),
    MockBoard(
      id: 1,
      boardTitle: "고양이기여워",
      boardContent: "고양이너무기여워요",
      user: User(
        id: 1,
        username: "유저네임1",
        password: "패스워드1",
        userPicUrl: "유저이미지1",
        location: "지역1",
      ),
      boardCreatedAt: DateTime.now(),
      fingerGood: 0,
      replyCount: 0,
    ),
    MockBoard(
      id: 1,
      boardTitle: "고양이기여워",
      boardContent: "고양이너무기여워요",
      user: User(
        id: 1,
        username: "유저네임1",
        password: "패스워드1",
        userPicUrl: "유저이미지1",
        location: "지역1",
      ),
      boardCreatedAt: DateTime.now(),
      fingerGood: 0,
      replyCount: 0,
    ),
  ];

  // MockBoard mockBoard = MockBoard();
  // List<MockBoard> mockBoardList = [];

  Widget build(BuildContext context) {
    Logger().d(mockBoardList.length);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        itemCount: mockBoardList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: BoardListItem(),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(thickness: 1, color: kHintColor);
        },
      ),
    );
  }
}
// BoardListCategoryButtons(),
