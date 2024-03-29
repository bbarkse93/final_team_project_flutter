import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/model/user.dart';

class MyCarrotRepository {
  String jwt =
      "Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJtZXRhY29kaW5nLWtleSIsImlkIjoxLCJ1c2VybmFtZSI6InNzYXIiLCJleHAiOjQ4NTM0NzUxMzZ9.l2FbnpPtUiX6LwCiNBhMsMyS9dwlq9NT_UIksqFJq1Ae20eUoBGNv8Z-1yrJDSe42sh73BaDUGp_tPl3M6Pvrw";

  Future<ResponseDTO> findUser(int id) async {
    Logger().d("찐 통신 시작");
    try {
      final response = await dio.get("/users/$id",
          options: Options(headers: {"Authorization": jwt}));
      Logger().d("하하${response.data}");
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      Logger().d("$responseDTO");
      responseDTO.response = User.fromJson(responseDTO.response);
      // User user = User.fromJson(responseDTO.response);
      // Logger().d("user.nickname : ${user.nickname}");
      // Logger().d("user.userPicUrl : ${user.userPicUrl}");
      // Logger().d("이거 진짜 ${responseDTO.response}");

      return responseDTO;
    } catch (e) {
      return ResponseDTO(false, "유저정보 불러오기 실패", null);
    }
  }
}
