import 'package:team_project/data/mock/dummy.dart';
import 'package:team_project/data/model/product_pic.dart';
import 'package:team_project/data/model/user.dart';

class MockProduct {
  // 필드값 일치화
  final int id;
  final String productName;
  final String productDescription;
  final int productPrice;
  final DateTime productCreatedAt;
  final User user;
  final List<ProductPic> productPics;

  // 필드값에 현재 없는것
  final heartCount;
  final commentCount;

  MockProduct({
    required this.id,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
    required this.productCreatedAt,
    required this.user,
    required this.productPics,
    this.heartCount,
    this.commentCount,
  });
}

MockProduct mockProduct = MockProduct(
    id: 0,
    productName: "티바로우",
    productDescription: "등맥이기",
    productPrice: 999999,
    productCreatedAt: DateTime.now(),
    user: User(
      id: 0,
      username: "유저네임0",
      password: "패스워드0",
      userPicUrl: "유저이미지0",
      location: "지역0",
      email: "ssar@nate.com",
      distinguish: true,
      userCreatedAt: "2023-10-23",
    ),
    productPics: [
      ProductPic(productPicUrl: Dummy().dummyImage),
    ]);

List<MockProduct> mockProductList = [
  MockProduct(
    id: 1,
    productName: "티바로우",
    productDescription: "등맥이기",
    productPrice: 999999,
    productCreatedAt: DateTime.now(),
    user: User(
      id: 1,
      username: "유저네임1",
      password: "패스워드1",
      userPicUrl: "유저이미지1",
      location: "지역1",
      email: "ssar@nate.com",
      distinguish: true,
      userCreatedAt: "2023-10-23",
    ),
    productPics: [
      ProductPic(productPicUrl: Dummy().dummyImage),
    ],
  ),
  MockProduct(
    id: 2,
    productName: "티바로우",
    productDescription: "등맥이기",
    productPrice: 999999,
    productCreatedAt: DateTime.now(),
    user: User(
      id: 2,
      username: "유저네임2",
      password: "패스워드2",
      userPicUrl: "유저이미지2",
      location: "지역2",
      email: "ssar@nate.com",
      distinguish: true,
      userCreatedAt: "2023-10-23",
    ),
    productPics: [
      ProductPic(productPicUrl: Dummy().dummyImage),
    ],
  ),
  MockProduct(
    id: 0,
    productName: "티바로우",
    productDescription: "등맥이기",
    productPrice: 999999,
    productCreatedAt: DateTime.now(),
    user: User(
      id: 0,
      username: "유저네임0",
      password: "패스워드0",
      userPicUrl: "유저이미지0",
      location: "지역0",
      email: "ssar@nate.com",
      distinguish: true,
      userCreatedAt: "2023-10-23",
    ),
    productPics: [
      ProductPic(productPicUrl: Dummy().dummyImage),
    ],
  ),
  MockProduct(
    id: 0,
    productName: "티바로우",
    productDescription: "등맥이기",
    productPrice: 999999,
    productCreatedAt: DateTime.now(),
    user: User(
      id: 0,
      username: "유저네임0",
      password: "패스워드0",
      userPicUrl: "유저이미지0",
      location: "지역0",
      email: "ssar@nate.com",
      distinguish: true,
      userCreatedAt: "2023-10-23",
    ),
    productPics: [
      ProductPic(productPicUrl: Dummy().dummyImage),
    ],
  ),
  MockProduct(
    id: 0,
    productName: "티바로우",
    productDescription: "등맥이기",
    productPrice: 999999,
    productCreatedAt: DateTime.now(),
    user: User(
      id: 0,
      username: "유저네임0",
      password: "패스워드0",
      userPicUrl: "유저이미지0",
      location: "지역0",
      email: "ssar@nate.com",
      distinguish: true,
      userCreatedAt: "2023-10-23",
    ),
    productPics: [
      ProductPic(productPicUrl: Dummy().dummyImage),
    ],
  ),
  MockProduct(
    id: 0,
    productName: "티바로우",
    productDescription: "등맥이기",
    productPrice: 999999,
    productCreatedAt: DateTime.now(),
    user: User(
      id: 0,
      username: "유저네임0",
      password: "패스워드0",
      userPicUrl: "유저이미지0",
      location: "지역0",
      email: "ssar@nate.com",
      distinguish: true,
      userCreatedAt: "2023-10-23",
    ),
    productPics: [
      ProductPic(productPicUrl: Dummy().dummyImage),
    ],
  ),
];
