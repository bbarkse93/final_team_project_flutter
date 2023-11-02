import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/data/dto/product_request.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/model/product.dart';

class ProductRepository {
  // TODO - 토큰은 기간이 만료되어서 값이 바뀔수 있기때문에 날마다 아침에 체크바랍니다!
  String jwt =
      "Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJtZXRhY29kaW5nLWtleSIsImlkIjoxLCJ1c2VybmFtZSI6InNzYXIiLCJleHAiOjE2OTkzMjYzMDJ9.T3og_6O3iCe7aZVDbrcxg29av_Z5pvZjhAaUoGydq8XOlkeGKJ9lz__kkdc7-ACAjZ-52HN-h1lj1KPDD02Ezw";

  Future<ResponseDTO> fetchProductList() async {
    try {
      // 통신
      final response = await dio.get("/products", options: Options(headers: {"Authorization": jwt}));

      // ResponseDTO파싱
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

      // ResponseDTO의 data 파싱
      List<dynamic> mapList = responseDTO.response as List<dynamic>;
      List<Product> productList = mapList.map((e) => Product.fromJson(e)).toList();

      // 파싱된 데이터를 공통DTO로 덮어씌우기
      responseDTO.response = productList;

      return responseDTO;
    } catch (e) {
      return ResponseDTO(false, "상품목록 불러오기 실패", null);
    }
  }

  Future<ResponseDTO> fetchProductDetail(int id) async {
    try {
      // 통신
      Response response = await dio.get("/products/${id}", options: Options(headers: {"Authorization": jwt}));

      // 응답 받은 데이터 파싱
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

      responseDTO.response = Product.fromJson(responseDTO.response);

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

  // 통신
  Future<ResponseDTO> fetchUpdate(ProductUpdateDTO productUpdateDTO) async {
    try {
      Logger().d("3단계 통과 - repository 계층에 진입성공이에요! ");
      Logger().d("${productUpdateDTO.photoList.length}");
      Logger().d("${productUpdateDTO.productName}");
      Logger().d("${productUpdateDTO.price}");
      Logger().d("${productUpdateDTO.description}");

      Response<dynamic> response =
          await dio.put("/products/write", options: Options(headers: {"Authorization": "${jwt}"}), data: productUpdateDTO.toJson());

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
