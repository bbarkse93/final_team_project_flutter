import 'package:cloud_firestore/cloud_firestore.dart';

class Chat {
  // 메세지
  String message;

  // 글쓴이
  int writer; // cos

  // 시간을 타임스탬프로 저장
  Timestamp time;

  // 메세지 확인을 했는지 안했는지 체크
  bool isConfirmed;

  Chat({required this.message, required this.writer, required this.time, this.isConfirmed = false});

  // toJson() 및 fromJson() 메서드 수정

  // 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
  Map<String, dynamic> toJson() => {
        "message": message,
        "writer": writer,
        "time": time,
        "isConfirmed": isConfirmed,
      };

  // 2. Map 형태로 받아서 Dart 객체로 변환합니다.
  Chat.fromJson(Map<String, dynamic> json)
      : message = json["message"],
        writer = json["writer"],
        time = json["time"],
        isConfirmed = json["isConfirmed"];
}
