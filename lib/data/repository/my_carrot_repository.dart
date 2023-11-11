import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/data/dto/response_dto.dart';

class MyCarrotRepository {
  Future<ResponseDTO> fetchUser(int id) async {
    Logger().d("통신 시작");
    try {
      final response = await dio.get("/users/$id");

      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

      Logger().d(responseDTO.toString());

      return responseDTO;
    } catch (e) {
      return ResponseDTO(false, "유저정보 불러오기 실패", null);
    }
  }
}
