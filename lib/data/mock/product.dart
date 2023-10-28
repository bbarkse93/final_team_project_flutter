import 'package:team_project/data/model/user.dart';

class Product {
  final int id;
  final String productName;
  final int price;
  final String category;
  final String content;
  final String productPicUrl;
  final String created;
  final User user;
  final int heartCount;
  final int commentCount;

  Product(
    this.id,
    this.productName,
    this.price,
    this.category,
    this.content,
    this.productPicUrl,
    this.created,
    this.user,
    this.heartCount,
    this.commentCount,
  );
}

Product product = Product(
  0,
  "상품이름0",
  1000000,
  "카테고리0",
  "컨텐트0",
  "이미지0",
  "날짜0",
  User(
    id: 0,
    username: "유저네임0",
    password: "패스워드0",
    userPicUrl: "유저이미지0",
    location: "지역0",
    email: "ssar@nate.com",
    distinguish: true,
    userCreatedAt: DateTime.now(),
  ),
  0,
  0,
);

List<Product> productList = [
  Product(
    1,
    "요기여기1",
    1000001,
    "카테고리1",
    "컨텐트1",
    "이미지1",
    "날짜1",
    User(
      id: 1,
      username: "유저네임1",
      password: "패스워드1",
      userPicUrl: "유저이미지1",
      location: "지역1",
      email: "ssar@nate.com",
      distinguish: true,
      userCreatedAt: DateTime.now(),
    ),
    1,
    1,
  ),
  Product(
    2,
    "요기여기2",
    1000002,
    "카테고리2",
    "컨텐트2",
    "이미지2",
    "날짜2",
    User(
      id: 2,
      username: "유저네임2",
      password: "패스워드2",
      userPicUrl: "유저이미지2",
      location: "지역2",
      email: "ssar@nate.com",
      distinguish: true,
      userCreatedAt: DateTime.now(),
    ),
    2,
    2,
  ),
  Product(
    3,
    "요기여기3",
    1000003,
    "카테고리3",
    "컨텐트3",
    "이미지3",
    "날짜3",
    User(
      id: 3,
      username: "유저네임3",
      password: "패스워드3",
      userPicUrl: "유저이미지3",
      location: "지역3",
      email: "ssar@nate.com",
      distinguish: true,
      userCreatedAt: DateTime.now(),
    ),
    3,
    3,
  ),
  Product(
    4,
    "요기여기4",
    1000004,
    "카테고리4",
    "컨텐트4",
    "이미지4",
    "날짜4",
    User(
      id: 4,
      username: "유저네임4",
      password: "패스워드4",
      userPicUrl: "유저이미지4",
      location: "지역4",
      email: "ssar@nate.com",
      distinguish: true,
      userCreatedAt: DateTime.now(),
    ),
    4,
    4,
  ),
  Product(
    5,
    "요기여기5",
    1000005,
    "카테고리5",
    "컨텐트5",
    "이미지5",
    "날짜5",
    User(
      id: 5,
      username: "유저네임5",
      password: "패스워드5",
      userPicUrl: "유저이미지5",
      location: "지역5",
      email: "ssar@nate.com",
      distinguish: true,
      userCreatedAt: DateTime.now(),
    ),
    5,
    5,
  ),
];
