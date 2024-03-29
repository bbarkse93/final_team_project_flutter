import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/data/dto/reply_request.dart';
import 'package:team_project/data/dto/response_dto.dart';

String jwt =
    "Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJtZXRhY29kaW5nLWtleSIsImlkIjoxLCJ1c2VybmFtZSI6InNzYXIiLCJleHAiOjQ4NTMyMDUxNjN9.q8RNIYuZUVlENelBVbCoBKzwQY4UnxwMaYWPwmik1R1lK0rwVDDlbHGP3l8zkYAzjm-NopxzlNVlDVrPi_tcsw";

class ReplyRepository {
  Future<ResponseDTO> fetchSave(ReplyWriteDTO replyWriteDTO) async {
    try {
      Logger().d("reply의 f11111etchSㅁㄴㅇㅁave");
      Response<dynamic> response = await dio.post("/replies/write",
          options: Options(headers: {"Authorization": jwt}),
          data: replyWriteDTO.toJson());
      Logger().d("여까지왔어요!!!ㅁㄴㅇㅁㄴㅇㅁㄴㅇ!!");
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

      return responseDTO;
    } catch (e) {
      return ResponseDTO(false, "댓글을 등록할수없습니다.", null);
    }
  }
}
