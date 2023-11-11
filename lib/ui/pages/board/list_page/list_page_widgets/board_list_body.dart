import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/data/model/board.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/board/detail_page/board_detaill_page.dart';
import 'package:team_project/ui/pages/board/list_page/board_list_view_model.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_category_buttons.dart';
import 'package:team_project/ui/pages/board/list_page/list_page_widgets/board_list_item.dart';

class BoardListBody extends ConsumerWidget {
  BoardListBody({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BoardListModel? model = ref.watch(boardListProvider);
    List<Board> boardList = [];

    if (model != null) {
      boardList = model.boardList;
    }

    return Column(
      children: [
        BoardListCategoryButtons(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.separated(
              itemCount: boardList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    // 1. postId를 paramStore 에 저장
                    ParamStore paramStore = ref.read(paramProvider);
                    paramStore.boardDetailId = boardList[index].id;

                    // 2. 화면 이동
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => BoardDetailPage()));
                  },
                  child: BoardListItem(boardList[index]),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(thickness: 1, color: kHintColor);
              },
            ),
          ),
        ),
      ],
    );
  }
}

// MockBoard mockBoard = MockBoard(
//   id: 0,
//   boardTitle: "글제목입니다1",
//   boardContent: "글내용입니다1",
//   user: User(
//     id: 0,
//     username: "유저네임0",
//     password: "패스워드0",
//     userPicUrl: "유저이미지0",
//     location: "지역0",
//   ),
//   boardCreatedAt: DateTime.now(),
//   fingerGood: 1,
//   replyCount: 2,
// );

// List<MockBoard> mockBoardList = [
//   MockBoard(
//     id: 1,
//     boardTitle: "고양이기여워",
//     boardContent: "고양이너무기여워요",
//     user: User(
//       id: 1,
//       username: "유저네임1",
//       password: "패스워드1",
//       userPicUrl: "유저이미지1",
//       location: "지역1",
//     ),
//     boardCreatedAt: DateTime.now(),
//     fingerGood: 1,
//     replyCount: 0,
//   ),
//   MockBoard(
//     id: 2,
//     boardTitle: "강아지",
//     boardContent: "키울사람 손",
//     user: User(
//       id: 2,
//       username: "유저네임2",
//       password: "패스워드2",
//       userPicUrl: "유저이미지2",
//       location: "지역2",
//     ),
//     boardCreatedAt: DateTime.now(),
//     fingerGood: 3,
//     replyCount: 5,
//   ),
//   MockBoard(
//     id: 3,
//     boardTitle: "코딩",
//     boardContent: "넘 어려워",
//     user: User(
//       id: 3,
//       username: "유저네임3",
//       password: "패스워드3",
//       userPicUrl: "유저이미지3",
//       location: "지역3",
//     ),
//     boardCreatedAt: DateTime.now(),
//     fingerGood: 0,
//     replyCount: 8,
//   ),
//   MockBoard(
//     id: 4,
//     boardTitle: "피아노 가져갈사람",
//     boardContent: "한번 썼어요",
//     user: User(
//       id: 4,
//       username: "유저네임4",
//       password: "패스워드4",
//       userPicUrl: "유저이미지4",
//       location: "지역4",
//     ),
//     boardCreatedAt: DateTime.now(),
//     fingerGood: 5,
//     replyCount: 5,
//   ),
//   MockBoard(
//     id: 5,
//     boardTitle: "강아지강아지아지강아지강아아이지아지아지",
//     boardContent: "멍멍멍ㅁ엄엄엄넝ㅁ너엄ㄴ엄너엄ㄴ엄넝하고 짖네요",
//     user: User(
//       id: 5,
//       username: "유저네임5",
//       password: "패스워드5",
//       userPicUrl: "유저이미지5",
//       location: "지역5",
//     ),
//     boardCreatedAt: DateTime.now(),
//     fingerGood: 0,
//     replyCount: 0,
//   ),
// ];
