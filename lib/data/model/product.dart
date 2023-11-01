import 'package:team_project/data/mock/dummy.dart';
import 'package:team_project/data/model/product_pic.dart';
import 'package:team_project/data/model/user.dart';

class Product {
  int id;
  String productName;
  String? productDescription;
  int productPrice;
  String? productCreatedAt;
  User user;
  List<ProductPic> productPics;
  int? productComment;
  int? productLike;

  Product({
    required this.id,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
    required this.productPics,
    required this.user,
    this.productCreatedAt,
    this.productComment,
    this.productLike,
  });

  // Dart 객체를 통신을 위한 Map 형태로 변환
  Map<String, dynamic> toJson() => {
        "id": id,
        "productName": productName,
        "productDescription": productDescription,
        "productPrice": productPrice,
        "productCreatedAt": productCreatedAt,
        "user": user,
        "productPics": productPics,
      };

  // Map 형태로 받아서 Dart 객체로 변환
  Product.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        productName = json["productName"],
        productDescription = json["productDescription"],
        productPrice = json["productPrice"],
        productCreatedAt = json["productCreatedAt"],
        user = User.fromJson(json["user"]),
        productPics = (json["productPics"] as List<dynamic>? ?? [])
            .map((item) => ProductPic.fromJson(item))
            .toList();

// String getUpdated() {
//     // 출력시 -> 값을 Oct 23 이렇게 만든다.
//     return DateFormat.MMMd().format(updated);
}

Product product = Product(
    id: 0,
    productName: "티바로우",
    productDescription: "등맥이기",
    productPrice: 999999,
    productCreatedAt: "2023-10-23",
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
    productComment: 3,
    productLike: 3,
    productPics: [
      ProductPic(
          productPicId: Dummy().dummyid, productPicUrl: Dummy().dummyImage),
    ]);

List<Product> productList = [
  Product(
    id: 1,
    productName: "티바로우",
    productDescription: "등맥이기",
    productPrice: 999999,
    productCreatedAt: "2023-10-23",
    productComment: 3,
    productLike: 3,
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
      ProductPic(
          productPicId: Dummy().dummyid, productPicUrl: Dummy().dummyImage),
    ],
  ),
  Product(
    id: 2,
    productName: "티바로우",
    productDescription: "등맥이기",
    productPrice: 999999,
    productCreatedAt: "2023-10-23",
    productComment: 3,
    productLike: 3,
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
      ProductPic(
          productPicId: Dummy().dummyid, productPicUrl: Dummy().dummyImage),
    ],
  ),
  Product(
    id: 0,
    productName: "티바로우",
    productDescription: "등맥이기",
    productPrice: 999999,
    productCreatedAt: "2023-10-23",
    productComment: 3,
    productLike: 3,
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
      ProductPic(
          productPicId: Dummy().dummyid, productPicUrl: Dummy().dummyImage),
    ],
  ),
  Product(
    id: 0,
    productName: "티바로우",
    productDescription: "등맥이기",
    productPrice: 999999,
    productCreatedAt: "2023-10-23",
    productComment: 3,
    productLike: 3,
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
      ProductPic(
          productPicId: Dummy().dummyid, productPicUrl: Dummy().dummyImage),
    ],
  ),
  Product(
    id: 0,
    productName: "티바로우",
    productDescription: "등맥이기",
    productPrice: 999999,
    productCreatedAt: "2023-10-23",
    productComment: 3,
    productLike: 3,
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
      ProductPic(
          productPicId: Dummy().dummyid, productPicUrl: Dummy().dummyImage),
    ],
  ),
  Product(
    id: 0,
    productName: "티바로우",
    productDescription: "등맥이기",
    productPrice: 999999,
    productCreatedAt: "2023-10-23",
    productComment: 3,
    productLike: 3,
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
      ProductPic(
          productPicId: Dummy().dummyid, productPicUrl: Dummy().dummyImage),
    ],
  ),
];
