import 'package:logger/logger.dart';

class ResponseDTO {
  final int code; // 서버에서 요청 성공 여부를 응답할 때 사용되는 변수
  final String msg; // 서버에서 응답 시 보내는 메시지를 담아두는 변수
  String? token; // 헤더로 던진 토큰 값을 담아두는 변수
  dynamic data; // 서버에서 응답한 데이터를 담아두는 변수

  ResponseDTO(this.code, this.msg, this.data);

  ResponseDTO.fromJson(Map<String, dynamic> json)
      : code = json["code"],
        msg = json["msg"],
        data = json["data"] {
    Logger().d("0. ResponseDTO.fromJson: code = $code");
    Logger().d("0. ResponseDTO.fromJson: msg = $msg");
    Logger().d("0. ResponseDTO.fromJson: data = $data");
  }
}
