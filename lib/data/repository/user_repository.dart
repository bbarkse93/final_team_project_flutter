import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/dto/user_request.dart';
import 'package:team_project/data/model/user.dart';

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
    Logger().d("찐 통신코드로 넘어왔어요!");
    try {
      Response<dynamic> response =
          await dio.post<dynamic>("/login", data: requestDTO.toJson());
      Logger().d("테스팅 1 : ${response.data}");

      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      Logger().d("테스팅 2 : ${responseDTO.response}");

      responseDTO.response = User.fromJson(responseDTO.response);
      Logger().d("테스팅 3 : ${response}");

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

  Future<ResponseDTO> fetchDelete(int id) async {
    try {
      // 통신
      Response response = await dio.delete("/products/${id}",
          options: Options(headers: {"Authorization": ""}));
      // 응답 받은 데이터 파싱
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

      return responseDTO;
    } catch (e) {
      return ResponseDTO(false, e, "실패");
    }
  }
}
