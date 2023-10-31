import 'package:logger/logger.dart';

class BoardWriteDTO {
  final String? boardTitle;
  final String? boardContent;
  final int? categoryId;
  final int? userId = 2;
  final List<String> photoList;

  BoardWriteDTO({
    this.boardTitle,
    this.boardContent,
    required this.photoList,
    this.categoryId,
  });

  Map<String, dynamic> toJson() {
    Logger().d("이제 이미지 파싱에 들어가요 !");
    List<String> boardPics = [];

    for (String base64Image in photoList) {
      boardPics.add(base64Image);
    }

    Logger().d("${boardPics.length}");

    return {
      "boardTitle": boardTitle,
      "boardContent": boardContent,
      "boardCategoryId": categoryId,
      "userId": userId,
      "boardPics": photoList,
    };
  }
}
