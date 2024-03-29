class ProductPic {
  int? productPicId;
  String? productPicUrl;

  ProductPic({
    this.productPicId,
    this.productPicUrl,
  });

  // Dart 객체를 통신을 위한 Map 형태로 변환
  Map<String, dynamic> toJson() => {
        "productPicId": productPicId, // productPicId를 추가
        "productPicUrl": productPicUrl,
      };

  // Map 형태로 받아서 Dart 객체로 변환
  ProductPic.fromJson(Map<String, dynamic> json)
      : productPicId = json["productPicId"],
        productPicUrl = json["productPicUrl"];
// Logger().d("productPicUrl : ${productPicUrl}"); // Logger 이동
// String getUpdated() {
//   // 출력시 -> 값을 Oct 23 이렇게 만든다.
//   return DateFormat.MMMd().format(updated);
// }
}
