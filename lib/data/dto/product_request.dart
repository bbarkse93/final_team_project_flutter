// 글쓰기 등록 DTO
class ProductWriteDTO {
  final String productName;
  final String description;
  final int price;
  final int userId = 2;
  final DateTime createdAt = DateTime.now();
  final List<String> photoList;

  ProductWriteDTO({
    required this.productName,
    required this.price,
    required this.description,
    required this.photoList,
  });

  // 데이터가 리스트 타입으로 들어가야하기때문에 타입을 일치시키는것이 중요!
  Map<String, dynamic> toJson() {
    // 여기가 List<Map<Stiring,dynamic>> 이라서 한참을 씨름했다.. 씨름 시간만 13시간..
    // 코드하나에 따라서 값이 수천가지가 다르구나.
    List<String> productPics = [];

    for (String base64Image in photoList) {
      productPics.add(base64Image);
    }

    return {
      "productName": productName,
      "productDescription": description,
      "productPrice": price,
      "userId": userId,
      "productCreatedAt": createdAt.toIso8601String(),
      "productPics": productPics, // List<Map<String, dynamic>>로 변환
    };
  }
}

// 글쓰기 수정 DTO
class ProductUpdateDTO {
  // final int productId;
  final String productName;
  final String description;
  final int price;
  final int userId = 2;
  final DateTime createdAt = DateTime.now();
  final List<String> photoList;

  ProductUpdateDTO({
    // required this.productId,
    required this.productName,
    required this.price,
    required this.description,
    required this.photoList,
  });

  // 데이터가 리스트 타입으로 들어가야하기때문에 타입을 일치시키는것이 중요!
  Map<String, dynamic> toJson() {
    // 여기가 List<Map<Stiring,dynamic>> 이라서 한참을 씨름했다.. 씨름 시간만 13시간..
    // 코드하나에 따라서 값이 수천가지가 다르구나.
    List<String> productPics = [];

    for (String base64Image in photoList) {
      productPics.add(base64Image);
    }

    return {
      // "productId": productId,
      "productName": productName,
      "productDescription": description,
      "productPrice": price,
      "userId": userId,
      "productCreatedAt": createdAt.toIso8601String(),
      "productPics": productPics, // List<Map<String, dynamic>>로 변환
    };
  }
}
