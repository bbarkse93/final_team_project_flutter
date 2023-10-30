import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/data/dto/board_request.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/model/board.dart';

String jwt =
    "Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJjYXJyb3Qta2V5IiwiaWQiOjEsInVzZXJuYW1lIjoic3NhciIsImV4cCI6MTY5OTI0NjQ5N30.1-zziEQ8Ic4kq0XqUUA4dLIqSkOuUm6frw-7R6Z21f3mCNHPOaNZMYfcnJsNrTbrBIvdRBFmXkWxjGu5JMGO8A";

class BoardRepository {
  Future<ResponseDTO> fetchBoardList() async {
    Logger().d("여기1");
    try {
      // 1.통신
      final response = await dio.get("/boards", options: Options(headers: {"Authorization": jwt}));
      Logger().d("여기2");

      // 2. ResponseDTO 파싱
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

      // 3.ResponseDTO의 data파싱
      List<dynamic> mapList = responseDTO.response as List<dynamic>;
      List<Board> boardList = mapList.map((e) => Board.fromJson(e)).toList();

      // 4.파싱된 데이터를 다시 공통 DTO로 덮어씌우기
      responseDTO.response = boardList;

      return responseDTO;
    } catch (e) {
      return ResponseDTO(false, "게시글 목록 불러오기 실패", null);
    }
  }

  // 통신
  Future<ResponseDTO> fetchSave(BoardWriteDTO boardWriteDTO) async {
    String jwt =
        "Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJjYXJyb3Qta2V5IiwiaWQiOjEsInVzZXJuYW1lIjoic3NhciIsImV4cCI6MTY5OTIzMDc2Mn0.5Qeh5s_l8lBvB94ckTNPSHPg5RYsU67Rpp0slZf3plHZiTAkhDuK1NtJ-Zor6PmpeBhEHBlWBfM6EqcUF737fw";

    try {
      Response<dynamic> response =
          await dio.post("/boards/write", options: Options(headers: {"Authorization": "${jwt}"}), data: boardWriteDTO.toJson());

      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      Logger().d("responseDTO ${responseDTO}");

      return responseDTO;
    } catch (e) {
      return ResponseDTO(false, "게시물을 등록할수없습니다.", null);
    }
  }
}
