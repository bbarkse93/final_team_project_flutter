class BoardWriteDTO {
  final String boardTitle;
  final String boardContent;
  final int userId = 2;
  final int categoryId;
  final List<String> photoList;

  BoardWriteDTO({
    required this.boardTitle,
    required this.boardContent,
    required this.photoList,
    required this.categoryId,
  });

  Map<String, dynamic> toJson() {
    List<String> boardPics = [];

    for (String base64Image in photoList) {
      boardPics.add(base64Image);
    }

    return {
      "boardTitle": boardTitle,
      "boardContent": boardContent,
      "boardCategoryId": categoryId,
      "userId": userId,
      "photoList": photoList,
    };
  }
}
