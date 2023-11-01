class BoardPic {
  int? boardId;
  String? boardPicUrl;

  BoardPic({
    required this.boardId,
    required this.boardPicUrl,
  });

  // Dart 객체를 통신을 위한 Map 형태로 변환
  Map<String, dynamic> toJson() => {
        "boardPicUrl": boardPicUrl,
      };

  // Map 형태로 받아서 Dart 객체로 변환
  BoardPic.fromJson(Map<String, dynamic> json)
      : boardId = json["boardId"],
        boardPicUrl = json["boardPicUrl"];
// String getUpdated() {
//   // 출력시 -> 값을 Oct 23 이렇게 만든다.
//   return DateFormat.MMMd().format(updated);
// }
}
