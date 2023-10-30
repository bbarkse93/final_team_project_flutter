import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/data/dto/product_request.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/model/product.dart';

class ProductRepository {
  // TODO - 토큰은 기간이 만료되어서 값이 바뀔수 있기때문에 날마다 아침에 체크바랍니다!
  String jwt =
      "Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJjYXJyb3Qta2V5IiwiaWQiOjEsInVzZXJuYW1lIjoic3NhciIsImV4cCI6MTY5OTIzMDc2Mn0.5Qeh5s_l8lBvB94ckTNPSHPg5RYsU67Rpp0slZf3plHZiTAkhDuK1NtJ-Zor6PmpeBhEHBlWBfM6EqcUF737fw";

  Future<List<Product>> fetchProductList() {
    return Future.delayed(Duration(seconds: 3), () => productList);
  }

  Future<ResponseDTO> fetchProductDetail(int id) async {
    Logger().d("fetchProductDetail메소드로 들어왔어요!");
    try {
      // 통신
      Response response = await dio.get("/products/${id}", options: Options(headers: {"Authorization": "${jwt}"}));
      Logger().d("response : ${response}");

      // 응답 받은 데이터 파싱
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      Logger().d("responseDTO : ${responseDTO}");

      responseDTO.response = Product.fromJson(responseDTO.response);
      Logger().d("responseDTO : ${responseDTO.response}");

      return responseDTO;
    } catch (e) {
      return ResponseDTO(false, "게시글 한건 불러오기 실패", null);
    }
  }

  // 통신
  Future<ResponseDTO> fetchSave(ProductWriteDTO productWriteDTO) async {
    try {
      Logger().d("3단계 통과 - repository 계층에 진입성공이에요! ");
      Logger().d("${productWriteDTO.photoList.length}");
      Logger().d("${productWriteDTO.productName}");
      Logger().d("${productWriteDTO.price}");
      Logger().d("${productWriteDTO.description}");

      Response<dynamic> response =
          await dio.post("/products/write", options: Options(headers: {"Authorization": "${jwt}"}), data: productWriteDTO.toJson());

      Logger().d("4단계 진입 - 파싱과 바인딩이 시작이에요 ! 중간 과정이니 조금만 더 힘내요 !");
      Logger().d("${response}");

      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      Logger().d("5단계 진입 - 거의 다 왔어요 ! 조금만 더 힘내요 !");
      Logger().d("${responseDTO}");

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
