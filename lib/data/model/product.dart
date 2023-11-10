import 'package:team_project/data/model/product_pic.dart';
import 'package:team_project/data/model/user.dart';

class Product {
  int id;
  String? productName;
  String? productDescription;
  int? productPrice;
  String? productCreatedAt;
  User? user;
  List<ProductPic>? productPics;
  int? productComment;
  int? productLike;

  Product({
    required this.id,
    this.productName,
    this.productDescription,
    this.productPrice,
    this.productPics,
    this.user,
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
        productCreatedAt = json["createdAt"],
        user = User.fromJson(json["user"]),
        productPics = (json["productPics"] as List<dynamic>? ?? [])
            .map((item) => ProductPic.fromJson(item))
            .toList();

// String getUpdated() {
//     // 출력시 -> 값을 Oct 23 이렇게 만든다.
//     return DateFormat.MMMd().format(updated);
}
