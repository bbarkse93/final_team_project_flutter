import 'package:logger/logger.dart';

class ResponseDTO {
  final bool success; // 서버에서 요청 성공 여부를 응답할 때 사용되는 변수
  final dynamic error; // 서버에서 응답 시 보내는 메시지를 담아두는 변수
  String? token; // 헤더로 던진 토큰 값을 담아두는 변수
  dynamic response;

  ResponseDTO(this.success, this.error, this.response); // 서버에서 응답한 데이터를 담아두는 변수

  ResponseDTO.fromJson(Map<String, dynamic> json)
      : success = json["success"],
        response = json["response"],
        error = json["error"] {
    Logger().d("0. ResponseDTO.fromJson: code = $success");
    Logger().d("0. ResponseDTO.fromJson: msg = $error");
    Logger().d("0. ResponseDTO.fromJson: data = $response");
  }
}
