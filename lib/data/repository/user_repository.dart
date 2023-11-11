import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/dto/user_request.dart';
import 'package:team_project/data/model/user.dart';

String jwt =
    "Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJtZXRhY29kaW5nLWtleSIsImlkIjoxLCJ1c2VybmFtZSI6InNzYXIiLCJleHAiOjQ4NTMyODExMzF9.HODKrjmMnEbXz1LvoeaXM-AlgEq_Hkj2zWnfoQhBQBs7ct455byoQzaPMAgeBLBS39r3o_tY080wZLRp5T8Sjg";

// V -> P(전역프로바이더, 뷰모델) -> R
class UserRepository {
  Future<ResponseDTO> fetchJoin(JoinReqDTO requestDTO) async {
    try {
      // dynamic -> http body
      Response<dynamic> response =
          await dio.post("/join", data: requestDTO.toJson());
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      responseDTO.response = User.fromJson(responseDTO.response);

      return responseDTO;
    } catch (e) {
      // 200이 아니면 catch로 감
      return ResponseDTO(false, "중복되는 유저명입니다", null);
    }
  }

  Future<ResponseDTO> fetchLogin(LoginReqDTO requestDTO) async {
    try {
      Response<dynamic> response =
          await dio.post<dynamic>("/login", data: requestDTO.toJson());

      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

      responseDTO.response = User.fromJson(responseDTO.response);

      // final jwt = response.headers["Authorization"];
      //
      // if (jwt != null) {
      //   responseDTO.token = jwt.first;
      // }
      // //
      return responseDTO;
    } catch (e) {
      // 200이 아니면 catch로 감
      return ResponseDTO(false, "유저네임 혹은 비번이 틀렸습니다", null);
    }
  }

  Future<ResponseDTO> fetchUpdate(int id, UserChangeDTO userChangeDTO) async {
    try {
      Response<dynamic> response = await dio.put("/user/1",
          options: Options(headers: {"Authorization": jwt}),
          data: userChangeDTO.toJson());

      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

      return responseDTO;
    } catch (e) {
      return ResponseDTO(false, "회원정보를 수정할수없습니다", null);
    }
  }
}
