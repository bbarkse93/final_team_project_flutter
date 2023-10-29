import 'package:team_project/data/model/user.dart';

class MockBoard {
  int? id;
  String? boardTitle;
  String? boardContent;
  User? user;

  // final BoardCategory boardCategory;
  DateTime? boardCreatedAt;

  // final List<BoardPic> boardPics;

  // 필드값에 현재 없는것
  int? fingerGood;
  int? replyCount;

  MockBoard({
    this.id,
    this.boardTitle,
    this.boardContent,
    this.user,
    // this.boardCategory,
    this.boardCreatedAt,
    // this.boardPics,
    this.fingerGood,
    this.replyCount,
  });
}

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
