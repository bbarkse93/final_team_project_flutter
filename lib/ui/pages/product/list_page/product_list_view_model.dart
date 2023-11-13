// 1. 창고 데이터
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/dto/product_request.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/repository/product_repository.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/main.dart';
import 'package:team_project/ui/pages/product/detail_page/product_detail_page.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_page.dart';

// 1. 창고 데이터
class ProductListModel {
  List<Product> productList;

  ProductListModel(this.productList);
}

// 2. 창고
class ProductListViewModel extends StateNotifier<ProductListModel?> {
  ProductListViewModel(super._state, this.ref);

  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyInit() async {
    ResponseDTO responseDTO = await ProductRepository().fetchProductList();

    state = ProductListModel(responseDTO.response);
  }

  Future<void> notifyAdd(ProductWriteDTO dto) async {
    Logger().d("1단계 통과 - notifyAdd 계층으로 접근했어요 ! 다음로직으로 넘어가세요 !");
    // TODO - 토큰이 개발이 완료되면 이 코드가 적용이 됩니다.
    // SessionStore sessionStore = ref.read(sessionProvider);

    // ResponseDTO responseDTO =
    // await PostRepository().savePost(sessionStore.jwt!, dto);

    Logger().d("2단계 통과 - 이제 본격적인 코드에 진입해요! ProductRepository 계층으로 가요!");
    ResponseDTO responseDTO = await ProductRepository().fetchSave(dto);
    if (responseDTO.success == true) {
      Logger().d("6단계로 넘어왔어요 ! 고지가 눈앞이에요 ! ");

      if (responseDTO.response is Map<String, dynamic>) {
        Product writeProduct = Product.fromJson(responseDTO.response);

        Logger().d("productPics : ${writeProduct.productPics}");
        Logger().d("createdAt : ${writeProduct.productCreatedAt}");
        Logger().d("productLike : ${writeProduct.productLike}");
        Logger().d("productComment : ${writeProduct.productComment}");
        Logger().d("productName : ${writeProduct.productName}");
        Logger().d("productDescription : ${writeProduct.productDescription}");
        Logger().d("productPrice : ${writeProduct.productPrice}");
        Logger().d("user : ${writeProduct.user}");
        Logger().d("id : ${writeProduct.id}");
        // 나머지 코드는 그대로 유지
        List<Product> newProductList = [
          writeProduct,
          ...state!.productList
        ]; // 2. 기존 상태에 데이터 추가 [전개연산자]
        Logger().d("마지막이에요.... 정말로 할수있어요.");
        state = ProductListModel(
            newProductList); // 3. 뷰모델(창고) 데이터 갱신이 완료 -> watch 구독자는 rebuild됨.
        // Navigator.pop(mContext!); // 4. 글쓰기 화면 pop

        // Write Product 진행 후 DetailPage of writeProduct 이동
        ParamStore paramStore = ref.read(paramProvider);
        paramStore.product = writeProduct;

        // TODO - [10:40 추가함]
        paramStore.needChatProduct = writeProduct;

        Navigator.pushAndRemoveUntil(
            mContext!,
            MaterialPageRoute(builder: (_) => ProductDetailPage(writeProduct)),
            (route) => false);
      } else {
        Logger().d("Invalid response data format");
        // JSON 데이터가 아닌 다른 형식인 경우 에러 처리
        // 에러 처리 로직 추가
      }
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
          SnackBar(content: Text("게시물 작성 실패 : ${responseDTO.error}")));
    }
  }

  Future<void> notifyUpdate(Product product) async {
    Logger().d("여기가 문제구나!!");
    List<Product> products = state!.productList;
    Logger().d(" products.length : ${products.length}");
    Logger().d(" products.length : ${products}");

    List<Product> newProducts =
        products.map((e) => e.id == product.id ? product : e).toList();

    Logger().d(newProducts);

    state = ProductListModel(newProducts);

    Logger().d("여기는 넘어와 ? notifyUpdate");
  }

  Future<void> notifyRemove(int id) async {
    // SessionUser sessionUser = ref.read(sessionProvider);
    String jwt =
        "Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJtZXRhY29kaW5nLWtleSIsImlkIjoxLCJ1c2VybmFtZSI6InNzYXIiLCJleHAiOjE3MDAwMzA2OTJ9.KhgyUcE4S_zErCwY1zhNGQy1N_2yVl_OOmD2lkMCJ89gZqlru53LNJCXAdOfGSuEAUWYr1HEb0JCgFXycAHL3A";

    // ResponseDTO responseDTO = await ProductRepository().fetchDelete(sessionUser.jwt!, id);
    ResponseDTO responseDTO = await ProductRepository().fetchDelete(jwt, id);
    Logger().d("이까지 되야해 펄스트 트트트트");

    if (responseDTO.success != true) {
      ScaffoldMessenger.of(mContext!).showSnackBar(
          SnackBar(content: Text("게시물 삭제 실패 : ${responseDTO.error}")));
    } else {
      List<Product> productList = state!.productList;
      List<Product> newProducts = productList.where((e) => e.id != id).toList();

      state = ProductListModel(newProducts);
      Logger().d("이까지 되야돼 !");
      Navigator.push(
          mContext!, MaterialPageRoute(builder: (_) => ProductListPage()));
    }
  }
}

// 3. 창고 관리자
final productListProvider =
    StateNotifierProvider.autoDispose<ProductListViewModel, ProductListModel?>(
        (ref) {
  return ProductListViewModel(null, ref)..notifyInit();
});
