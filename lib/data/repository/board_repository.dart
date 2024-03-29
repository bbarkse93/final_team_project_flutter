import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/data/dto/board_request.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/model/board.dart';

String jwt =
    "Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJtZXRhY29kaW5nLWtleSIsImlkIjoxLCJ1c2VybmFtZSI6InNzYXIiLCJleHAiOjQ4NTMyMDUxNjN9.q8RNIYuZUVlENelBVbCoBKzwQY4UnxwMaYWPwmik1R1lK0rwVDDlbHGP3l8zkYAzjm-NopxzlNVlDVrPi_tcsw";

class BoardRepository {
  Future<ResponseDTO> fetchBoardList() async {
    try {
      // 1.통신
      final response = await dio.get("/boards", options: Options(headers: {"Authorization": jwt}));

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
    try {
      Logger().d("fetchSave 계층이에요!");
      Response<dynamic> response =
          await dio.post("/boards/write", options: Options(headers: {"Authorization": "${jwt}"}), data: boardWriteDTO.toJson());

      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      Logger().d("responseDTO : ${responseDTO}");

      return responseDTO;
    } catch (e) {
      return ResponseDTO(false, "게시물을 등록할수없습니다.", null);
    }
  }

  Future<ResponseDTO> fetchBoardDetail(int id) async {
    try {
      Response response = await dio.get("/boards/${id}", options: Options(headers: {"Authorization": jwt}));

      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      responseDTO.response = Board.fromJson(responseDTO.response);

      return responseDTO;
    } catch (e) {
      return ResponseDTO(false, "동네생활 게시글 보기 실패", null);
    }
  }
}
