import 'package:flutter/foundation.dart';

class BoardCategory {
  int id;
  String Category;

  BoardCategory(this.id, this.Category);

  // Dart 객체를 통신을 위한 Map 형태로 변환
  Map<String, dynamic> toJson() => {
        "id": id,
        "Category": Category,
      };

  // Map 형태로 받아서 Dart 객체로 변환
  BoardCategory.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        Category = json["Category"];
}
