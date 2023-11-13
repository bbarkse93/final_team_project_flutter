import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/dto/product_request.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/repository/product_repository.dart';
import 'package:team_project/main.dart';
import 'package:team_project/ui/pages/product/detail_page/product_detail_page.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_view_model.dart';

// 1. 창고 데이터
class ProductDetailModel {
  Product product;

  ProductDetailModel(this.product);
}

// 2. 창고
class ProductDetailViewModel extends StateNotifier<ProductDetailModel?> {
  ProductDetailViewModel(super._state, this.ref);

  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyInit(int id) async {
    ResponseDTO responseDTO = await ProductRepository().fetchProductDetail(id);
    // return ProductDetailModel(responseDTO.response);

    state = ProductDetailModel(responseDTO.response);
  }

  Future<void> notifyUpdate(int productId, ProductUpdateDTO productUpdateDTO) async {
    String jwt =
        "Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJtZXRhY29kaW5nLWtleSIsImlkIjoxLCJ1c2VybmFtZSI6InNzYXIiLCJleHAiOjE3MDAwMzA2OTJ9.KhgyUcE4S_zErCwY1zhNGQy1N_2yVl_OOmD2lkMCJ89gZqlru53LNJCXAdOfGSuEAUWYr1HEb0JCgFXycAHL3A";

    Logger().d("notifyUpdate");
    // TODO - 세션으로 유저값 넘겨주는거 구현해야함!
    // SessionUser sessionUser = ref.read(sessionProvider);
    ResponseDTO responseDTO = await ProductRepository().fetchUpdate(jwt, productId, productUpdateDTO);

    // TODO - 에러 발생지역 [타겟팅 설정]
    Logger().d("responseDTO.success : ${responseDTO.success}");
    Logger().d("responseDTO.response : ${responseDTO.response}");
    Logger().d("responseDTO.error : ${responseDTO.error}");

    if (responseDTO.success != true) {
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text("게시물 수정 실패 : ${responseDTO.error}")));
    } else {
      Logger().d("타겟팅 재설정 지역 ");
      await ref.read(productListProvider.notifier).notifyUpdate(responseDTO.response);

      if (mounted) {
        Logger().d("여기는 나오아아아아아아");
        state = ProductDetailModel(responseDTO.response);
        Navigator.pushAndRemoveUntil(
          mContext!,
          MaterialPageRoute(builder: (_) => ProductDetailPage(responseDTO.response)),
          (route) => false, // 제거할 때 사용하는 조건
        );
      }
    }
  }
}

// 3. 창고 관리자
final productDetailProvider = StateNotifierProvider.family.autoDispose<ProductDetailViewModel, ProductDetailModel?, int>((ref, productId) {
  return ProductDetailViewModel(null, ref)..notifyInit(productId);
});
