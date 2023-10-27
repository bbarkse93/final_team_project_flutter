import 'package:dio/dio.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/data/dto/product_request.dart';
import 'package:team_project/data/dto/response_dto.dart';

import '../mock/product.dart';

class ProductRepository {
  Future<List<Product>> fetchProductList() {
    return Future.delayed(Duration(seconds: 3), () => productList);
  }

  Future<Product> fetchProductDetail() {
    return Future.delayed(Duration(seconds: 3), () => product);
  }

  // 통신
  Future<ResponseDTO> fetchSave(ProductWriteDTO productWriteDTO) async {
    try {
      // TODO 요청하는 주소값 확인해야해요!
      Response<dynamic> response =
          await dio.post("/TODO", data: productWriteDTO.toJson());
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

      return responseDTO;
    } catch (e) {
      return ResponseDTO(false, "상품을 등록할수없습니다.", null);
    }
  }
}

// TODO 지우지 마세요 !! 통신할때 필요한 코드입니다 !!
// import 'package:dio/dio.dart';
// import 'package:team_project/_core/constants/http.dart';
// import 'package:team_project/data/dto/response_dto.dart';
// import 'package:team_project/data/model/product.dart';
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
