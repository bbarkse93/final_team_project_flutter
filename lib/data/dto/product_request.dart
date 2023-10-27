class ProductWriteDTO {
  final String productName;
  final int price;
  final String description;
  final List<String> photoList;

  ProductWriteDTO({
    required this.productName,
    required this.price,
    required this.description,
    required this.photoList,
  });

  Map<String, dynamic> toJson() => {
        "productName": productName,
        "price": price,
        "description": description,
        "photoList": photoList,
      };
}
