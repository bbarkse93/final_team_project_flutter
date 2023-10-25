import '../mock/post.dart';

class PostRepository {
  Future<List<Post>> fetchProductList() {
    return Future.delayed(Duration(seconds: 3), () => postList);
  }

  Future<Post> fetchProductDetail() {
    return Future.delayed(Duration(seconds: 3), () => post);
  }
}

// TODO 지우지 마세요 !! 통신할때 필요한 코드입니다 !!
// import 'package:dio/dio.dart';
// import 'package:team_project/_core/constants/http.dart';
// import 'package:team_project/data/dto/response_dto.dart';
// import 'package:team_project/data/model/post.dart';
//
// // V -> P(전역프로바이더, 뷰모델) -> R
//
// class PostRepository {
//   Future<ResponseDTO> fetchPostList(String jwt) async {
//     try {
//       // 1. 통신
//       final repsonse = await dio.get(
//         "/post",
//         options: Options(headers: {"Authorization": "${jwt}"}),
//       );
//
//       // 2. ResponseDTO 파싱
//       ResponseDTO responseDTO = ResponseDTO.fromJson(repsonse.data);
//
//       // 3. ResponseDTO의 data 파싱
//       List<dynamic> mapList = responseDTO.response as List<dynamic>;
//       List<Post> postList = mapList.map((e) => Post.fromJson(e)).toList();
//
//       // 4. 파싱된 데이터를 다시 공통 DTO 로 덮어 씌우기
//       responseDTO.response = postList;
//
//       return responseDTO;
//     } catch (e) {
//       return ResponseDTO(false, "게시글 목록 불러오기 실패", null);
//     }
//   }
// }
