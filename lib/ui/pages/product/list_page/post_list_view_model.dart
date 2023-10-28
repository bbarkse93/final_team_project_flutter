// 1. 창고 데이터
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/dto/product_request.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/repository/product_repository.dart';
import 'package:team_project/main.dart';

import '../../../../data/mock/product.dart';

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
    print("통신 시작");
    List<Product> postList = await ProductRepository().fetchProductList();
    print("통신 끝 ${postList.length}");
    state = ProductListModel(postList);
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
      Product writeProduct =
          responseDTO.response as Product; // 1. dynamic(Post) -> 다운캐스팅
      List<Product> newProductList = [
        writeProduct,
        ...state!.productList
      ]; // 2. 기존 상태에 데이터 추가 [전개연산자]
      state = ProductListModel(
          newProductList); // 3. 뷰모델(창고) 데이터 갱신이 완료 -> watch 구독자는 rebuild됨.
      Navigator.pop(mContext!); // 4. 글쓰기 화면 pop
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(
          SnackBar(content: Text("게시물 작성 실패 : ${responseDTO.error}")));
    }
  }
}

// 3. 창고 관리자
final productListProvider =
    StateNotifierProvider.autoDispose<ProductListViewModel, ProductListModel?>(
        (ref) {
  return ProductListViewModel(null, ref)..notifyInit();
});
